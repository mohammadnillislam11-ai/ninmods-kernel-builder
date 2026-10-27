# NINMODS Kernel Driver Loader — নিরাপত্তা ও কোড-গুণগত মান পর্যালোকন (read-only review)

**প্রজেক্ট রুট:** `C:\Users\Sajala\Documents\mods\ninmods-kernel-builder`
**প্যাকেজ:** `com.ghost.driver.loader` | versionName `90.58` (versionCode `958`), minSdk 21 / targetSdk 35
**রিভিউ তারিখ:** 2026-10-27
**ধরন:** read-only স্ট্যাটিক রিভিউ — কোনো সোর্স ফাইল পরিবর্তন করা হয়নি।

---

## ১. প্রকৃত পর্যালোচিত ফাইল তালিকা

### ১.১ অ্যাপ-নিজস্ব smali (পড়া হয়েছে)

| ফাইল | লাইন | মন্তব্য |
|---|---|---|
| `decompiled_source\smali\com\ghost\driver\loader\MainActivity.smali` | 1–3703 (সম্পূর্ণ) | **কার্যকর (effective) ক্লাস** — classes.dex-এ প্রথমে লোড হয় |
| `decompiled_source\smali_classes4\com\ghost\driver\loader\MainActivity.smali` | 1–3418 (হেডার, মেথড-ম্যাপ, 1472–1885, 310–520) | একই ক্লাসের **দ্বিতীয়, ভিন্ন সংস্করণ** |
| `decompiled_source\smali\com\ghost\driver\loader\R*.smali`, `databinding\ActivityMainBinding.smali` | — | শুধু তালিকা/উপস্থিতি যাচাই |

`smali\...\MainActivity$$ExternalSyntheticLambda*.smali` (২৩টি ফাইল, ১৭টি `$ExternalSyntheticLambdaN` + হাতে-নামকরণ করা `LambdaCopy` / `LambdaUnload` / `LambdaUnloadBtn` / `LambdaStatusReset`) — শুধু UI→মেথড ডিসপ্যাচার; মূল লজিক সবই `MainActivity`-তে, তাই আলাদা লাইন-সাইট হিসেবে পড়া হয়নি (তাদের delegate-লক্ষ্য লাইনই cite করা হয়েছে)।

### ১.২ Manifest / asset / build

| ফাইল | লাইন | মন্তব্য |
|---|---|---|
| `decompiled_source\AndroidManifest.xml` | 1–25 (সম্পূর্ণ) | permissions + exported কম্পোনেন্ট |
| `decompiled_source\apktool.yml` | 1–27 | version, SDK |
| `decompiled_source\assets\Driver.sh` | বাইনারি (ELF, ৪৫৩,৬২৪ বাইট) | হেডার + ১,১৫৯টি extracted string |
| `decompiled_source\assets\Kernel_Drivers.zip` | ১৩২ entry-র মেটাডেটা | ৫টি entry extract করে হেডার/vermagic যাচাই |
| `README.md` | 1–2 | কার্যত খালি |
| `DRIVER_ARCHITECTURE.plan` | 20–139 (এবং grep-কৃত অংশ) | আর্কিটেকচার ডকুমেন্ট |
| `push_update.bat` | 1–43 (সম্পূর্ণ) | লোকাল পুশ স্ক্রিপ্ট |
| `.github\workflows\build-and-release.yml` | 1–116 (সম্পূর্ণ) | CI/CD |
| `.gitignore` | 1–17 (সম্পূর্ণ) | |
| `.git\config` | 1–17 | শুধু `remote.origin.url` লাইনটি (credential) |
| `res\values\strings.xml` | 1–20 (স্যাম্পল) | app-specific string নেই, শুধু androidx |

### ১.৩ যা বাদ পড়েছে এবং কেন

- `decompiled_source\smali_classes{2,3,4,5}\com\google\**`, `androidx\**`, `kotlin\**`, `java\**` — স্ট্যান্ডার্ড লাইব্রেরি, স্কোপের বাইরে (নির্দেশনা অনুযায়ী)।
- `decompiled_source\original\META-INF\**` (মূল APK-র signature block) — বাইনারি; শুধু ফোল্ডারের উপস্থিতি/আকার দেখা হয়েছে, সার্টিফিকেট বিশ্লেষণ করা হয়নি।
- `decompiled_source\res\**`-এর বাকি সব (layout/drawable/values) — root-exec লজিক নেই, UI-only। শুধু `strings.xml` স্যাম্পল করা।
- `assets\Driver.sh`-এর **disassembly/decompilation** করা হয়নি — শুধু ELF হেডার + string extraction (নিচে NOT VERIFIED দেখুন)।
- `Kernel_Drivers.zip`-এর **১৩২টির মধ্যে মাত্র ৫টি** entry-তে vermagic যাচাই হয়েছে।
- পুরো `.git` history-র secret-scan করা হয়নি (শুধু বর্তমান `.git/config` ও ফাইল-সিস্টেমে `gho_` প্যাটার্ন grep)।

---

## ২. তালিকাভুক্ত সমস্যা

### CRITICAL

#### C-1. `.git\config`-এ plaintext GitHub OAuth token (live credential)
- **ফাইল:লাইন:** `.git\config:9` (`remote.origin.url`)
- **বর্ণনা:** git remote URL-এর ভিতরে `https://<user>:gho_***@github.com/...` ফরম্যাটে একটি GitHub OAuth token এমবেড করা। টোকেনটি `origin` fetch/push দুই URL-এই আছে (একই লাইন)। শুধু এই রিপোতে নয় — `push_update.bat` এই remote দিয়েই পুশ করে, তাই লোকাল মেশিনের `.git/config` ব্যাকআপ/শেয়ার হলেই টোকেন ফাঁস।
- **প্রভাব:** টোকেনের স্কোপ অনুযায়ী রিপো read/write, release delete, এমনকি টোকেনে `repo`+`workflow` থাকলে CI workflow পরিবর্তন করে supply-chain compromise। রিভিউতে টোকেনের মান উদ্ধৃত করা হয়নি (ইচ্ছাকৃত)।
- **সংশোধন:** টোকেনটি অবিলম্বে revoke করে GitHub-এ rotate করুন; remote URL credential-মুক্ত করে `gh auth login` / credential manager / SSH key ব্যবহার করুন; `git config --unset` করে history-তে থাকলে BFG/filter-repo দিয়ে scrub করুন।

#### C-2. Release APK-তে `android:debuggable="true"`
- **ফাইল:লাইন:** `AndroidManifest.xml:17`
- **বর্ণনা:** `<application ... android:debuggable="true" ...>`। CI কোনো step-এ এটি false করে না (`.github\workflows\build-and-release.yml:40–43` শুধু apktool `b`)।
- **প্রভাব:** যে কেউ ADB-সহ ডিভাইসে `run-as com.ghost.driver.loader` চালিয়ে app-private ডেটা (extracted `.ko`, `Driver.sh`, log) পড়তে/লিখতে পারে, debugger attach করে root-shell কোড-পাথ পরিবর্তন করতে পারে, JDWP-তে hook করতে পারে। root অ্যাপ + debuggable = তৃতীয় পক্ষের জন্য root-শেল এক্সিকিউশন পাথ।
- **সংশোধন:** production বিল্ডে `android:debuggable="false"` (apktool-এর জন্য `decompiled_source/AndroidManifest.xml`-এ হার্ডকোড false), এবং CI-তে `aapt dump badging | grep debuggable` গার্ড step।

#### C-3. `setenforce 0` — SELinux পুরোপুরি বন্ধ করা হয়
- **ফাইল:লাইন:** `smali\...\MainActivity.smali:1633` (ড্রাইভার লোড পাথ) এবং `:1865` (driver-check পাথ)
- **বর্ণনা:** উভয় root-কমান্ড ব্লক `setenforce 0 2>/dev/null` দিয়ে শুরু হয়। প্রতিটি "CHECK DRIVER" ট্যাপে ও প্রতিটি QX/RT লোডে এটি চলে, শেষে আর `setenforce 1` করা হয় না।
- **প্রভাব:** ডিভাইসের SELinux enforcing→permissive; এরপর **যেকোনো** প্রসেস (এমনকি unprivileged) SELinux-এর domain-isolation ছাড়া চলে। root-অ্যাপের একক 편의-এর জন্য পুরো ডিভাইসের LSM বন্ধ — ম্যালওয়্যার-এর জন্য উন্মুক্ত দরজা, এবং silently persists।
- **সংশোধন:** `setenforce 0` সম্পূর্ণ বাদ দিন; প্রয়োজন হলে নির্দিষ্ট domain-এ `magiskpolicy --live` দিয়ে টার্গেটেড rule দিন এবং শেষে আগের state restore করুন (`getenforce` সেভ করে `setenforce $OLD`)।

#### C-4. সব character device-এ blanket `chmod 666` + `/proc/uevents_records` world-writable
- **ফাইল:লাইন:** `MainActivity.smali:1633`, `:1865` — `chmod 666 "/dev/$DEVNAME"`, `chmod 666 /dev/BYNb`, `chmod 666 /dev/$dname`, এবং শেষে `chmod 666 /dev/BYNb* /dev/mem_tool* /proc/uevents_records`
- **বর্ণনা:** দুটি লুপ (`/sys/dev/char/*/uevent` ও `/sys/class/*/*/dev`) থেকে **প্রতিটি** char device-এর major:minor নিয়ে `mknod` করে তারপর `chmod 666` দেয় — অর্থাৎ শুধু ড্রাইভার নোড নয়, সিস্টেমের সব char node (input event, mem/kmem-শ্রেণির নোড, ইত্যাদি) world read/write হয়। `/proc/uevents_records`-ও 666।
- **প্রভাব:** (ক) Ring-0 IOCTL ইন্টারফেস (`0x801` read / `0x802` write / `0x803` base) **যে কোনো ইনস্টল করা অ্যাপ** খুলে যেকোনো প্রসেসের মেমরি পড়তে/লিখতে পারে → ডিভাইসব্যাপী arbitrary memory R/W, গেম অ্যান্টি-চিট দুর্বল হয়ে যায়, অন্য অ্যাপের credential/টোকেন মেমরি থেকে চুরি সম্ভব; (খ) `0666` input/other node-এ লেখা দিয়ে keystroke injection; (গ) `/dev/mem`, `/dev/kmem` জাতীয় নোড কৃত্রিমভাবে পুনরুত্থাপিত হলে (mknod force) পুরো kernel memory exposure।
- **সংশোধন:** শুধু নিজের ড্রাইভার নোড target করুন (`/proc/devices`/sysfs থেকে `BYNb`/`mem_tool` নাম মিলিয়ে); permission `0660` + নির্দিষ্ট group (বা `SELinux` label + `u:object_r:...`), এবং `0660 root root` রেখে অ্যাপকে group-এ রাখার বদলে `chown` করে শুধু নিজের uid-তে দিন। `chmod 666 /proc/...` কখনো নয়।

#### C-5. Root shell-এ unsanitized path interpolation → command injection (root)
- **ফাইল:লাইন:** `MainActivity.smali:1530–1548` (`"chmod 755 " + path`), `:1555–1575` (`"cp " + path + " /data/local/tmp/_nin_drv.ko"`)
- **বর্ণনা:** `lambda$executeDriver$15(path, type)`-এ `path` সরাসরি `su`-র stdin-এ shell লাইনে জোড়া হয়, কোনো quote/escape ছাড়াই। `path` আসে `runDriver()` → `File.getAbsolutePath()` (`:2558`), আর ফাইলনাম আসে `extractDrivers()`-এ **zip entry name** থেকে (`:915–919`)। অর্থাৎ zip-এর ভিতরের ফাইলনামই root shell-এ কোড হয়ে ঢোকে।
- **প্রভাব:** `Kernel_Drivers.zip`-এ `5.10;id;.ko.sh` ধরনের নাম থাকলে (বা ভবিষ্যতে zip আপডেট/রিপ্যাকেজ হলে) → **root-এ arbitrary command execution**; একইভাবে `cp`-এর destination overwrite, `..` দিয়ে ফাইল overwrite।
- **সংশোধ:** shell string বাদ দিয়ে `Runtime.exec(new String[]{"su","-c","insmod " + shq(path)})`-এর বদলে সরাসরি `su` stdin-এ shlex-quote করা নাম (`'...'` + `'\''` escape) পাঠান; বা আদৌ shell না ব্যবহার করে extract-কৃত ফাইলকে **app-নিজস্ব fixed name**-এ rename করে (`/data/local/tmp/_nin_drv.ko`) সেই fixed path-ই ব্যবহার করুন, ফাইলনাম কখনো shell-এ না নিয়ে।

---

### HIGH

#### H-1. Root exec: stderr drain নেই, timeout নেই, stdin কখনো close হয় না
- **ফাইল:লাইন:** `MainActivity.smali:1510–1692` (লোড পাথ: শুধু `getInputStream()` @1655, `waitFor()` @1692), `:301–360` (`checkRoot()` — `waitFor()` @338, `exit\n` লেখে কিন্তু stream close করে না), `:2820` (`executeUnloadDriver`), `:1989` (dead code path)
- **বর্ণনা:** `getErrorStream()` পুরো ক্লাসে মাত্র একবার ব্যবহৃত — লাইন `1901`, সেটি শুধু *driver-check* পাথে, এবং সেখানেও **stdout সম্পূর্ণ drain হওয়ার পরে** stderr পড়া হয় (sequential) — classic pipe-deadlock। লোড পাথে stderr একেবারেই পড়া হয় না → `su`/`insmod`/`dmesg`-এর stderr ৬৪KB ভরে গেলে প্রসেস আটকে যায়, টার্মিনালে কোনো লাইন আসে না, UI "Loading..."-এ ঝুলে থাকে। কোথাও `waitFor(timeout)` বা `Process.destroy()` নেই (grep: waitFor শুধু 338/503/1692/1989/2820, destroy/exitValue = ০)।
- **প্রভাব:** GEMINI.md Rule 4-এর ৩০ সেকেন্ড উইন্ডো ও async drain requirement লঙ্ঘিত; ANR/ফাঁকা থ্রেড leak (প্রতি ক্লিকে নতুন `Thread`, `:801–810`)।
- **সংশোধন:** stdout/stderr দুইটির জন্য আলাদা `ExecutorService`/`Thread` দিয়ে continuous drain; `process.waitFor(30, TimeUnit.SECONDS)` + timeout-এ `destroyForcibly()`; শেষে `OutputStream.close()`; `su -c` array-form বাদ দিয়ে interactive `su` + fixed command list ব্যবহার।

#### H-2. `unloadDriver` — সব error গিলে ফেলে, over-broad `rmmod`/`pkill`/`rm` চালায়, তারপরও "success" দেখায়
- **ফাইল:লাইন:** `MainActivity.smali:2806–2831` (কমান্ড @2810, `catch_0` @2824, success message @2825–2831)
- **বর্ণনা:** `for m in $(cat /proc/modules | awk '{print $1}'); do case "$m" in *5.10*|*nh*|*mem_tool*|*driver*|*rt*|*sched_debug*|*BYNb*) rmmod "$m";; esac; done` — substring ম্যাচ (`*rt*`, `*nh*`, `*5.10*`) দিয়ে **যেকোনো** লোডেড module unload করার চেষ্টা; এরপর `rm -f /data/local/tmp/*.ko` (অন্য অ্যাপের ফাইলও), `pkill -f 'temp'`, `pkill -f 'QX'` (unrelated প্রসেস)। `try_start_0`-এর ঠিক পরেই `catch_0` — তাই যেকোনো exception-এও নিচের "Driver unloaded successfully"/"Kernel device nodes cleaned up" ছাপা হয়; `waitFor()`-এর return value ফেলে দেওয়া হয়।
- **প্রভাব:** `virtio_*`-এর মতো নাম `*rt*`-এ ম্যাচ করে → storage/network ড্রাইভার unload → ডিভাইস hang/reboot loop; ভুল ম্যাজিক-নামের মডিউল আনলোডে kernel panic। ব্যবহারকারী ভুল তথ্য পায় (false success)।
- **সংশোধ:** শুধু নিজের ইনস্মড করা মডিউলের **exact নাম** (`5.10_A12`, `nh`) `rmmod` করুন; নাম `/proc/modules`-এ থাকলে তবেই; exit code যাচাই করে সত্যিকার status দেখান; `pkill`/glob `rm` সম্পূর্ণ বাদ দিন।

#### H-3. Release pipeline: debug/throwaway key দিয়ে সাইন, keystore secret নেই, v1-only fallback
- **ফাইল:লাইন:** `.github\workflows\build-and-release.yml:57–77` (`uber-apk-signer` ডিফল্ট key @60–63; fallback `keytool -genkeypair` + `jarsigner` @72–77), `:9–10` (`permissions: contents: write`)
- **বর্ণনা:** কোনো `secrets.KEYSTORE_BASE64` / `KEYSTORE_PASSWORD` ব্যবহার হয়নি। `uber-apk-signer` کو keystore না দিলে সে নিজের **debug keystore** দিয়ে সাইন করে (প্রতি রানে নতুন/ভিন্ন key), আর fallback-এ স্পষ্ট `CN=Android Debug` key। fallback-এ শুধু `jarsigner` → **v1-only signature**।
- **প্রভাব:** (ক) প্রতিটি রিলিজ ভিন্ন key-তে সাইনড → আপডেট-চেইন ভাঙে, ব্যবহারকারীকে বারবার uninstall করতে হয় (data loss); (খ) debug key দিয়ে সাইন করা APK মূলত untrusted — Play Protect/enterprise নীতি লঙ্ঘন; (গ) v1-only APK Janus (CVE-2017-13156) ও v2/v3 integrity bypass-এ দুর্বল।
- **সংশোধ:** base64 এনকোডেড release keystore + password GitHub Secrets হিসেবে রাখুন (`secrets.RELEASE_KEYSTORE_B64`, `secrets.KEYSTORE_PASS`, `secrets.KEY_ALIAS`), `apksigner sign --v1-signing-enabled false --v2 --v3 --v4-signing-enabled false` ব্যবহার করুন; pipeline-এ `apksigner verify --print-certs` দিয়ে শুধু expected SHA-256 fingerprint গ্রহণ করুন; fallback debug-signing পাথটি মুছে ফেলুন (fail-fast)।

#### H-4. Payload `.sh` ফাইলগুলোই `insmod` করা হচ্ছে (কার্যকরভাবে অচল + ভুল লোডার পাথ)
- **ফাইল:লাইন:** `MainActivity.smali:1617` (`insmod /data/local/tmp/_nin_drv.ko 2>&1`), `:1629` (dmesg telemetry), সোর্স-প্রমাণ `git log` commit `b151b7e` — *"Fix critical kernel module loading bug (sh -> insmod + SELinux-safe path)"*
- **বর্ণনা:** `Kernel_Drivers.zip`-এর ১৩২টি entry-ই **শেল স্ক্রিপ্ট** (`RT/5.10.sh` → `#!/system/bin/sh`; `QX/5.10.ko.sh` → base64-embedded payload)। extract করে `cp` → `chmod 644` → `insmod` করা হয়। `insmod` একটি টেক্সট স্ক্রিপ্ট পার্স করতে পারে না (`EOEXEC`/invalid module format)। স্ক্রিপ্টগুলো নিজেরাই `sed "1,/^# END OF THE SCRIPT/d" $0 > /data/temp` করে ELF বের করে `insmod ${prog_name}` করে (sample `QX_5.10.ko.sh:72,87,123`) — অর্থাৎ সেগুলোকে **`sh` দিয়ে চালানো** দরকার, `insmod` নয়।
- **প্রভাব:** QX/RT দুটোতেই লোড পাথ কার্যত ব্যর্থ; ব্যবহারকারী শুধু dmesg-এর `invalid module format` দেখেন (এই জন্যই হয়তো `:1629`-এ dmesg grep যোগ হয়েছে)। একই ভুলে `RT` payload-এর `chmod 777`/`nohup` স্টেপও কখনো চলে না।
- **সংশোধ:** extraction-এর পর ফাইলনাম/শেবাং দেখে decision নিন: `.sh` হলে `su -c sh '<path>'` (path shlex-quoted, fixed `/data/local/tmp/_nin_drv.sh`), শুধু প্রকৃত ELF `ET_REL` (magic `\x7fELF`, `e_type==1`, `e_machine==0xB7`) হলে `insmod`; ফাইল-টাইপ যাচাই ছাড়া `insmod` করবেন না।

#### H-5. একই ক্লাসের দুটি ভিন্ন বাস্তবায়ন (duplicate class across dex)
- **ফাইল:লাইন:** `smali\com\ghost\driver\loader\MainActivity.smali` (৩৭০২ লাইন) বনাম `smali_classes4\...\MainActivity.smali` (৩৪১৭ লাইন) — দুটিই `.class public Lcom/ghost/driver/loader/MainActivity;`
- **বর্ণনা:** classes4-সংস্করণটি `su -c chmod 777 <filesDir>/Driver.sh` করে তারপর `<filesDir>/Driver.sh` **এক্সিকিউট করে** (`smali_classes4\...:1764–1864`); classes.dex-সংস্করণে `Driver.sh` শুধু কপি+`chmod 755` (`:376–520`) এবং কখনো চালানো হয় না, বরং `.ko.sh` `insmod` করে। এছাড়া `R.smali`/`ActivityMainBinding.smali`-ও `smali` ও `smali_classes{2,3}`-এ ডুপ্লিকেট; কিছু lambda ক্লাসের নাম কম্পাইলার-উৎপন্ন প্যাটার্নের বাইরে (`$ExternalSyntheticLambdaCopy/Unload/UnloadBtn/StatusReset`) — হাতে-প্যাচ করা smali।
- **প্রভাব:** কোন বাস্তবায়ন চলবে তা dex লোড-অর্ডারের ভাগ্য; behavior non-deterministic, ভবিষ্যৎ apktool রিবিল্ডে verifier warning/`NoClassDefFound`. হাতে-প্যাচড smali + BOM-strip 커밋 (git log `9fa7ca8`, `894fe95`) প্রমাণ করে source-of-truth Java নেই → বিল্ড non-reproducible.
- **সংশোধ:** একটি canonical সোর্স রাখুন (Java/Kotlin সোর্স + apktool শুধু inspect-এর জন্য), ডুপ্লিকেট dex এন্ট্রি সরান, CI-তে `d8` output-এ duplicate-class detection যোগ করুন।

#### H-6. Root `insmod`-এর আগে payload integrity/vermagic যাচাই নেই
- **ফাইল:লাইন:** `MainActivity.smali:1617` (insmod), `:1609` (vermagic শুধু *প্রিন্ট* হয় insmod-এর পরে), `:884–919` (zip থেকে সরাসরি extract)
- **বর্ণনা:** zip-এর entry→`filesDir`→`/data/local/tmp/_nin_drv.ko`→root `insmod` — মাঝে কোনো SHA-256/সাইনেচার/vermagic তুলনা নেই; `kernelVersion` শুধু **ফাইলনাম prefix** ম্যাচে ব্যবহৃত (`:2399–2472`)। `/data/local/tmp` ডিরেক্টরি `0771 shell:shell`, তবে ফাইল rename-window-এ replacement সম্ভব (TOCTOU: `cp` → `chmod` → `insmod` তিনটি আলাদা `su` লাইন, মাঝে অন্য প্রসেস ফাইল বদলাতে পারে)।
- **প্রভাব:** (ক) ভুল vermagic মডিউল লোড → kernel oops/panic (insmod সাধারণত আটকায়, কিন্তু `modversions`/`dirty` ভ্যারিয়েন্টে ঝুঁকি); (খ) `/data/local/tmp` race → **root-এ অচেনা মডিউল লোড** (kernel-mode code execution, সবচেয়ে খারাপ case)।
- **সংশোধ:** প্রতিটি `.ko`-এর জন্য বিল্ড-টাইম SHA-256 manifest রাখুন এবং app-এ যাচাই করুন; `cp`→`chmod`→`insmod` একই `su` সেশনে atomic ভাবে করুন (fixed path, `install -m 600` style), অথবা মডিউল সরাসরি `/data/adb/modules`-এর মতো root-only ডিরেক্টরি থেকে লোড করুন; `insmod`-এর আগে `vermagic` (`modinfo -F vermagic`) `uname -r`-এর সাথে তুলনা করুন।

---

### MEDIUM

#### M-1. Zip-slip: extract-এ entry name canonicalize করা হয় না
- **ফাইল:লাইন:** `MainActivity.smali:909–945` (`new File(getFilesDir(), entry.getName())` @911–919, `mkdirs()` @940, `FileOutputStream` @943–945)
- **বর্ণনা:** `entry.getName()`-এ `../` থাকলে destination app-private ডিরেক্টরি থেকে বেরিয়ে `shared_prefs/`, `databases/`, এমনকি (symlink থাকলে) বাইরে লেখা সম্ভব। বর্তমান ১৩২টি entry সবই `QX/`/`RT/` প্রিফিক্সড (যাচাইকৃত), তাই এখনই শোষণযোগ্য নয় — কিন্তু কোড-লেভেল গার্ড নেই, ভবিষ্যৎ zip আপডেটে সরাসরি দুর্ভাগ।
- **প্রভাব:** যেকোনো ফাইল overwrite (যেমন `filesDir/Driver.sh` বা app config), এরপর root-এ execute হলে privilege escalation।
- **সংশোধ:** `File dest = new File(base, name); if (!dest.getCanonicalPath().startsWith(base.getCanonicalPath()+File.separator)) continue;` এবং entry count/total-size limit (zip-bomb) যোগ করুন।

#### M-2. Exported `MainActivity` — অন্য অ্যাপ থেকে root-flow ট্রিগার
- **ফাইল:লাইন:** `AndroidManifest.xml:18–23` (`android:exported="true"`, শুধু MAIN/LAUNCHER filter, কোনো permission নেই); auto-init: `MainActivity.smali:3422–3461` (`extractDrivers()`, `copyDriverChecker()`, `checkRoot()`), `:1311`
- **বর্ণনা:** লঞ্চার হওয়া স্বাভাবিক, কিন্তু `onCreate`-এই `su` প্রসেস spawn হয় (`checkRoot()` @311–338) এবং asset extract+chmod হয় — কোনো user gesture/intent validation ছাড়াই। `getIntent()`/`getAction()` কখনো পড়া হয় না।
- **প্রভাব:** যেকোনো installed app `am start`/Intent দিয়ে বারবার root prompt spam (prompt-fatigue → ব্যবহারকারী Allow চাপে), ব্যাটারি/FS churn; ভবিষ্যতে intent-extra যোগ হলে সেটি সরাসরি root action হবে।
- **সংশোধ:** root-কাজ শুধু explicit user tap-এ করুন; `checkRoot()` lazy করুন; প্রযোজ্য হলে activity-তে signature-level custom permission দিন এবং `getIntent()`-এর caller যাচাই করুন।

#### M-3. Device fingerprint + root command output world-readable shared storage-এ
- **ফাইল:লাইন:** `MainActivity.smali:3610–3651` (`writeLogLine` → `/sdcard/Download/ninmods_driver_loader.log`, append mode @3633), `:210` (`appendOutput` প্রতিটি লাইনে), `:3653–3696` (`initDiagnosticsLog`: `Build.MANUFACTURER`, `Build.MODEL`, `Build.VERSION.RELEASE`, `SDK_INT`, `os.version`), `:2747` (copy toast)
- **বর্ণনা:** প্রতিটি টার্মিনাল লাইন (dmesg আউটপুট, module list, `ls -l /dev/*`, kernel vermagic, সিলেক্ট করা ড্রাইভার পাথ) একটি append-only টেক্সট ফাইলে যায়, যা `MANAGE_EXTERNAL_STORAGE`/`READ_EXTERNAL_STORAGE` থাকা যেকোনো অ্যাপ পড়তে পারে। কোনো rotation/size-cap নেই → অসীম বৃদ্ধি।
- **প্রভাব:** ডিভাইস fingerprint + root অভ্যাস + ইনস্টল করা মডিউল তালিকা তথা আক্রমণ-সহায়ক তথ্য ফাঁস; ইনফরমেশন গ্যাদারিং-এর জন্য চমৎকার OSINT।
- **সংশোধ:** লগ app-private `filesDir`-এ রাখুন (user চাইলে explicit share/bug-report flow); PII (MODEL/MANUFACTURER/serial জাতীয়) বাদ দিন; ১MB cap + rotation।

#### M-4. অপ্রয়োজনীয় শক্তিশালী permission
- **ফাইল:লাইন:** `AndroidManifest.xml:2–9`
- **বর্ণনা:** `MANAGE_EXTERNAL_STORAGE` (@9) শুধু একটি লগ ফাইলের জন্য; `READ/WRITE_EXTERNAL_STORAGE` (@7–8), `FOREGROUND_SERVICE`+`FOREGROUND_SERVICE_DATA_SYNC` (@2–3) ব্যবহারকারী কোডে কোনো service নেই (manifest-এ শুধু একটি activity), `RECEIVE_BOOT_COMPLETED` (@6) + `ACCESS_SUPERUSER` (@5) অপ্রয়োজিত; `allowBackup="true"` (@17)।
- **প্রভাব:** MANAGE_EXTERNAL_STORAGE Play নীতি লঙ্ঘন + বিশাল attack surface; allowBackup=true → `adb backup` দিয়ে app-private ড্রাইভার/লগ extraction।
- **সংশোধ:** শুধু দরকারি permission রাখুন; `allowBackup="false"`, `dataExtractionRules` সেট করুন; লগ `filesDir`-এ গেলে external permission দুটিই বাদ।

#### M-5. Workflow-এ over-broad ও অযাচাইকৃত third-party supply chain
- **ফাইল:লাইন:** `.github\workflows\build-and-release.yml:9–10` (`permissions: contents: write` পুরো job), `:32–33` (`apktool` স্ক্রিপ্ট master ব্রাঞ্চ থেকে, jar v2.10.0 pin কিন্তু checksum নেই), `:57–58` (`uber-apk-signer` jar curl, checksum/TLS-pin নেই), `:104–107` (প্রতি রানে **সব** পুরোনো release delete)
- **বর্ণনা:** build job-এর প্রতিটি step (untrusted decompiled source চালায়) write টোকেন পায়; `|| true` সহ destructive release purge প্রতিটি push-এ চলে (rollback অসম্ভব)।
- **প্রভাব:** compromised dependency → টোকেন দিয়ে release/asset modification; ভুল push-এ ইতিহাস মুছে যায়।
- **সংশোধ:** step-scoped `permissions: contents: read` + শুধু release step-এ `write`; সব jar `curl -o` এর পরে pinned SHA-256 verify; release purge বাদ দিয়ে শুধু সর্বশেষ N রাখার guarded script (`if [ "$KEEP" -gt 3 ]`) ব্যবহার করুন।

#### M-6. বান্ডল করা payload-এর anti-forensic ও world-writable আচরণ (vendored code)
- **ফাইল:লাইন:** `_ko_sample\QX_5.10.ko.sh` (zip entry `QX/5.10.ko.sh`) — লাইন 65–95 (`prog_name=/data/temp`, `sed "1,/^# END OF THE SCRIPT/d"` → `/data/temp`, `chmod u+x`, `insmod`), 107–113 (`mv temp /data/$name`, `chmod 777 /data/$name`, `dmesg -C`, `nohup /data/$name`), 79–83 (`sed` দিয়ে `entryi`→random নাম, module name obfuscation)
- **বর্ণনা:** পেলোড নিজেই `/data/`-তে random নামে ELF রেখে `chmod 777` করে ও `nohup` চালায়; প্রতি রানে `dmesg -C` দিয়ে **kernel ring buffer মুছে দেয়**; module/entry নাম sedimentation করে লুকায়।
- **প্রভাব:** world-writable executables in `/data` → যেকোনো লোকাল অ্যাপ সেগুলো replace করে root daemon হিসেবে চালাতে পারে (LPE); `dmesg -C` forensic evidence নষ্ট করে (রিভিউ/ইনসিডেন্ট রেসপন্স অসম্ভব)।
- **সংশোধ:** vendored স্ক্রিপ্ট পুনর্লিখন করুন: fixed root-only পাথ (`/data/adb/...`, `0700`), `chmod 777` কখনো নয়, `dmesg -C` সরান (শুধু `dmesg -c` নয়, কিছুই না), এবং স্ক্রিপ্টের hash pin করুন।

#### M-7. `mknod` + `eval` — sysfs কনটেন্ট world-trust ও ভুল ডিভাইসে symlink
- **ফাইল:লাইন:** `MainActivity.smali:1633`, `:1865` — `eval "$(grep -E '^(MAJOR|MINOR|DEVNAME)=' "$s")"`, `if [ "$MAJOR" -ge 200 ] && [ ! -e /dev/BYNb ]; then ln -sf "/dev/$DEVNAME" /dev/BYNb`
- **বর্ণনা:** `/sys/dev/char/*/uevent`-এর কনটেন্ট `eval` করা হয় (shell-এ কোড হিসেবে); এবং "major ≥ 200" heuristic-এ **প্রথম** মিলে যাওয়া char device-কে `/dev/BYNb` হিসেবে symlink করা হয় — সেটি ড্রাইভার কি না যাচাই হয় না। একইভাবে `/sys/class/*/*/dev`-এর সব entry-তে node বানানো হয়।
- **প্রভাব:** ভুল device-এ `BYNb` পয়েন্ট করলে ক্লায়েন্টের ioctl অচেনা kernel driver-এ যায় → oops/crash বা unintended kernel action; `eval` injection-সারফেস।
- **সংশোধ:** `uevent` পার্সিং shell `while read`/key=value দিয়ে করুন (eval বাদ), ড্রাইভার শনাক্তকরণ `/proc/devices`-এর নাম মিলিয়ে করুন, এবং name-specific node ছাড়া কিছুই `mknod` করবেন না।

#### M-8. `push_update.bat`-এ unquoted variable → লোকাল cmd injection + blind `git add .`
- **ফাইল:লাইন:** `push_update.bat:14` (`set /p msg=`), `:21` (`git add .`), `:24` (`git commit -m "%msg%"`)
- **বর্ণনা:** ব্যবহারকারীর 입력 সরাসরি `-m "%msg%"`-এ; `"` + `&` থাকলে অতিরিক্ত কমান্ড চলে (লোকাল shell)। `git add .` সব কিছু stage করে (`.gitignore` কিছু ঠেকায়, কিন্তু `decompiled_source`-এর ভিতরে তৈরি যেকোনো জাঙ্ক/secrets যাবে)।
- **প্রভাব:** লোকাল command execution; ভুল করে secret/keystore/বড় artifact commit।
- **সংশোধ:** `set /p` এর বদলে `git commit -F msg.txt` ব্যবহার করুন (ফাইলে message লিখে), এবং `git add`-এ explicit path দিন।

---

### LOW

| # | ফাইল:লাইন | সমস্যা | সংশোধন |
|---|---|---|---|
| L-1 | `README.md:1–2` | কার্যত খালি (`# System`) — build/release/root-ঝুঁকি কোথাও ডকুমেন্টেড নয় | প্রকৃত README |
| L-2 | `DRIVER_ARCHITECTURE.plan:38,50,55` | ডকুমেন্ট বাস্তবতার সাথে মেলে না: প্যাকেজ `com.ninmods.loader` (আসল `com.ghost.driver.loader`), `Kernel_Drivers.zip` "৫,৪৭১,২০৩ বাইট / ৭৫টি ড্রাইভার" (আসল ১০,৮৯০,৯৪৩ বাইট / ১৩২ entry), `chmod 777` (কোডে `755`), `smali/com/ninmods/...MainActivity` | ডকুমেন্ট রিজেনারেট করুন |
| L-3 | `MainActivity.smali:376–520` + `assets\Driver.sh` | ৪৫৩KB AArch64 ELF (e_type=3 PIE, interp `/system/bin/linker64`) কপি+`chmod 755` হয় কিন্তু **কখনো execute হয় না** — dead asset (classes4-সংস্করণে চলে, দেখুন H-5) | হয় ব্যবহার করুন, নাহলে asset বাদ দিন |
| L-4 | `MainActivity.smali:3372` | UI-তে hardcoded `"Version: 45.0"` বনাম apktool.yml `versionName: 90.58` | `BuildConfig`/`PackageInfo` থেকে পড়ুন |
| L-5 | `MainActivity.smali:3571–3608` | `deleteRecursive` symlink-aware নয় (symlinked dir-এর ভিতরে ঢোকে) | `Files.walkFileTree` + `NOFOLLOW_LINKS` |
| L-6 | `MainActivity.smali:3518–3568` | `onRequestPermissionsResult`-এ granted/denied পার্থক্য না করেই flow চালু | result যাচাই |
| L-7 | `.github\workflows\build-and-release.yml:40–47` | বিল্ড/সাইন যাচাই নেই (`apksigner verify`, `aapt dump badging` দিয়ে debuggable/permission assertion নেই); `actions/checkout@v4`/`setup-java@v4` major-tag pin | pin + verification step |
| L-8 | `MainActivity.smali:1989` (dead code) | `waitFor()` কল এমন শাখায় যা exception-এর পরে কখনো reach হয় না | ডেড কোড সরান |
| L-9 | `MainActivity.smali:1029–1103`, `1104–1117` | UI লগ `StringBuilder` unbounded + প্রতি লাইনে `runOnUiThread` (ক্লিক spam-এ লাইন বন্যা) | bounded buffer + batch update |

---

## ৩. যাচাইকৃত ঠিক থাকা জিনিস

1. **কোনো `INTERNET` permission নেই** (`AndroidManifest.xml:1–25`) — অ্যাপের নিজের কোড নেটওয়ার্কে ডেটা পাঠাতে পারে না; log/telemetry ফাঁস শুধু লোকাল shared storage-এ সীমিত (M-3)। `ACCESS_NETWORK_STATE`/`INTERNET` দুটিই অনুপস্থিত।
2. **`android.util.Log` ব্যবহার নেই** — `MainActivity.smali`-এ `Landroid/util/Log;->` ম্যাচ **০**; logcat-এ root আউটপুট/debug string ফাঁস হয় না (ফাঁস শুধু /sdcard ফাইলে, M-3)।
3. **কোনো hardcoded API key / token / production URL সোর্স কোডে নেই** — `.yml/.bat/.plan/.md/.properties/.json/.gradle/.txt` স্ক্যানে শুধু `secrets.GITHUB_TOKEN` (সঠিক usage, `build-and-release.yml:84,98`) ও debug-keystore-এর জন্য পরিচিত `storepass android` (পাবলিক debug password, secret নয়)। একমাত্র credential-লিক `.git/config` (C-1), সোর্স কোডে নয়।
4. **`copyDriverChecker()`-এর `chmod`** array-form `Runtime.exec(new String[]{"chmod","755",path})` (`:479–497`) — শেল নেই, তাই এখানে injection অসম্ভব। একইভাবে unload-ও array-form (`:2812–2816`)।
5. **fixed-string `su -c`** driver-check (`:1860–1875`) — কমান্ড string সম্পূর্ণ literal, user/zips input নেই → ওই পথে injection নেই (লোড পাথে আছে, C-5)।
6. **বর্তমান `Kernel_Drivers.zip`-এ path-traversal নেই** — ১৩২টি entry সবই `QX/...` বা `RT/...`, `..`/absolute path/backslash entry শূন্য (যাচাইকৃত)।
7. **`.gitignore` সঠিকভাবে সংবেদনশীল artifact বাদ দেয়** — `*.keystore`, `*.apk`, `*.idsig`, `release_apk/`, `build/` (`:1–5`); রিপোতে কোনো keystore/jks/pem ফাইল নেই (স্ক্যানে ০) এবং git-tracked keystore নেই।
8. **Release tag-এ timestamp** ও single canonical APK নাম (`Loader_V${LOADER_VER}.apk`, `:68`) — নাম-কনফ্লিক্ট/overwrite এড়ায়; `.idsig` মুছে ফেলা হয় (`:66`)।
9. **Extraction destination app-private** — `getFilesDir()` (`:861,868,911`), world-writable নয়; `/data/local/tmp`-এ যায় শুধু root `cp`-এর মাধ্যমে (C-5/TOCTOU আলাদা ইস্যু)।
10. **Zip-bomb-প্রতিরোধে buffer/stream সঠিকভাবে close হয়** এবং প্রতিটি entry `closeEntry()` করা হয় (`:968–982`) — resource leak নেই।
11. **Manifest-এ মাত্র একটি কম্পোনেন্ট** (activity), কোনো exported service/receiver/provider নেই → attack surface ছোট (exported activity নিজেই M-2)।

---

## ৪. NOT VERIFIED

| আইটেম | কারণ |
|---|---|
| **রানটাইম আচরণ** — `insmod` সত্যিই ব্যর্থ হয় কি না (H-4), `setenforce 0` সত্যিই সফল হয় কি না, `/dev/BYNb` তৈরি হয় কি না | কোনো root ডিভাইস/এমুলেটর পাওয়া যায়নি; শুধু স্ট্যাটিক কোড-পাথ বিশ্লেষণ |
| **কোন `MainActivity` ক্লাসটি রানটাইমে লোড হয়** (H-5) | ART-এর dex resolution order ধরে নেওয়া হয়েছে (`classes.dex` আগে); ডিভাইসে যাচাই করা হয়নি |
| **`assets\Driver.sh`-এর প্রকৃত কার্যকারিতা** | ELF হেডার (AArch64 PIE, e_type=3) ও ১,১৫৯টি string নিষ্কাশিত; উল্লেখযোগ্য app-specific token: `ro.arch`, `exynos9810`, `12077973`, `yptnk`; কোনো `/dev/*` path বা `insmod`/`chmod` স্ট্রিং স্পষ্ট নয়, import-এ `ioctl`, `opendir`, `readdir`, `syscall`, `__system_property_get` আছে। `ioctl 0x801/0x802/0x803` বাস্তবে করে কি না — **disassembly করা হয়নি** |
| **১৩২টি entry-র vermagic** | শুধু ৫টি নমুনা (`QX/5.10.ko.sh`→`vermagic=5.10.198-android12-9-…-dirty … modversions aarch64`; `RT/6.12.sh`→`vermagic=6.12.23-android16-5-maybe-dirty-4k …`; `QX/4.14.117.ko.sh`→`vermagic=4.14.117-perf …`; `RT/5.10.sh` / `QX/4.9.337.ko.sh`→base64 blob-এ plaintext vermagic মেলেনি)। বাকি ১২৭টি যাচাই হয়নি |
| **`uber-apk-signer` ঠিক কোন keystore ব্যবহার করে** | ডকুমেন্টেড ডিফল্ট = নিজস্ব debug keystore; চালিয়ে যাচাই করা হয়নি (CI চালানো হয়নি) |
| **GEMINI.md / Rule 4** | রিপোতে `GEMINI.md` ফাইল নেই (রুট তালিকায় অনুপস্থিত) — "৩০ সেকেন্ড উইন্ডো + async drain" requirement টাস্ক-বর্ণনা থেকে ধরা হয়েছে |
| **`.git` history-তে অতীতের secret** | শুধু বর্তমান `.git/config` ও ওয়ার্কিং ট্রি স্ক্যান; `git log -p` ফুল-history secret-scan করা হয়নি |
| **`original\META-INF` সার্টিফিকেট** | মূল APK-র signing cert-এর subject/fingerprint পড়া হয়নি (বাইনারি signature block) |
| **`AndroidManifest` merge-এর পরিণতি** | `queries`-এ `com.dts.freefireth`/`freefiremax`/`com.ninmods.main` — target-game dependency; ফাংশনাল প্রভাব ডিভাইসে যাচাই হয়নি |

---

## ৫. অগ্রাধিকার-ক্রম (সংশোধের ক্রম)

1. **C-1** টোকেন revoke/rotate (মিনিটের মধ্যে)।
2. **C-2** `debuggable=false`, **C-3** `setenforce 0` বাদ, **C-4** permission tightening।
3. **C-5 + H-6** shell-quoting + integrity/atomic install (root-exec পাথের মূল ঝুঁকি)।
4. **H-1, H-2** exec lifecycle (drain/timeout/exact-name unload)।
5. **H-3, M-5** release signing ও CI scope।
6. **H-4, H-5** লোডার যুক্তি ও বিল্ড এককতা।
