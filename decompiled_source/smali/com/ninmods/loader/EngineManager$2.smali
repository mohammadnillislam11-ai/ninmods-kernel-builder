.class Lcom/ninmods/loader/EngineManager$2;
.super Ljava/lang/Object;
.source "EngineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninmods/loader/EngineManager;->onKernelLoaded(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$btnRAM:Landroid/widget/Button;

.field final synthetic val$btnRT:Landroid/widget/Button;

.field final synthetic val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

.field final synthetic val$tvStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/ninmods/loader/EngineManager$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ninmods/loader/EngineManager$2;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    iput-object p3, p0, Lcom/ninmods/loader/EngineManager$2;->val$tvStatus:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/ninmods/loader/EngineManager$2;->val$btnRT:Landroid/widget/Button;

    iput-object p5, p0, Lcom/ninmods/loader/EngineManager$2;->val$btnRAM:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    const-string v2, "chmod 666 /dev/health_storage_service_alloc /dev/BYNb* /dev/sched_debug 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 123
    const-string v2, "echo \'{\"mode\":\"KERNEL_RT\",\"status\":\"ACTIVE\"}\' > /data/local/tmp/.nin_driver_state 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 124
    const-string v2, "am broadcast -a com.ninmods.action.DRIVER_STATE --es mode KERNEL_RT --es status ACTIVE -p nin.app 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 125
    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 129
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2;->val$activity:Landroid/app/Activity;

    const-string v1, "KERNEL_RT"

    const-string v2, "ACTIVE"

    invoke-static {v0, v1, v2}, Lcom/ninmods/loader/EngineManager;->-$$Nest$smsendExplicitBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/ninmods/loader/EngineManager$2$1;

    invoke-direct {v1, p0}, Lcom/ninmods/loader/EngineManager$2$1;-><init>(Lcom/ninmods/loader/EngineManager$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 154
    return-void
.end method
