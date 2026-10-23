.class public Lcom/ninmods/loader/EngineManager;
.super Ljava/lang/Object;
.source "EngineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ninmods/loader/EngineManager$OutputCallback;
    }
.end annotation


# static fields
.field public static final ACTION_DRIVER_STATE:Ljava/lang/String; = "com.ninmods.action.DRIVER_STATE"

.field public static final STATE_FILE:Ljava/lang/String; = "/data/local/tmp/.nin_driver_state"

.field public static final TARGET_MAIN_PACKAGE:Ljava/lang/String; = "nin.app"


# direct methods
.method static bridge synthetic -$$Nest$smsendExplicitBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ninmods/loader/EngineManager;->sendExplicitBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onKernelLoaded(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 8

    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/ninmods/loader/EngineManager$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ninmods/loader/EngineManager$2;-><init>(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method

.method private static sendExplicitBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 208
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ninmods.action.DRIVER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v1, "nin.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string p1, "status"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 214
    return-void
.end method

.method public static startRootDaemon(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 8

    .line 24
    if-eqz p1, :cond_0

    const-string v0, "[RAM] Starting Master Root Engine..."

    invoke-interface {p1, v0}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/ninmods/loader/EngineManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/ninmods/loader/EngineManager$1;-><init>(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public static stopAllEngines(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 8

    .line 159
    if-eqz p1, :cond_0

    const-string v0, "[*] Stopping & Unloading all engines..."

    invoke-interface {p1, v0}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/ninmods/loader/EngineManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ninmods/loader/EngineManager$3;-><init>(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method
