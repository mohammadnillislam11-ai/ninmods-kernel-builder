.class public Lnin/app/ui/ParticleNetworkView;
.super Landroid/view/View;
.source "ParticleNetworkView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnin/app/ui/ParticleNetworkView$Particle;,
        Lnin/app/ui/ParticleNetworkView$Api31BlurHelper;
    }
.end annotation


# static fields
.field public static final AREA_PER_PARTICLE:F = 55000.0f

.field public static final BG_COLOR:I = -0xf4fcee

.field public static final BLUR_RADIUS_DP:F = 16.0f

.field public static final LINE_STROKE_DP:F = 1.2f

.field public static final LINK_DISTANCE_DP:F = 110.0f

.field public static final MAX_DRAW_LINES:I = 0x78

.field public static final MAX_PARTICLES:I = 0x1a

.field public static final MAX_RADIUS_DP:F = 4.6f

.field public static final MAX_SPEED_DP:F = 0.65f

.field public static final MIN_PARTICLES:I = 0x10

.field public static final MIN_RADIUS_DP:F = 2.4f

.field public static final MIN_SPEED_DP:F = 0.12f


# instance fields
.field private final ambientGlowPaint:Landroid/graphics/Paint;

.field private blurRadiusPx:F

.field private density:F

.field private isRunning:Z

.field private final linePaint:Landroid/graphics/Paint;

.field private lineStrokePx:F

.field private final linesBuffer:[F

.field private linkDistancePx:F

.field private linkDistanceSq:F

.field private maxSpeedPx:F

.field private minSpeedPx:F

.field private particleCount:I

.field private final particlePaints:[Landroid/graphics/Paint;

.field private particles:[Lnin/app/ui/ParticleNetworkView$Particle;

.field private final random:Ljava/util/Random;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->ambientGlowPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linePaint:Landroid/graphics/Paint;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    .line 47
    const/16 v0, 0x1e0

    new-array v0, v0, [F

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->density:F

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    .line 59
    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    .line 60
    iput-boolean v0, p0, Lnin/app/ui/ParticleNetworkView;->isRunning:Z

    .line 62
    new-array v1, v0, [Lnin/app/ui/ParticleNetworkView$Particle;

    iput-object v1, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    .line 63
    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    .line 76
    invoke-direct {p0}, Lnin/app/ui/ParticleNetworkView;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->ambientGlowPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linePaint:Landroid/graphics/Paint;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    .line 47
    const/16 v0, 0x1e0

    new-array v0, v0, [F

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->density:F

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    .line 59
    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    .line 60
    iput-boolean v0, p0, Lnin/app/ui/ParticleNetworkView;->isRunning:Z

    .line 62
    new-array v1, v0, [Lnin/app/ui/ParticleNetworkView$Particle;

    iput-object v1, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    .line 63
    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    .line 81
    invoke-direct {p0}, Lnin/app/ui/ParticleNetworkView;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->ambientGlowPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linePaint:Landroid/graphics/Paint;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    .line 47
    const/16 v0, 0x1e0

    new-array v0, v0, [F

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->density:F

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    .line 59
    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    .line 60
    iput-boolean v0, p0, Lnin/app/ui/ParticleNetworkView;->isRunning:Z

    .line 62
    new-array v1, v0, [Lnin/app/ui/ParticleNetworkView$Particle;

    iput-object v1, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    .line 63
    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    .line 86
    invoke-direct {p0}, Lnin/app/ui/ParticleNetworkView;->init()V

    .line 87
    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 139
    .local v0, "p":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    return-object v0
.end method

.method private init()V
    .locals 6

    .line 90
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->density:F

    .line 91
    const/high16 v1, 0x42dc0000    # 110.0f

    mul-float v1, v1, v0

    iput v1, p0, Lnin/app/ui/ParticleNetworkView;->linkDistancePx:F

    .line 92
    mul-float v1, v1, v1

    iput v1, p0, Lnin/app/ui/ParticleNetworkView;->linkDistanceSq:F

    .line 93
    const v1, 0x3df5c28f    # 0.12f

    mul-float v1, v1, v0

    iput v1, p0, Lnin/app/ui/ParticleNetworkView;->minSpeedPx:F

    .line 94
    const v1, 0x3f266666    # 0.65f

    mul-float v1, v1, v0

    iput v1, p0, Lnin/app/ui/ParticleNetworkView;->maxSpeedPx:F

    .line 95
    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->lineStrokePx:F

    .line 96
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lnin/app/ui/ParticleNetworkView;->density:F

    mul-float v1, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnin/app/ui/ParticleNetworkView;->blurRadiusPx:F

    .line 98
    iget-object v0, p0, Lnin/app/ui/ParticleNetworkView;->ambientGlowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lnin/app/ui/ParticleNetworkView;->lineStrokePx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v0, p0, Lnin/app/ui/ParticleNetworkView;->linePaint:Landroid/graphics/Paint;

    const v1, 0x42f76bf7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    const v1, -0x55089409

    invoke-direct {p0, v1}, Lnin/app/ui/ParticleNetworkView;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 109
    iget-object v0, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    const v1, -0x5519c81a

    invoke-direct {p0, v1}, Lnin/app/ui/ParticleNetworkView;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 111
    iget-object v0, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    const v1, -0x552faf01

    invoke-direct {p0, v1}, Lnin/app/ui/ParticleNetworkView;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lnin/app/ui/ParticleNetworkView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 118
    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->blurRadiusPx:F

    invoke-static {p0, v0}, Lnin/app/ui/ParticleNetworkView$Api31BlurHelper;->applyBlur(Landroid/view/View;F)V

    goto :goto_0

    .line 121
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lnin/app/ui/ParticleNetworkView;->blurRadiusPx:F

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 122
    .local v0, "filter":Landroid/graphics/BlurMaskFilter;
    iget-object v1, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 123
    iget-object v1, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 124
    iget-object v1, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    nop

    .end local v0    # "filter":Landroid/graphics/BlurMaskFilter;
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 127
    :goto_0
    return-void
.end method

.method private initParticles(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 167
    int-to-float v0, p1

    int-to-float v1, p2

    mul-float v0, v0, v1

    .line 168
    .local v0, "area":F
    const v1, 0x4756d800    # 55000.0f

    div-float v1, v0, v1

    float-to-int v1, v1

    .line 169
    .local v1, "count":I
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const/16 v1, 0x10

    .line 170
    :cond_0
    const/16 v2, 0x1a

    if-le v1, v2, :cond_1

    const/16 v1, 0x1a

    .line 172
    :cond_1
    iput v1, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    .line 173
    iget-object v2, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    array-length v2, v2

    if-eq v2, v1, :cond_2

    .line 174
    new-array v2, v1, [Lnin/app/ui/ParticleNetworkView$Particle;

    iput-object v2, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    .line 175
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 176
    iget-object v3, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    new-instance v4, Lnin/app/ui/ParticleNetworkView$Particle;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lnin/app/ui/ParticleNetworkView$Particle;-><init>(Lnin/app/ui/ParticleNetworkView$1;)V

    aput-object v4, v3, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 181
    iget-object v3, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    aget-object v3, v3, v2

    .line 182
    .local v3, "p":Lnin/app/ui/ParticleNetworkView$Particle;
    iget-object v4, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v5, 0x400ccccc    # 2.1999998f

    mul-float v4, v4, v5

    const v5, 0x4019999a    # 2.4f

    add-float/2addr v4, v5

    iget v5, p0, Lnin/app/ui/ParticleNetworkView;->density:F

    mul-float v4, v4, v5

    iput v4, v3, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    .line 183
    iget v4, v3, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    iget-object v5, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    int-to-float v6, p1

    iget v7, v3, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    .line 184
    iget v4, v3, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    iget-object v5, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    int-to-float v6, p2

    iget v7, v3, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    .line 186
    iget v4, p0, Lnin/app/ui/ParticleNetworkView;->minSpeedPx:F

    iget-object v5, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget v6, p0, Lnin/app/ui/ParticleNetworkView;->maxSpeedPx:F

    iget v7, p0, Lnin/app/ui/ParticleNetworkView;->minSpeedPx:F

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 187
    .local v4, "speed":F
    iget-object v5, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v7

    .line 188
    .local v5, "angle":D
    float-to-double v7, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    double-to-float v7, v7

    iput v7, v3, Lnin/app/ui/ParticleNetworkView$Particle;->vx:F

    .line 189
    float-to-double v7, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    double-to-float v7, v7

    iput v7, v3, Lnin/app/ui/ParticleNetworkView$Particle;->vy:F

    .line 190
    iget-object v7, p0, Lnin/app/ui/ParticleNetworkView;->random:Ljava/util/Random;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, v3, Lnin/app/ui/ParticleNetworkView$Particle;->paintIndex:I

    .line 180
    .end local v3    # "p":Lnin/app/ui/ParticleNetworkView$Particle;
    .end local v4    # "speed":F
    .end local v5    # "angle":D
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 192
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private updateParticles()V
    .locals 6

    .line 195
    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    if-lez v0, :cond_6

    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 196
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    if-ge v0, v1, :cond_5

    .line 197
    iget-object v1, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    aget-object v1, v1, v0

    .line 198
    .local v1, "p":Lnin/app/ui/ParticleNetworkView$Particle;
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    iget v3, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vx:F

    add-float/2addr v2, v3

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    .line 199
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    iget v3, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vy:F

    add-float/2addr v2, v3

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    .line 202
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    iget v3, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 203
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    .line 204
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vx:F

    goto :goto_1

    .line 205
    :cond_1
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    iget v4, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    add-float/2addr v2, v4

    iget v4, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    int-to-float v5, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 206
    int-to-float v2, v4

    iget v4, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    sub-float/2addr v2, v4

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    .line 207
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vx:F

    .line 210
    :cond_2
    :goto_1
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    iget v4, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 211
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    .line 212
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vy:F

    goto :goto_2

    .line 213
    :cond_3
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    iget v3, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    add-float/2addr v2, v3

    iget v3, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    int-to-float v4, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 214
    int-to-float v2, v3

    iget v3, v1, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    sub-float/2addr v2, v3

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    .line 215
    iget v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    iput v2, v1, Lnin/app/ui/ParticleNetworkView$Particle;->vy:F

    .line 196
    .end local v1    # "p":Lnin/app/ui/ParticleNetworkView$Particle;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 195
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 284
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 285
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->start()V

    .line 288
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 292
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 293
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->stop()V

    .line 294
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 222
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    if-lez v0, :cond_9

    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    if-lez v0, :cond_9

    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 226
    :cond_0
    const v0, -0xf4fcee

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 229
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    int-to-float v4, v0

    iget v0, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lnin/app/ui/ParticleNetworkView;->ambientGlowPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "lineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    if-ge v1, v2, :cond_5

    .line 234
    iget-object v2, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    aget-object v2, v2, v1

    .line 235
    .local v2, "p1":Lnin/app/ui/ParticleNetworkView$Particle;
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    if-ge v3, v4, :cond_4

    .line 236
    iget-object v4, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    aget-object v4, v4, v3

    .line 237
    .local v4, "p2":Lnin/app/ui/ParticleNetworkView$Particle;
    iget v5, v2, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    iget v6, v4, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    sub-float/2addr v5, v6

    .line 238
    .local v5, "dx":F
    iget v6, p0, Lnin/app/ui/ParticleNetworkView;->linkDistancePx:F

    cmpl-float v7, v5, v6

    if-gtz v7, :cond_3

    neg-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    goto :goto_2

    .line 239
    :cond_1
    iget v6, v2, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    iget v7, v4, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    sub-float/2addr v6, v7

    .line 240
    .local v6, "dy":F
    iget v7, p0, Lnin/app/ui/ParticleNetworkView;->linkDistancePx:F

    cmpl-float v8, v6, v7

    if-gtz v8, :cond_3

    neg-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    goto :goto_2

    .line 242
    :cond_2
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    .line 243
    .local v7, "distSq":F
    iget v8, p0, Lnin/app/ui/ParticleNetworkView;->linkDistanceSq:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_3

    const/16 v8, 0x78

    if-ge v0, v8, :cond_3

    .line 244
    mul-int/lit8 v8, v0, 0x4

    .line 245
    .local v8, "idx":I
    iget-object v9, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    iget v10, v2, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    aput v10, v9, v8

    .line 246
    iget-object v9, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    add-int/lit8 v10, v8, 0x1

    iget v11, v2, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    aput v11, v9, v10

    .line 247
    iget-object v9, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    add-int/lit8 v10, v8, 0x2

    iget v11, v4, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    aput v11, v9, v10

    .line 248
    iget-object v9, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    add-int/lit8 v10, v8, 0x3

    iget v11, v4, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    aput v11, v9, v10

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 235
    .end local v4    # "p2":Lnin/app/ui/ParticleNetworkView$Particle;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v7    # "distSq":F
    .end local v8    # "idx":I
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    .end local v2    # "p1":Lnin/app/ui/ParticleNetworkView$Particle;
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_5
    if-lez v0, :cond_6

    .line 255
    iget-object v1, p0, Lnin/app/ui/ParticleNetworkView;->linesBuffer:[F

    mul-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lnin/app/ui/ParticleNetworkView;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 259
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v2, p0, Lnin/app/ui/ParticleNetworkView;->particleCount:I

    if-ge v1, v2, :cond_7

    .line 260
    iget-object v2, p0, Lnin/app/ui/ParticleNetworkView;->particles:[Lnin/app/ui/ParticleNetworkView$Particle;

    aget-object v2, v2, v1

    .line 261
    .local v2, "p":Lnin/app/ui/ParticleNetworkView$Particle;
    iget v3, v2, Lnin/app/ui/ParticleNetworkView$Particle;->x:F

    iget v4, v2, Lnin/app/ui/ParticleNetworkView$Particle;->y:F

    iget v5, v2, Lnin/app/ui/ParticleNetworkView$Particle;->radiusPx:F

    iget-object v6, p0, Lnin/app/ui/ParticleNetworkView;->particlePaints:[Landroid/graphics/Paint;

    iget v7, v2, Lnin/app/ui/ParticleNetworkView$Particle;->paintIndex:I

    aget-object v6, v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 259
    .end local v2    # "p":Lnin/app/ui/ParticleNetworkView$Particle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 265
    .end local v1    # "i":I
    :cond_7
    iget-boolean v1, p0, Lnin/app/ui/ParticleNetworkView;->isRunning:Z

    if-eqz v1, :cond_8

    .line 266
    invoke-direct {p0}, Lnin/app/ui/ParticleNetworkView;->updateParticles()V

    .line 267
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->postInvalidateOnAnimation()V

    .line 269
    :cond_8
    return-void

    .line 223
    .end local v0    # "lineCount":I
    :cond_9
    :goto_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 147
    iput p1, p0, Lnin/app/ui/ParticleNetworkView;->viewWidth:I

    .line 148
    iput p2, p0, Lnin/app/ui/ParticleNetworkView;->viewHeight:I

    .line 149
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 151
    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 152
    .local v0, "cx":F
    int-to-float v1, p2

    const v2, 0x3ea3d70a    # 0.32f

    mul-float v1, v1, v2

    .line 153
    .local v1, "cy":F
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f266666    # 0.65f

    mul-float v9, v2, v3

    .line 154
    .local v9, "radius":F
    new-instance v10, Landroid/graphics/RadialGradient;

    const v2, 0x12e637e6

    const/4 v3, 0x0

    const v4, 0x2bf76bf7

    filled-new-array {v4, v2, v3}, [I

    move-result-object v6

    const/4 v2, 0x3

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v0

    move v4, v1

    move v5, v9

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 160
    .local v2, "glow":Landroid/graphics/RadialGradient;
    iget-object v3, p0, Lnin/app/ui/ParticleNetworkView;->ambientGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 162
    invoke-direct {p0, p1, p2}, Lnin/app/ui/ParticleNetworkView;->initParticles(II)V

    .line 164
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    .end local v2    # "glow":Landroid/graphics/RadialGradient;
    .end local v9    # "radius":F
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 308
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 309
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->start()V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->stop()V

    .line 314
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 298
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 299
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->start()V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->stop()V

    .line 304
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 272
    iget-boolean v0, p0, Lnin/app/ui/ParticleNetworkView;->isRunning:Z

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnin/app/ui/ParticleNetworkView;->isRunning:Z

    .line 274
    invoke-virtual {p0}, Lnin/app/ui/ParticleNetworkView;->postInvalidateOnAnimation()V

    .line 276
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnin/app/ui/ParticleNetworkView;->isRunning:Z

    .line 280
    return-void
.end method
