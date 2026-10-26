.class public final synthetic Lcom/ghost/driver/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ghost/driver/loader/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ghost/driver/loader/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ghost/driver/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;->f$0:Lcom/ghost/driver/loader/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ghost/driver/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;->f$0:Lcom/ghost/driver/loader/MainActivity;

    iget-object v1, v0, Lcom/ghost/driver/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string v2, "Driver Status: Inactive"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0xff2d01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, v0, Lcom/ghost/driver/loader/MainActivity;->btnStop:Landroid/widget/Button;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    :cond_1
    return-void
.end method
