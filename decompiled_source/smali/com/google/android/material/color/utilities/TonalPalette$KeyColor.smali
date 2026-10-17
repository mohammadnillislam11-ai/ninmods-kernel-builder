.class final Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;
.super Ljava/lang/Object;
.source "TonalPalette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/TonalPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyColor"
.end annotation


# static fields
.field private static final MAX_CHROMA_VALUE:D = 200.0


# instance fields
.field private final chromaCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final hue:D

.field private final requestedChroma:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "hue"    # D
    .param p3, "requestedChroma"    # D

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    .line 123
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    .line 124
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    .line 125
    return-void
.end method

.method private maxChroma(I)D
    .locals 7
    .param p1, "tone"    # I

    .line 178
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    iget-wide v1, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    int-to-double v5, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 180
    .local v0, "newChroma":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v0    # "newChroma":Ljava/lang/Double;
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public create()Lcom/google/android/material/color/utilities/Hct;
    .locals 20

    .line 136
    move-object/from16 v0, p0

    const/16 v1, 0x32

    .line 137
    .local v1, "pivotTone":I
    const/4 v2, 0x1

    .line 139
    .local v2, "toneStepSize":I
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    .line 143
    .local v3, "epsilon":D
    const/4 v5, 0x0

    .line 144
    .local v5, "lowerTone":I
    const/16 v6, 0x64

    .line 145
    .local v6, "upperTone":I
    :goto_0
    if-ge v5, v6, :cond_6

    .line 146
    add-int v7, v5, v6

    div-int/lit8 v7, v7, 0x2

    .line 147
    .local v7, "midTone":I
    invoke-direct {v0, v7}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->maxChroma(I)D

    move-result-wide v8

    add-int/lit8 v10, v7, 0x1

    invoke-direct {v0, v10}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->maxChroma(I)D

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    cmpg-double v14, v8, v10

    if-gez v14, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 148
    .local v8, "isAscending":Z
    :goto_1
    invoke-direct {v0, v7}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->maxChroma(I)D

    move-result-wide v9

    iget-wide v14, v0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    sub-double v14, v14, v16

    cmpl-double v11, v9, v14

    if-ltz v11, :cond_1

    const/4 v12, 0x1

    .line 150
    .local v12, "sufficientChroma":Z
    :cond_1
    if-eqz v12, :cond_4

    .line 153
    add-int/lit8 v9, v5, -0x32

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v10, v6, -0x32

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 154
    move v6, v7

    move v11, v1

    move/from16 v19, v2

    goto :goto_2

    .line 156
    :cond_2
    if-ne v5, v7, :cond_3

    .line 157
    iget-wide v13, v0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    iget-wide v9, v0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    move v11, v1

    move/from16 v19, v2

    .end local v1    # "pivotTone":I
    .end local v2    # "toneStepSize":I
    .local v11, "pivotTone":I
    .local v19, "toneStepSize":I
    int-to-double v1, v5

    move-wide/from16 v17, v1

    move-wide v15, v9

    invoke-static/range {v13 .. v18}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    return-object v1

    .line 159
    .end local v11    # "pivotTone":I
    .end local v19    # "toneStepSize":I
    .restart local v1    # "pivotTone":I
    .restart local v2    # "toneStepSize":I
    :cond_3
    move v11, v1

    move/from16 v19, v2

    .end local v1    # "pivotTone":I
    .end local v2    # "toneStepSize":I
    .restart local v11    # "pivotTone":I
    .restart local v19    # "toneStepSize":I
    move v1, v7

    move v5, v1

    .end local v5    # "lowerTone":I
    .local v1, "lowerTone":I
    goto :goto_2

    .line 164
    .end local v11    # "pivotTone":I
    .end local v19    # "toneStepSize":I
    .local v1, "pivotTone":I
    .restart local v2    # "toneStepSize":I
    .restart local v5    # "lowerTone":I
    :cond_4
    move v11, v1

    move/from16 v19, v2

    .end local v1    # "pivotTone":I
    .end local v2    # "toneStepSize":I
    .restart local v11    # "pivotTone":I
    .restart local v19    # "toneStepSize":I
    if-eqz v8, :cond_5

    .line 165
    add-int/lit8 v1, v7, 0x1

    move v5, v1

    .end local v5    # "lowerTone":I
    .local v1, "lowerTone":I
    goto :goto_2

    .line 168
    .end local v1    # "lowerTone":I
    .restart local v5    # "lowerTone":I
    :cond_5
    move v1, v7

    move v6, v1

    .line 171
    .end local v7    # "midTone":I
    .end local v8    # "isAscending":Z
    .end local v12    # "sufficientChroma":Z
    :goto_2
    move v1, v11

    move/from16 v2, v19

    goto :goto_0

    .line 173
    .end local v11    # "pivotTone":I
    .end local v19    # "toneStepSize":I
    .local v1, "pivotTone":I
    .restart local v2    # "toneStepSize":I
    :cond_6
    move v11, v1

    .end local v1    # "pivotTone":I
    .restart local v11    # "pivotTone":I
    iget-wide v12, v0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    iget-wide v14, v0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    int-to-double v1, v5

    move-wide/from16 v16, v1

    invoke-static/range {v12 .. v17}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    return-object v1
.end method
