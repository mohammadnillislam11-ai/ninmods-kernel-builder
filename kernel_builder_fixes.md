# Kernel Builder Loader — Security Fix Report

**Project:** `ninmods-kernel-builder` (apktool-decompiled "Kernel Driver Loader" APK)
**Scope:** loader-side security issues that let a modified/attacker-controlled build reach the
Ring 0 engine, plus the release pipeline.
**Status:** all code changes are on disk. **No build was run** (no Android SDK/NDK in this
environment and project rule 11 forbids local builds), so every smali change is **NOT VERIFIED**
against `apksmali`/`apktool b`. See §3.

---

## 1. What was changed

### 1.1 `android:debuggable="true"` removed — CRITICAL
**File:** `decompiled_source/AndroidManifest.xml:17`

The manifest shipped with `android:debuggable="true"`. On a debuggable app anybody can
`run-as` the package, read the private data directory, attach a debugger to the loader, or
flip the flag in a repackaged APK to get full runtime inspection.

The attribute is now gone. Justification: the loader is published only as a release build
(`README.md` is a stub, the workflow publishes a GitHub Release on every push to `main`, there
is no debug variant and no debug-signed artifact path). The manifest no longer advertises the
package as debuggable at all.

### 1.2 Root command injection — CRITICAL
**File:** `decompiled_source/smali/com/ghost/driver/loader/MainActivity.smali` (~L1495–L1560)

`su` was fed a command string on stdin in which the driver file path was interpolated
**unquoted**. A path containing a space, a `;` or a `$(...)` would break out of the intended
command and execute arbitrary commands **as root**.

The path is now copied into a quoted literal (`'` … `'\''` escaping) and that variable is what
the `chmod`/`cp` commands use.

### 1.3 SELinux is restored after the driver work — HIGH
**Files:** `MainActivity.smali` L1655 (driver load) and L1928 (status check)

Both root command strings used to run `setenforce 0` and never turn SELinux back on, which
leaves the whole device without its primary MAC policy.

The previous state is now captured first (`OLD_SELINUX=$(getenforce 2>/dev/null)`) and restored
afterwards — `setenforce 1` is only issued when the device was previously in `Enforcing`, so a
device that was already permissive is left alone. The final state is echoed for diagnostics
(`[NIN] SELinux now: …`).

> **Note on compatibility:** GEMINI.md rule 4 documents `su → chmod 666 /dev/BYNb* → setenforce 0`
> as the *main app's* startup flow, and the main app performs that sequence itself when it
> starts. The loader therefore only keeps SELinux permissive for the short window between
> "driver loaded" and "main app started"; the main app re-disables it on its own startup as the
> project architecture specifies. The permanent fix is a Magisk `sepolicy.rule` that grants the
> app access to the four character devices so that `setenforce 1` can stay in place for good —
> see §4.

### 1.4 `chmod 666` scoped to the four driver nodes — HIGH
**Files:** `MainActivity.smali` L1655 and L1928

Previously every character device found under `/sys/dev/char/*` was chmodded to `666`, and
`/proc/uevents_records` was chmodded as well. That is a device-wide privilege grant: any other
app on the device could then talk to the Ring 0 driver and read/write process memory.

Now only the four nodes the product actually uses are touched:

```
/dev/BYNb  /dev/mem_tool  /dev/nh  /dev/wanbai
```

enforced with a `case "$DEVNAME" in BYNb|mem_tool|nh|wanbai)` guard, plus one explicit loop over
the same four paths. The wildcard `chmod 666 /dev/BYNb* …` is gone, and `/proc/uevents_records`
is no longer chmodded (it is only *listed* in the status output, which is harmless).

### 1.5 `su` process: stderr drain, stdin close, timeout — HIGH
**Files:** `MainActivity.smali` (~L1527, ~L1799–L1811), new file
`decompiled_source/smali/com/ghost/driver/loader/StderrDrain.smali`

Three defects in the root shell helper:

| Defect | Consequence | Fix |
|---|---|---|
| stdout was drained asynchronously, **stderr was not** | if the root command filled the stderr pipe buffer the child blocked and the loader hung forever | stderr is now drained by the new `StderrDrain` helper on its own thread; its output is appended to the error message |
| `stdin` was never closed | `su` waits for EOF and never exits | `DataOutputStream.close()` after `flush()` |
| `waitFor()` had **no timeout** | a stuck root prompt (user not watching the Magisk dialog) blocked the loader indefinitely | `waitFor(30, TimeUnit.SECONDS)`, then `destroyForcibly()`, a 2 s join and a clear `[NIN] TIMEOUT_FAILED …` message; the timeout also forces `success = false` |

The timeout is **30 seconds** as required by GEMINI.md rule 4 (an aggressive 4 s timeout is
prohibited). `.locals` was raised from 9/11 to 16 in the two affected methods.

The new `StderrDrain` class is a plain `public final` helper with a public constructor taking an
`InputStream`, a `getText()` accessor and a static drain helper.

### 1.6 Release signing pipeline — HIGH
**File:** `.github/workflows/build-and-release.yml` (L49–L128)

The old pipeline signed with `uber-apk-signer` using its **built-in debug key**, with a
`jarsigner` fallback (v1-only → Janus vulnerable) whenever the secret was missing.

The pipeline now:

1. reads the keystore from the `RELEASE_KEYSTORE_BASE64` secret and **fails loudly** when it is
   missing (no debug-key fallback, `::error::` + `exit 1`);
2. requires `RELEASE_KEYSTORE_PASSWORD` and `RELEASE_KEY_ALIAS` and aborts if either is unset;
3. signs with `apksigner` using **v1 + v2 + v3** and `--v4-signing-enabled false`;
4. deletes the `*.idsig` sidecar files (project rule 10);
5. verifies the result and **hard-fails if the APK carries a debug certificate**
   (`CN=Android Debug`).

### 1.7 Git credential removed from the remote — CRITICAL
**File:** `.git/config`

The origin URL contained a plaintext GitHub OAuth token. The remote is now
`https://github.com/mohammadnillislam11-ai/ninmods-kernel-builder.git`.

**The token itself must still be revoked** — it remains in the repository history. See §4.

### 1.8 Duplicate loader implementation removed — HIGH
**Deleted:** `decompiled_source/smali_classes4/com/ghost/driver/loader/` (19 files)

The decompiled APK contained **two different implementations of the same class**
`Lcom/ghost/driver/loader/MainActivity;`:

| Copy | Methods | State |
|---|---|---|
| `smali/…/MainActivity.smali` | 64 | newer, contains the fixes above |
| `smali_classes4/…/MainActivity.smali` | 57 | older, **unpatched** — no SELinux restore, no stderr drain, no timeout, unquoted paths |

On Android the class loader resolves a duplicated class from the **first** dex file that
contains it, so `classes.dex` (built from `smali/`) was the effective implementation. That is
however an accident of dex ordering, not a guarantee: if the dex order ever changed, the
unpatched implementation — containing every vulnerability listed above — would silently run.

The stale `smali_classes4` copy (MainActivity + 18 synthetic lambda classes) was deleted so the
loader has exactly one implementation. `smali/` contains 22 lambda classes, so it fully covers
what was removed.

---

## 2. Verified as already correct

- `MainActivity.smali` is balanced: 64 `.method` / 64 `.end method`; `StderrDrain.smali` is
  balanced: 3 / 3.
- All six newly introduced labels (`:no_stderr`, `:show_stderr`, `:wait_ok`, `:wait_done`,
  `:tflag_done`, `:check_wait_ok`) are defined exactly once.
- No register overflow (`.locals 16` in both affected methods).
- `chmod 666` now appears only against the four approved device nodes;
  `/proc/uevents_records` is never chmodded; no wildcard `chmod 666 /dev/BYNb*` remains.
- `StderrDrain` is referenced from `MainActivity` (L1527/L1530) and its result is consumed at
  L1799/L1811.

---

## 3. NOT VERIFIED — must be confirmed by a build + on-device test

There is **no Android SDK/NDK in this environment** and project rule 11 forbids local builds, so
none of the following could be executed:

1. **smali syntax** of every edited file (`apktool b` / `baksmali`) — in particular the new
   `.locals 16`, the reused registers `v8` and `v11`–`v15`, the added labels and the escaped
   quote literal (`const-string v5, "'\\''"` → runtime value `'\''`).
2. **the new `StderrDrain` class descriptor** and its packaging into `classes.dex`.
3. **runtime behaviour on a device**: does the loader still load the driver, does the main app
   still reach `/dev/BYNb`, does the 30 s timeout fire correctly when the Magisk root prompt is
   dismissed, and is the SELinux restore effective.
4. **the GitHub Actions workflow** — no workflow was dispatched (project rule 13). The secrets
   `RELEASE_KEYSTORE_BASE64`, `RELEASE_KEYSTORE_PASSWORD` and `RELEASE_KEY_ALIAS` have to be
   created in the repository settings before the next release, otherwise the pipeline now fails
   on purpose.
5. **the method 11 status-check path** still reads stderr sequentially (only a timeout was
   added there, no asynchronous drain). The deadlock risk is reduced but not eliminated.
6. **the `apksigner` v1/v2/v3 flags and the debug-certificate guard** were reviewed by reading,
   never executed.

---

## 4. Remaining work for the operator

1. **Revoke the leaked GitHub token** — GitHub → Settings → Developer settings → Personal access
   tokens. The token is still valid and still present in the repository history.
2. **Create the repository secrets** `RELEASE_KEYSTORE_BASE64`, `RELEASE_KEYSTORE_PASSWORD`,
   `RELEASE_KEY_ALIAS` before the next release.
3. **Rotate the release signing key** and remove the keystore from the repository. While the
   keystore is published, anybody can re-sign an APK with the *real* certificate and the
   certificate-fingerprint check (in the main app's native library and in the backend's
   `X-Client-Integrity` check) can no longer detect the modified build. The main app's
   fingerprint constant lives in
   `nin/app/src/main/jni/src/Includes/NativeCrypto.h :: SecurityVault_ExpectedCertDigest()`
   and must be updated together with the key.
4. **Add a Magisk `sepolicy.rule`** that grants the app access to `/dev/BYNb`, `/dev/mem_tool`,
   `/dev/nh` and `/dev/wanbai`, so that `setenforce 1` can remain permanently in place instead
   of relying on the main app's own `setenforce 0`.
5. **Build the loader and smoke-test it on a real rooted device** before publishing — the smali
   changes are unverified (§3).
6. **Consider rebuilding the loader from source** instead of shipping a decompiled APK: the
   decompiled tree is where the duplicate class, the embedded shell script and the wide-open
   permissions came from in the first place.
