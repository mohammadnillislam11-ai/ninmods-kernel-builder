.class Lcom/ninmods/loader/EngineManager$1$1;
.super Ljava/lang/Object;
.source "EngineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninmods/loader/EngineManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ninmods/loader/EngineManager$1;


# direct methods
.method constructor <init>(Lcom/ninmods/loader/EngineManager$1;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    const-string v1, "[+] Root RAM Engine online!"

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    const-string v1, "[+] Dual IPC Sockets (\\0nin_X9K2q & 127.0.0.1:49221) active."

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    const-string v1, "[+] State synced with nin.app"

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$tvStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$tvStatus:Landroid/widget/TextView;

    const-string v1, "Driver Status: ROOT RAM Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$tvStatus:Landroid/widget/TextView;

    const v1, -0xff0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$btnRAM:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$btnRAM:Landroid/widget/Button;

    const-string v1, "ROOT RAM ACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$btnRAM:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$btnRAM:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$btnRT:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$btnRT:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$1$1;->this$0:Lcom/ninmods/loader/EngineManager$1;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$1;->val$btnRT:Landroid/widget/Button;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 99
    :cond_3
    return-void
.end method
