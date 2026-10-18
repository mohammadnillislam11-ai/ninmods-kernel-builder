.class Lcom/ninmods/loader/EngineManager$3;
.super Ljava/lang/Object;
.source "EngineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninmods/loader/EngineManager;->stopAllEngines(Landroid/app/Activity;Lcom/ninmods/loader/EngineManager$OutputCallback;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
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

    .line 160
    iput-object p1, p0, Lcom/ninmods/loader/EngineManager$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ninmods/loader/EngineManager$3;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    iput-object p3, p0, Lcom/ninmods/loader/EngineManager$3;->val$tvStatus:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/ninmods/loader/EngineManager$3;->val$btnRT:Landroid/widget/Button;

    iput-object p5, p0, Lcom/ninmods/loader/EngineManager$3;->val$btnRAM:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 166
    const-string v2, "rmmod 5.10_A12 2>/dev/null; rmmod nh 2>/dev/null; rmmod mem_tool 2>/dev/null; rmmod health_storage_service_alloc 2>/dev/null; rmmod BYNb 2>/dev/null; rmmod sched_debug 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 167
    const-string v2, "for m in $(cat /proc/modules 2>/dev/null | awk \'{print $1}\'); do case \"$m\" in *5.10*|*nh*|*mem_tool*|*driver*|*rt*|*sched_debug*|*BYNb*) rmmod \"$m\" 2>/dev/null;; esac; done\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 168
    const-string v2, "rm -f /dev/health_storage_service_alloc /data/local/tmp/nin_daemon /data/local/tmp/.nin_driver_state 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 169
    const-string v2, "killall -9 nin_daemon 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 170
    const-string v2, "pkill -f \'Driver.sh\' 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 171
    const-string v2, "am broadcast -a com.ninmods.action.DRIVER_STATE --es mode NONE --es status STOPPED -p com.ninmods.menu 2>/dev/null\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 172
    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 176
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3;->val$activity:Landroid/app/Activity;

    const-string v1, "NONE"

    const-string v2, "STOPPED"

    invoke-static {v0, v1, v2}, Lcom/ninmods/loader/EngineManager;->-$$Nest$smsendExplicitBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/ninmods/loader/EngineManager$3$1;

    invoke-direct {v1, p0}, Lcom/ninmods/loader/EngineManager$3$1;-><init>(Lcom/ninmods/loader/EngineManager$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 202
    return-void
.end method
