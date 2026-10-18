.class Lcom/ninmods/loader/EngineManager$3$1;
.super Ljava/lang/Object;
.source "EngineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninmods/loader/EngineManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ninmods/loader/EngineManager$3;


# direct methods
.method constructor <init>(Lcom/ninmods/loader/EngineManager$3;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    const-string v1, "[+] All engines stopped & unloaded."

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$callback:Lcom/ninmods/loader/EngineManager$OutputCallback;

    const-string v1, "[+] State synced with com.ninmods.menu (OFFLINE)"

    invoke-interface {v0, v1}, Lcom/ninmods/loader/EngineManager$OutputCallback;->onOutput(Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$tvStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$tvStatus:Landroid/widget/TextView;

    const-string v1, "Driver Status: Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$tvStatus:Landroid/widget/TextView;

    const v1, -0xd2ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRT:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRT:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRT:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRT:Landroid/widget/Button;

    const-string v3, "LOAD KERNEL (RT)"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRAM:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRAM:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRAM:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 197
    iget-object v0, p0, Lcom/ninmods/loader/EngineManager$3$1;->this$0:Lcom/ninmods/loader/EngineManager$3;

    iget-object v0, v0, Lcom/ninmods/loader/EngineManager$3;->val$btnRAM:Landroid/widget/Button;

    const-string v1, "LOAD ROOT RAM"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_3
    return-void
.end method
