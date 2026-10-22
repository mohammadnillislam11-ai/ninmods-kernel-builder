.class final Lnin/app/ui/ParticleNetworkView$Particle;
.super Ljava/lang/Object;
.source "ParticleNetworkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnin/app/ui/ParticleNetworkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Particle"
.end annotation


# instance fields
.field paintIndex:I

.field radiusPx:F

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnin/app/ui/ParticleNetworkView$1;)V
    .locals 0
    .param p1, "x0"    # Lnin/app/ui/ParticleNetworkView$1;

    .line 65
    invoke-direct {p0}, Lnin/app/ui/ParticleNetworkView$Particle;-><init>()V

    return-void
.end method
