.class public Lcom/ninmods/loader/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x64


# instance fields
.field private btnCheckDriver:Landroid/widget/Button;

.field private btnQX:Landroid/widget/Button;

.field private btnRT:Landroid/widget/Button;

.field private btnStop:Landroid/widget/Button;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isDriverChecked:Z

.field private kernelVersion:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field private showingNoDriverMsg:Z

.field private tvDriverStatus:Landroid/widget/TextView;

.field private tvKernel:Landroid/widget/TextView;

.field private tvOutput:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-oAOcYY_XGGa39zxk13LCGVq9co(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriver$14(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0LMu6p36vTpjIAwXlhJ66J2PLwg(Lcom/ninmods/loader/MainActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriverCheck$10(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4wyXsJ0dQLfBLe8it9hYX7QUjH0(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriverCheck$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6pHMsrg-UyWJyu4f28I92FQx1UQ(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$appendOutput$17(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6uIRm-v5e1bnCjj88FPTp1Oh5qw(Lcom/ninmods/loader/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ninmods/loader/MainActivity;->lambda$showAndExit$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9F11xqae64oL8pg8vYBlMNrMVVA(Lcom/ninmods/loader/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriverCheck$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BLMB4HAx4-Gl5Iv4Tu0Wl77oZAc(Lcom/ninmods/loader/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->lambda$clearTerminal$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$JB8mtHerpJrdn0JiTPMXqkm_rhI(Lcom/ninmods/loader/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriverCheck$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$NMZSrdpM7x2C28N5KBhNQmCvGK8(Lcom/ninmods/loader/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$setupUI$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P7x8WivPnvnxnjcbsbLy1brV0To(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ninmods/loader/MainActivity;->lambda$runDriver$12(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T4QshbxT-NPR19SyGHAl-3hg8fk(Lcom/ninmods/loader/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriverCheck$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$We-yaaCT-rctSWiaykyJJJZZZ9w(Lcom/ninmods/loader/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->lambda$detectKernel$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$cc2z1L8SaP4ngxTgkjHnfeEJZr0(Lcom/ninmods/loader/MainActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriver$13(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIfqyZEgsZrrnLOoldRSheaw5P8(Lcom/ninmods/loader/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->lambda$detectKernel$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$m7GPeBcdr3UriEoeHg9xUzOdzI8(Lcom/ninmods/loader/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$setupUI$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pCfWzmQkkQxbgO_qOU9F7Yb_L_c(Lcom/ninmods/loader/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$setupUI$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sTTlpTP_1lZX63hVW-8IdosLEWk(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriver$15(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-DjU4NfYZH28SV9mHtbtvSAEZc(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->lambda$executeDriverCheck$7(Ljava/lang/String;)V

    return-void
.end method




.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    .line 35
    iput-boolean v0, p0, Lcom/ninmods/loader/MainActivity;->isDriverChecked:Z

    return-void
.end method

.method private appendOutput(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {p1}, Lcom/ninmods/loader/MainActivity;->writeLogLine(Ljava/lang/String;)V

    .line 592
    new-instance v0, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 596
    return-void
.end method

.method private checkAndRequestPermissions()V
    .locals 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_check_legacy

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_check_legacy
    const/16 v1, 0x17

    if-lt v0, v1, :cond_perm_done

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_perm_done

    const/16 v2, 0x64

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_perm_done
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_perm

    return-void

    :catch_perm
    move-exception v0

    return-void
.end method

.method private checkRoot()Z
    .locals 4

    .line 62
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 63
    .local v1, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    .local v2, "os":Ljava/io/DataOutputStream;
    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 67
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private clearTerminal()V
    .locals 1

    .line 586
    new-instance v0, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/ninmods/loader/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method private copyDriverChecker()V
    .locals 10

    .line 132
    :try_start_0
    const-string v0, "Driver.sh"

    .line 133
    .local v0, "assetName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v1, "destFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 137
    .local v2, "test":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .end local v2    # "test":Ljava/io/InputStream;
    nop

    .line 142
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 147
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 151
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 152
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 156
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 158
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v7, "chmod"

    const-string v8, "755"

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 161
    .local v5, "chmod":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    nop

    .end local v0    # "assetName":Ljava/lang/String;
    .end local v1    # "destFile":Ljava/io/File;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "chmod":Ljava/lang/Process;
    .end local v6    # "read":I
    goto :goto_1

    .line 138
    .restart local v0    # "assetName":Ljava/lang/String;
    .restart local v1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    return-void

    .line 163
    .end local v0    # "assetName":Ljava/lang/String;
    .end local v1    # "destFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 166
    :goto_1
    return-void
.end method


.method private dp(I)I
    .locals 2
    .param p1, "val"    # I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private createSpacer(I)Landroid/view/View;
    .locals 3
    .param p1, "heightDp"    # I

    new-instance v0, Landroid/view/View;
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 p1, -0x1
    invoke-direct {v2, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createCard()Landroid/widget/LinearLayout;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xe
    invoke-direct {p0, v2}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v2

    const/16 v3, 0xc
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v3

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x2bf76bf7    # MAGENTA_CARD
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v3, 0xc
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v3
    int-to-float v3, v3
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x1
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v3

    const v4, 0x44f76bf7    # MAGENTA_CARD_BORDER
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1
    const/4 v4, -0x2
    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v3

    const/4 v4, 0x0
    invoke-virtual {v1, v4, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createOrangeButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    new-instance v0, Landroid/widget/Button;
    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41500000    # 13.0f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    const/4 v2, 0x1
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v1, 0x10
    invoke-direct {p0, v1}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v1

    const/16 v2, 0xc
    invoke-direct {p0, v2}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v2

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, -0x19c81a    # 0xFFE637E6 (MAGENTA_PRIMARY)
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0xa
    invoke-direct {p0, v2}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v2
    int-to-float v2, v2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createPurpleButton(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "strokeColor"    # I

    new-instance v0, Landroid/widget/Button;
    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41400000    # 12.0f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    const/4 v2, 0x1
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v1, 0xc
    invoke-direct {p0, v1}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v1

    const/16 v2, 0xa
    invoke-direct {p0, v2}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v2

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, 0x66220a2e
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0xa
    invoke-direct {p0, v2}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v2
    int-to-float v2, v2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x1
    invoke-direct {p0, v2}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v2
    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private detectKernel()V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/ninmods/loader/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 378
    return-void
.end method

.method private executeDriver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 533
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->clearTerminal()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Loading..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 582
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 583
    return-void
.end method

.method private executeDriverCheck()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    const-string v1, "Checking..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->clearTerminal()V

    .line 385
    const-string v0, "Checking driver..."

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/ninmods/loader/MainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method private extractDrivers()V
    .locals 8

    .line 330
    :try_start_0

    new-instance v0, Ljava/io/File;
    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getFilesDir()Ljava/io/File;
    move-result-object v1
    const-string v2, "RT"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0}, Lcom/ninmods/loader/MainActivity;->deleteRecursive(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;
    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getFilesDir()Ljava/io/File;
    move-result-object v1
    const-string v2, "QX"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0}, Lcom/ninmods/loader/MainActivity;->deleteRecursive(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Kernel_Drivers.zip"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 331
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 333
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 334
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v4, v3

    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_2

    .line 335
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    .local v3, "out":Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 339
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 340
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 342
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    if-lez v6, :cond_1

    .line 343
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 347
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "len":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 348
    .end local v3    # "out":Ljava/io/File;
    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_3

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extract error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private synthetic lambda$appendOutput$17(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 593
    const-string v0, "\\x1b\\[[0-9;]*[a-zA-Z]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;

    if-nez v0, :cond_tv_ok

    return-void

    :cond_tv_ok
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "currentText":Ljava/lang/String;
    iget-object v1, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$clearTerminal$16()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    return-void
.end method

.method private synthetic lambda$detectKernel$4()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kernel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private synthetic lambda$detectKernel$5()V
    .locals 6

    .line 359
    const-string v0, "-"

    const-string v1, "unknown"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "uname -r"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 360
    .local v2, "p":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 361
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "full":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 363
    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_0
    iput-object v4, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "full":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_catch_unk

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_catch_no_dash

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    goto :goto_1

    :cond_catch_no_dash
    iput-object v2, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    goto :goto_1

    :cond_catch_unk
    iput-object v1, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_post
    new-instance v0, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/ninmods/loader/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->extractDrivers()V

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->copyDriverChecker()V

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->checkRoot()Z

    move-result v0

    if-eqz v0, :cond_root_msg

    const-string v0, "[+] Superuser: Granted (Ready)"

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    goto :goto_root_end

    :cond_root_msg
    const-string v0, "[-] Notice: Root not detected. Please allow Superuser."

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    :goto_root_end
    :try_end_post
    .catch Ljava/lang/Throwable; {:try_start_post .. :try_end_post} :catch_post

    .line 377
    return-void

    :catch_post
    move-exception v0

    return-void
.end method

.method private synthetic lambda$executeDriver$13(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "finalResult"    # Ljava/lang/String;

    .line 563
    const-string v0, "["

    if-eqz p1, :cond_2

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 566
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 568
    :cond_0
    # Run genuine kernel verification right after driver execution
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->executeDriverCheck()V

    goto :goto_0

    .line 573
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 575
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 578
    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$executeDriver$14(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$executeDriver$15(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 539
    const-string v0, "\n"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 540
    .local v1, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 541
    .local v2, "os":Ljava/io/DataOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /data/local/tmp/_nin_drv.ko\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 644 /data/local/tmp/_nin_drv.ko\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insmod /data/local/tmp/_nin_drv.ko 2>&1\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v3, "setenforce 0 2>/dev/null; for s in /sys/dev/char/*/uevent; do if [ -e \"$s\" ]; then dname=\"\"; maj=\"\"; min=\"\"; eval \"$(grep -E '^(MAJOR|MINOR|DEVNAME)=' \"$s\")\"; if [ -n \"$DEVNAME\" ] && [ -n \"$MAJOR\" ] && [ -n \"$MINOR\" ]; then [ ! -e \"/dev/$DEVNAME\" ] && mknod \"/dev/$DEVNAME\" c \"$MAJOR\" \"$MINOR\" 2>/dev/null; chmod 666 \"/dev/$DEVNAME\" 2>/dev/null; if [ \"$MAJOR\" -ge 200 ] && [ ! -e \"/dev/BYNb\" ]; then ln -sf \"/dev/$DEVNAME\" /dev/BYNb 2>/dev/null; chmod 666 /dev/BYNb 2>/dev/null; fi; fi; fi; done; for s in /sys/class/*/*/dev; do if [ -e \"$s\" ]; then dname=$(echo \"$s\" | awk -F'/' '{print $(NF-1)}'); mm=$(cat \"$s\" 2>/dev/null); maj=$(echo \"$mm\" | cut -d: -f1); min=$(echo \"$mm\" | cut -d: -f2); if [ -n \"$maj\" ] && [ -n \"$min\" ]; then [ ! -e \"/dev/$dname\" ] && mknod \"/dev/$dname\" c \"$maj\" \"$min\" 2>/dev/null; chmod 666 \"/dev/$dname\" 2>/dev/null; if [ ! -e \"/dev/BYNb\" ]; then ln -sf \"/dev/$dname\" /dev/BYNb 2>/dev/null; chmod 666 /dev/BYNb 2>/dev/null; fi; fi; fi; done; chmod 666 /dev/BYNb* /dev/mem_tool* /proc/uevents_records 2>/dev/null\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 543
    const-string v3, "echo \"EXIT_CODE=$?\"\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 544
    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 547
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 548
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v4, "output":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 551
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 555
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "fail"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 557
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "error"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "EXIT_CODE=1"

    .line 558
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "EXIT_CODE=2"

    .line 559
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 561
    .local v5, "success":Z
    :goto_1
    move-object v7, v0

    .line 562
    .local v7, "finalResult":Ljava/lang/String;
    new-instance v8, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v8, p0, v5, p2, v7}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/ninmods/loader/MainActivity;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "output":Ljava/lang/StringBuilder;
    .end local v5    # "success":Z
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "finalResult":Ljava/lang/String;
    goto :goto_2

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, v0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private synthetic lambda$executeDriverCheck$10(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    const-string v1, "CHECK DRIVER"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const-string v1, "Driver Status: Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const v1, -0xe8bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    return-void
.end method

.method private synthetic lambda$executeDriverCheck$11()V
    .locals 11

    .line 389
    const-string v0, "-c"

    const-string v1, "su"

    :try_start_0
    const-string v2, "setenforce 0 2>/dev/null; for s in /sys/dev/char/*/uevent; do if [ -e \"$s\" ]; then dname=\"\"; maj=\"\"; min=\"\"; eval \"$(grep -E '^(MAJOR|MINOR|DEVNAME)=' \"$s\")\"; if [ -n \"$DEVNAME\" ] && [ -n \"$MAJOR\" ] && [ -n \"$MINOR\" ]; then [ ! -e \"/dev/$DEVNAME\" ] && mknod \"/dev/$DEVNAME\" c \"$MAJOR\" \"$MINOR\" 2>/dev/null; chmod 666 \"/dev/$DEVNAME\" 2>/dev/null; if [ \"$MAJOR\" -ge 200 ] && [ ! -e \"/dev/BYNb\" ]; then ln -sf \"/dev/$DEVNAME\" /dev/BYNb 2>/dev/null; chmod 666 /dev/BYNb 2>/dev/null; fi; fi; fi; done; for s in /sys/class/*/*/dev; do if [ -e \"$s\" ]; then dname=$(echo \"$s\" | awk -F'/' '{print $(NF-1)}'); mm=$(cat \"$s\" 2>/dev/null); maj=$(echo \"$mm\" | cut -d: -f1); min=$(echo \"$mm\" | cut -d: -f2); if [ -n \"$maj\" ] && [ -n \"$min\" ]; then [ ! -e \"/dev/$dname\" ] && mknod \"/dev/$dname\" c \"$maj\" \"$min\" 2>/dev/null; chmod 666 \"/dev/$dname\" 2>/dev/null; if [ ! -e \"/dev/BYNb\" ]; then ln -sf \"/dev/$dname\" /dev/BYNb 2>/dev/null; chmod 666 /dev/BYNb 2>/dev/null; fi; fi; fi; done; chmod 666 /dev/BYNb* /dev/mem_tool* /proc/uevents_records 2>/dev/null; NODES=''; for n in /dev/BYNb /dev/mem_tool /proc/uevents_records; do if [ -e \"$n\" ]; then NODES=\"$NODES $n\"; fi; done; for s in /sys/dev/char/*/uevent; do if [ -e \"$s\" ]; then dname=\"\"; eval \"$(grep '^DEVNAME=' \"$s\")\"; if [ -n \"$DEVNAME\" ] && [ -e \"/dev/$DEVNAME\" ]; then NODES=\"$NODES /dev/$DEVNAME\"; break; fi; fi; done; MODS=$(cat /proc/modules 2>/dev/null | grep -E \"BYNb|mem_tool|uevents|driver|nh|5.10\"); if [ -n \"$NODES\" ] || [ -n \"$MODS\" ]; then echo \"[+] ACTIVE DRIVER DETECTED\"; if [ -n \"$NODES\" ]; then echo \"[+] Device Endpoints:\"; ls -l $NODES; fi; if [ -n \"$MODS\" ]; then echo \"[+] Active Kernel Modules:\"; echo \"$MODS\" | head -n 5; fi; echo \"RESULT=DRIVER_ACTIVE\"; else echo \"[-] NO ACTIVE DRIVER FOUND\"; echo \"[-] Checked: /dev/BYNb, /dev/mem_tool, /proc/uevents_records\"; echo \"[-] Kernel Error Telemetry (dmesg):\"; dmesg 2>/dev/null | grep -iE \"module_sig|PKCS|disagree|vermagic|failed\" | tail -n 5; echo \"RESULT=DRIVER_INACTIVE\"; fi"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 412
    .local v0, "process":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 413
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 415
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 416
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 420
    .local v5, "errorReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v6, "output":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    const-string v9, "\n"

    if-eqz v7, :cond_1

    .line 423
    move-object v7, v8

    .line 424
    .local v7, "currentLine":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    new-instance v9, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v9, p0, v7}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 426
    .end local v7    # "currentLine":Ljava/lang/String;
    goto :goto_0

    .line 428
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_2

    .line 429
    move-object v7, v8

    .line 430
    .local v7, "errorLine":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    new-instance v10, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v10, p0, v7}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    .end local v7    # "errorLine":Ljava/lang/String;
    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 436
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, "result":Ljava/lang/String;
    const-string v9, "driver_active"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 442
    .local v9, "isSuccess":Z
    :goto_2
    new-instance v10, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v10, p0, v9}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/ninmods/loader/MainActivity;Z)V

    invoke-virtual {p0, v10}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    .end local v0    # "process":Ljava/lang/Process;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "driverPath":Ljava/lang/String;
    .end local v3    # "driverFile":Ljava/io/File;
    .end local v4    # "chmodProcess":Ljava/lang/Process;
    .end local v5    # "errorReader":Ljava/io/BufferedReader;
    .end local v6    # "output":Ljava/lang/StringBuilder;
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "isSuccess":Z
    goto :goto_3

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/ninmods/loader/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private synthetic lambda$executeDriverCheck$6()V
    .locals 2

    .line 394
    const-string v0, "Driver.sh not found"

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    const-string v1, "CHECK DRIVER"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const-string v1, "Driver Status: Not found"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const v1, -0xe8bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    return-void
.end method

.method private synthetic lambda$executeDriverCheck$7(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentLine"    # Ljava/lang/String;

    .line 425
    invoke-direct {p0, p1}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$executeDriverCheck$8(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorLine"    # Ljava/lang/String;

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$executeDriverCheck$9(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ninmods/loader/MainActivity;->isDriverChecked:Z

    .line 444
    iget-object v1, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;

    const-string v1, "CHECK DRIVER"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 447
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const-string v1, "Driver Status: Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const v1, -0xff198a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    # Enable Stop button
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnStop:Landroid/widget/Button;

    if-eqz v0, :cond_stop_en

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_stop_en
    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const-string v1, "Driver Status: Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    const v1, -0xe8bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    # Disable Stop button
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->btnStop:Landroid/widget/Button;

    if-eqz v0, :cond_stop_dis

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_stop_dis
    .line 454
    :goto_0
    return-void
.end method

.method private synthetic lambda$runDriver$12(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "finalMatches"    # Ljava/util/List;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 527
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ninmods/loader/MainActivity;->executeDriver(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupUI$1(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 216
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->executeDriverCheck()V

    return-void
.end method

.method private synthetic lambda$setupUI$2(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 228
    const-string v0, "QX"

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->runDriver(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupUI$3(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 229
    const-string v0, "RT"

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->runDriver(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showAndExit$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 77
    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->finish()V

    return-void
.end method

.method private runDriver(Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;

    .line 470
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ninmods/loader/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "] No driver found"

    const-string v3, "["

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 472
    iget-boolean v1, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    if-nez v1, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->clearTerminal()V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 475
    iput-boolean v4, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    .line 477
    :cond_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 481
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_c

    array-length v5, v1

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 490
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v1, v7

    .line 492
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 493
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v8    # "f":Ljava/io/File;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 497
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 498
    iget-object v5, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 499
    iget-object v5, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    iget-object v8, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    .line 500
    .local v5, "prefix":Ljava/lang/String;
    :goto_1
    array-length v7, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_7

    aget-object v9, v1, v8

    .line 501
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 502
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v9    # "f":Ljava/io/File;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 507
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 508
    iget-boolean v5, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    if-nez v5, :cond_8

    .line 509
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->clearTerminal()V

    .line 510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] No driver found for kernel "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/ninmods/loader/MainActivity;->kernelVersion:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 511
    iput-boolean v4, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    .line 513
    :cond_8
    return-void

    .line 516
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_a

    .line 517
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/ninmods/loader/MainActivity;->executeDriver(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 519
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 520
    .local v3, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 521
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 520
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 524
    .end local v4    # "i":I
    :cond_b
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 525
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " driver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 526
    move-object v5, v2

    .line 527
    .local v5, "finalMatches":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v6, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1, v5}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ninmods/loader/MainActivity;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 530
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "finalMatches":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_4
    return-void

    .line 482
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_c
    :goto_5
    iget-boolean v5, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    if-nez v5, :cond_d

    .line 483
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->clearTerminal()V

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    .line 485
    iput-boolean v4, p0, Lcom/ninmods/loader/MainActivity;->showingNoDriverMsg:Z

    .line 487
    :cond_d
    return-void
.end method

.method private copyTerminalOutput()V
    .locals 3

    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/ninmods/loader/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, "Terminal Logs"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v2, "[+] Terminal logs copied by user"
    invoke-static {v2}, Lcom/ninmods/loader/MainActivity;->writeLogLine(Ljava/lang/String;)V
    const-string v0, "Terminal logs copied and saved to /sdcard/Download/ninmods_driver_loader.log"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "Terminal log is empty"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private unloadDriver()V
    .locals 3

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->clearTerminal()V

    const-string v0, "Unloading driver..."

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaUnload;

    invoke-direct {v1, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaUnload;-><init>(Lcom/ninmods/loader/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private executeUnloadDriver()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    const-string v2, "-c"

    const-string v3, "rmmod 5.10_A12 2>/dev/null; rmmod nh 2>/dev/null; rmmod mem_tool 2>/dev/null; rmmod BYNb 2>/dev/null; rmmod sched_debug 2>/dev/null; for m in $(cat /proc/modules 2>/dev/null | awk '{print $1}'); do case \"$m\" in *5.10*|*nh*|*mem_tool*|*driver*|*rt*|*sched_debug*|*BYNb*) rmmod \"$m\" 2>/dev/null;; esac; done; rm -f /data/nh.ko 2>/dev/null; rm -f /data/local/tmp/*.ko 2>/dev/null; pkill -f 'Driver.sh' 2>/dev/null; pkill -f 'QX' 2>/dev/null; pkill -f 'temp' 2>/dev/null"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "[+] Driver unloaded successfully."

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    const-string v0, "[+] Kernel device nodes cleaned up."

    invoke-direct {p0, v0}, Lcom/ninmods/loader/MainActivity;->appendOutput(Ljava/lang/String;)V

    new-instance v0, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;

    invoke-direct {v0, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;-><init>(Lcom/ninmods/loader/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/ninmods/loader/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method



.method private setupUI()V
    .locals 15

    new-instance v0, Landroid/widget/FrameLayout;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0xf4fcee    # 0xFF0B0312
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v1, Lnin/app/ui/ParticleNetworkView;
    invoke-direct {v1, p0}, Lnin/app/ui/ParticleNetworkView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v3, 0x1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;
    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v5, 0x0
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/16 v6, 0x10
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v6, 0x10
    invoke-direct {p0, v6}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v6
    const/16 v7, 0xa
    invoke-direct {p0, v7}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v7
    invoke-virtual {v4, v6, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x2
    invoke-direct {v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;
    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v8
    const-string v9, "nin_logo"
    const-string v10, "drawable"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v8
    if-eqz v8, :cond_skip_logo
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V
    :cond_skip_logo

    const/16 v8, 0x26
    invoke-direct {p0, v8}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v8
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v8, 0xa
    invoke-direct {p0, v8}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v8
    invoke-virtual {v9, v5, v5, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    invoke-virtual {v4, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;
    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x3f800000    # 1.0f
    invoke-direct {v8, v5, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;
    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v9, "NINMODS"
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v9, -0x1
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v9, 0x41800000    # 16.0f
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v8, v9, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;
    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v8, "SUPERUSER"
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v8, -0xdd3aa2    # 0xFF22C55E
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v8, 0x41200000    # 10.0f
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v6, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v8, 0x8
    invoke-direct {p0, v8}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v8
    const/4 v9, 0x4
    invoke-direct {p0, v9}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v9
    invoke-virtual {v6, v8, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
    const v9, 0x2022c55e
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    const/16 v9, 0xc
    invoke-direct {p0, v9}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v9
    int-to-float v9, v9
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v9
    const v10, -0xdd3aa2    # 0xFF22C55E
    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/view/View;
    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    const v6, 0x33f76bf7
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v8
    invoke-direct {v6, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ScrollView;
    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f800000    # 1.0f
    invoke-direct {v6, v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;
    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/16 v8, 0x10
    invoke-direct {p0, v8}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v8
    const/16 v9, 0xc
    invoke-direct {p0, v9}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v9
    invoke-virtual {v6, v8, v9, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    # Card 1: Telemetry
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->createCard()Landroid/widget/LinearLayout;
    move-result-object v8

    new-instance v9, Landroid/widget/TextView;
    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v10, "SYSTEM TELEMETRY"
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v10, -0x1d4218    # 0xFFE2BDE8
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v10, 0x41280000    # 10.5f
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/TextView;
    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;
    const-string v10, "Kernel: Detecting..."
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;
    const/4 v10, -0x1
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;
    const/high16 v10, 0x41480000    # 12.5f
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;
    const/4 v10, 0x4
    invoke-direct {p0, v10}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v10
    invoke-virtual {v9, v5, v10, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvKernel:Landroid/widget/TextView;
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Card 2: Driver Status
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->createCard()Landroid/widget/LinearLayout;
    move-result-object v8

    new-instance v9, Landroid/widget/TextView;
    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v10, "DRIVER CHANNEL STATUS"
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v10, -0x1d4218    # 0xFFE2BDE8
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v10, 0x41280000    # 10.5f
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/TextView;
    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;
    const-string v10, "Driver Status: Not checked"
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;
    const v10, -0x894089    # 0xFFF76BF7
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;
    const/high16 v10, 0x41480000    # 12.5f
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;
    const/4 v10, 0x4
    invoke-direct {p0, v10}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v10
    invoke-virtual {v9, v5, v10, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Card 3: Engine Execution
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->createCard()Landroid/widget/LinearLayout;
    move-result-object v8

    new-instance v9, Landroid/widget/TextView;
    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v10, "ENGINE CONTROLS"
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v10, -0x1d4218    # 0xFFE2BDE8
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v10, 0x41280000    # 10.5f
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v9, "CHECK DRIVER"
    invoke-direct {p0, v9}, Lcom/ninmods/loader/MainActivity;->createOrangeButton(Ljava/lang/String;)Landroid/widget/Button;
    move-result-object v9
    iput-object v9, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;
    iget-object v9, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;
    new-instance v10, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda3;
    invoke-direct {v10, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/ninmods/loader/MainActivity;)V
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v9, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v10, 0x8
    invoke-direct {p0, v10}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v10
    invoke-virtual {v9, v5, v10, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->btnCheckDriver:Landroid/widget/Button;
    invoke-virtual {v8, v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;
    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/high16 v10, 0x40000000    # 2.0f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const-string v10, "QX Auto Drivers Load"
    const v11, -0xdd3aa2    # 0xFF22C55E
    invoke-direct {p0, v10, v11}, Lcom/ninmods/loader/MainActivity;->createPurpleButton(Ljava/lang/String;I)Landroid/widget/Button;
    move-result-object v10
    iput-object v10, p0, Lcom/ninmods/loader/MainActivity;->btnQX:Landroid/widget/Button;

    const-string v10, "RT Auto Drivers Load"
    const v11, -0x19c81a    # 0xFFE637E6
    invoke-direct {p0, v10, v11}, Lcom/ninmods/loader/MainActivity;->createPurpleButton(Ljava/lang/String;I)Landroid/widget/Button;
    move-result-object v10
    iput-object v10, p0, Lcom/ninmods/loader/MainActivity;->btnRT:Landroid/widget/Button;

    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->btnQX:Landroid/widget/Button;
    new-instance v11, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda4;
    invoke-direct {v11, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/ninmods/loader/MainActivity;)V
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->btnRT:Landroid/widget/Button;
    new-instance v11, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda5;
    invoke-direct {v11, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/ninmods/loader/MainActivity;)V
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f800000    # 1.0f
    invoke-direct {v10, v5, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    const/4 v12, 0x4
    invoke-direct {p0, v12}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v12
    invoke-virtual {v10, v5, v5, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    iget-object v13, p0, Lcom/ninmods/loader/MainActivity;->btnQX:Landroid/widget/Button;
    invoke-virtual {v9, v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v10, v5, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v10, v12, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    iget-object v11, p0, Lcom/ninmods/loader/MainActivity;->btnRT:Landroid/widget/Button;
    invoke-virtual {v9, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v10, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/Button;
    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
    iput-object v9, p0, Lcom/ninmods/loader/MainActivity;->btnStop:Landroid/widget/Button;
    const/4 v10, 0x0
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V
    const v10, 0x3ecccccd    # 0.4f
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setAlpha(F)V
    const-string v10, "STOP / UNLOAD ACTIVE ENGINE"
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    const v10, -0xadad    # 0xFFFF5252
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V
    const/high16 v10, 0x41500000    # 13.0f
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextSize(F)V
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v9, v10, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V
    const/16 v10, 0x10
    invoke-direct {p0, v10}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v10
    const/16 v11, 0xb
    invoke-direct {p0, v11}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    invoke-virtual {v9, v10, v11, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
    const v11, 0x26ff5252
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    const/16 v11, 0xa
    invoke-direct {p0, v11}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    int-to-float v11, v11
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    const v12, -0x7700adad    # 0x88FF5252
    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaUnloadBtn;
    invoke-direct {v10, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaUnloadBtn;-><init>(Lcom/ninmods/loader/MainActivity;)V
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v10, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v11, 0x8
    invoke-direct {p0, v11}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    invoke-virtual {v10, v5, v11, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Card 4: Terminal Console
    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->createCard()Landroid/widget/LinearLayout;
    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout;
    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/16 v10, 0x10
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v10, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/4 v11, 0x6
    invoke-direct {p0, v11}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    invoke-virtual {v10, v5, v5, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;
    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v11, "LIVE TERMINAL OUTPUT"
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v11, -0x1d4218    # 0xFFE2BDE8
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v11, 0x41280000    # 10.5f
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v11, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v10, v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x3f800000    # 1.0f
    invoke-direct {v11, v5, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;
    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v11, "COPY LOGS"
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v11, -0x894089    # 0xFFF76BF7
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v11, 0x41200000    # 10.0f
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v11, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v10, v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    const/16 v11, 0x8
    invoke-direct {p0, v11}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    const/4 v12, 0x4
    invoke-direct {p0, v12}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v12
    invoke-virtual {v10, v11, v12, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
    const v12, 0x32f76bf7
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    const/4 v12, 0x6
    invoke-direct {p0, v12}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v12
    int-to-float v12, v12
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v12
    const v13, 0x55f76bf7
    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaCopy;
    invoke-direct {v11, p0}, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaCopy;-><init>(Lcom/ninmods/loader/MainActivity;)V
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v11, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/ScrollView;
    invoke-direct {v9, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
    const v11, -0x66efebe8    # 0x99100418
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    const/16 v11, 0x8
    invoke-direct {p0, v11}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    int-to-float v11, v11
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    invoke-direct {p0, v3}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    const v12, 0x33f76bf7
    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x96    # 150dp
    invoke-direct {p0, v11}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v11
    invoke-direct {v10, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;
    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v10, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    const-string v11, ""
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    const v11, -0xfd0001    # 0xFF00F2FF
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V
    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    const/high16 v11, 0x41280000    # 10.5f
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V
    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    sget-object v11, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    const/16 v10, 0xa
    invoke-direct {p0, v10}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v10
    iget-object v11, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    invoke-virtual {v11, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V
    iget-object v10, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v10, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    iget-object v11, p0, Lcom/ninmods/loader/MainActivity;->tvOutput:Landroid/widget/TextView;
    invoke-virtual {v9, v11, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Pinned Universal Footer
    new-instance v4, Landroid/widget/LinearLayout;
    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/16 v6, 0x11
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V
    const/16 v6, 0xa
    invoke-direct {p0, v6}, Lcom/ninmods/loader/MainActivity;->dp(I)I
    move-result v6
    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;
    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v7, "Version: 45.0"
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v7, -0x266127    # 0xFFD99ED9
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v7, 0x41300000    # 11.0f
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ninmods/loader/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private showAndExit()V
    .locals 2

    const-string v0, "Root required"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showModifiedPopup()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_main_init
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ninmods/loader/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ninmods/loader/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->initDiagnosticsLog()V

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->setupUI()V

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->checkAndRequestPermissions()V

    invoke-direct {p0}, Lcom/ninmods/loader/MainActivity;->detectKernel()V
    :try_end_main_init
    .catch Ljava/lang/Throwable; {:try_start_main_init .. :try_end_main_init} :catch_main_init

    return-void

    :catch_main_init
    move-exception v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/ninmods/loader/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 601
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 604
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 118
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 120
    .local v0, "allGranted":Z
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p3, v2

    .line 121
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 123
    goto :goto_1

    .line 120
    .end local v3    # "result":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "allGranted":Z
    :cond_1
    :goto_1
    return-void
.end method


.method private static deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    if-nez p0, :cond_del_not_null
    return-void

    :cond_del_not_null
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    move-result v0
    if-nez v0, :cond_del_exists
    return-void

    :cond_del_exists
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-eqz v0, :cond_del_self

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :cond_del_self

    array-length v1, v0
    const/4 v2, 0x0

    :goto_del_loop
    if-ge v2, v1, :cond_del_self

    aget-object v3, v0, v2
    invoke-static {v3}, Lcom/ninmods/loader/MainActivity;->deleteRecursive(Ljava/io/File;)V
    add-int/lit8 v2, v2, 0x1
    goto :goto_del_loop

    :cond_del_self
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static writeLogLine(Ljava/lang/String;)V
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    :try_start_wlog
    if-nez p0, :cond_wlog_notnull
    return-void

    :cond_wlog_notnull
    new-instance v0, Ljava/io/File;
    const-string v1, "/sdcard/Download"
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :cond_wlog_dir
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_wlog_dir
    new-instance v1, Ljava/io/File;
    const-string v2, "ninmods_driver_loader.log"
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    new-instance v2, Ljava/io/FileWriter;
    const/4 v3, 0x1
    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, "\n"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_wlog
    .catch Ljava/lang/Throwable; {:try_start_wlog .. :try_end_wlog} :catch_wlog

    :catch_wlog
    return-void
.end method

.method private initDiagnosticsLog()V
    .locals 3

    :try_start_init_diag
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "\n==================================================\nNINMODS DRIVER LOADER - LOGGING SESSION\nDevice: "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "\nAndroid: "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " (SDK "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ")\nKernel: "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "os.version"
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "\n=================================================="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/ninmods/loader/MainActivity;->writeLogLine(Ljava/lang/String;)V
    :try_end_init_diag
    .catch Ljava/lang/Throwable; {:try_start_init_diag .. :try_end_init_diag} :catch_init_diag

    :catch_init_diag
    return-void
.end method
