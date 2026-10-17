.class public Landroidx/core/view/ViewStructureCompat;
.super Ljava/lang/Object;
.source "ViewStructureCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewStructureCompat$Api23Impl;
    }
.end annotation


# instance fields
.field private final mWrappedObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/ViewStructure;)V
    .locals 0
    .param p1, "viewStructure"    # Landroid/view/ViewStructure;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static toViewStructureCompat(Landroid/view/ViewStructure;)Landroidx/core/view/ViewStructureCompat;
    .locals 1
    .param p0, "contentCaptureSession"    # Landroid/view/ViewStructure;

    .line 50
    new-instance v0, Landroidx/core/view/ViewStructureCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewStructureCompat;-><init>(Landroid/view/ViewStructure;)V

    return-object v0
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setDimens(IIIIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/ViewStructure;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "scrollX":I
    .end local p4    # "scrollY":I
    .end local p5    # "width":I
    .end local p6    # "height":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "scrollX":I
    .local v5, "scrollY":I
    .local v6, "width":I
    .local v7, "height":I
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setDimens(Landroid/view/ViewStructure;IIIIII)V

    goto :goto_0

    .line 139
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "scrollX":I
    .end local v5    # "scrollY":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    .restart local p1    # "left":I
    .restart local p2    # "top":I
    .restart local p3    # "scrollX":I
    .restart local p4    # "scrollY":I
    .restart local p5    # "width":I
    .restart local p6    # "height":I
    :cond_0
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 143
    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "scrollX":I
    .end local p4    # "scrollY":I
    .end local p5    # "width":I
    .end local p6    # "height":I
    .restart local v2    # "left":I
    .restart local v3    # "top":I
    .restart local v4    # "scrollX":I
    .restart local v5    # "scrollY":I
    .restart local v6    # "width":I
    .restart local v7    # "height":I
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1}, Landroidx/core/view/ViewStructureCompat$Api23Impl;->setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method

.method public toViewStructure()Landroid/view/ViewStructure;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/core/view/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    return-object v0
.end method
