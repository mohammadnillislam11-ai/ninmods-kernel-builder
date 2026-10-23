.class Lcom/ninmods/loader/EngineManager$2$1;
.super Ljava/lang/Object;
.source "EngineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninmods/loader/EngineManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ninmods/loader/EngineManager$2;


# direct methods
.method constructor <init>(Lcom/ninmods/loader/EngineManager$2;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    const-string v1, "[+] Kernel RT Driver active & node synced!"

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    const-string v1, "[+] State synced with com.ninmods.main"

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$tvStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$tvStatus:Landroid/widget/TextView;

    const-string v1, "Driver Status: KERNEL RT Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$tvStatus:Landroid/widget/TextView;

    const v1, -0xff0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$btnRT:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$btnRT:Landroid/widget/Button;

    const-string v1, "KERNEL RT ACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$btnRT:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$btnRT:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$btnRAM:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$btnRAM:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$2$1;->this$0:Lcom/ninmods/loader/EngineManager$2;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$2;->val$btnRAM:Landroid/widget/Button;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 151
    :cond_3
    return-void
.end method
