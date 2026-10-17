.class public Landroidx/core/widget/ImageViewCompat;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/ImageViewCompat$Api21Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;

    .line 38
    nop

    .line 39
    invoke-static {p0}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;

    .line 74
    nop

    .line 75
    invoke-static {p0}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 51
    nop

    .line 52
    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    .local v0, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .end local v0    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    nop

    .line 68
    :cond_2
    return-void
.end method

.method public static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 88
    nop

    .line 89
    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 94
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .end local v0    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    nop

    .line 105
    :cond_2
    return-void
.end method
