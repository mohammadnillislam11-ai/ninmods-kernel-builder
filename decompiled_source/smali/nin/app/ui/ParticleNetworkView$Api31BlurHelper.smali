.class Lnin/app/ui/ParticleNetworkView$Api31BlurHelper;
.super Ljava/lang/Object;
.source "ParticleNetworkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnin/app/ui/ParticleNetworkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31BlurHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyBlur(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "blurRadiusPx"    # F

    .line 132
    :try_start_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, p1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 134
    return-void
.end method
