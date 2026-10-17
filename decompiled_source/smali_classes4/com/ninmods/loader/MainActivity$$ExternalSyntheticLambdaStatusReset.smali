.class public final synthetic Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ninmods/loader/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ninmods/loader/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;->f$0:Lcom/ninmods/loader/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ninmods/loader/MainActivity$$ExternalSyntheticLambdaStatusReset;->f$0:Lcom/ninmods/loader/MainActivity;

    iget-object v0, v0, Lcom/ninmods/loader/MainActivity;->tvDriverStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "Driver Status: Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xff2d01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
