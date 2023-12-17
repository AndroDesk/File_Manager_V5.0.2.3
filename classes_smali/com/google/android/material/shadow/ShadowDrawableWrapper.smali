.class public Lcom/google/android/material/shadow/ShadowDrawableWrapper;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "ShadowDrawableWrapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COS_45:D

.field public static final SHADOW_BOTTOM_SCALE:F = 1.0f

.field public static final SHADOW_HORIZ_SCALE:F = 0.5f

.field public static final SHADOW_MULTIPLIER:F = 1.5f

.field public static final SHADOW_TOP_SCALE:F = 0.25f


# instance fields
.field private addPaddingForCorners:Z

.field public final contentBounds:Landroid/graphics/RectF;

.field public cornerRadius:F

.field public final cornerShadowPaint:Landroid/graphics/Paint;

.field public cornerShadowPath:Landroid/graphics/Path;

.field private dirty:Z

.field public final edgeShadowPaint:Landroid/graphics/Paint;

.field public maxShadowSize:F

.field private printedShadowClipWarning:Z

.field public rawMaxShadowSize:F

.field public rawShadowSize:F

.field private rotation:F

.field private final shadowEndColor:I

.field private final shadowMiddleColor:I

.field public shadowSize:F

.field private final shadowStartColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-wide v0, 0x4046800000000000L  # 45.0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V
    .registers 7

    .line 1
    invoke-direct {p0, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 7
    iput-boolean p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 9
    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    .line 12
    sget v0, Lcom/google/android/material/R$color;->design_fab_shadow_start_color:I

    .line 14
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    .line 20
    sget v0, Lcom/google/android/material/R$color;->design_fab_shadow_mid_color:I

    .line 22
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    .line 28
    sget v0, Lcom/google/android/material/R$color;->design_fab_shadow_end_color:I

    .line 30
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    .line 38
    const/4 v0, 0x5

    .line 39
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 42
    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 44
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 52
    move-result p3

    .line 53
    int-to-float p3, p3

    .line 54
    iput p3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 56
    new-instance p3, Landroid/graphics/RectF;

    .line 58
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 61
    iput-object p3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 63
    new-instance p3, Landroid/graphics/Paint;

    .line 65
    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 68
    iput-object p3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    invoke-virtual {p0, p4, p5}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 76
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 3
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 5
    mul-float/2addr v1, v0

    .line 6
    iget-object v2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 8
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 10
    int-to-float v3, v3

    .line 11
    add-float/2addr v3, v0

    .line 12
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 14
    int-to-float v4, v4

    .line 15
    add-float/2addr v4, v1

    .line 16
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 18
    int-to-float v5, v5

    .line 19
    sub-float/2addr v5, v0

    .line 20
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 22
    int-to-float p1, p1

    .line 23
    sub-float/2addr p1, v1

    .line 24
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 33
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 35
    float-to-int v1, v1

    .line 36
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 38
    float-to-int v2, v2

    .line 39
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 41
    float-to-int v3, v3

    .line 42
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 44
    float-to-int v0, v0

    .line 45
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->buildShadowCorners()V

    .line 51
    return-void
.end method

.method private buildShadowCorners()V
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    .line 5
    iget v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 7
    neg-float v3, v2

    .line 8
    neg-float v4, v2

    .line 9
    invoke-direct {v1, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    .line 14
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 17
    iget v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    .line 19
    neg-float v4, v3

    .line 20
    neg-float v3, v3

    .line 21
    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 24
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 26
    if-nez v3, :cond_23

    .line 28
    new-instance v3, Landroid/graphics/Path;

    .line 30
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 33
    iput-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 39
    :goto_26
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 41
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 43
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 46
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 48
    iget v4, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 50
    neg-float v4, v4

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 57
    iget v4, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    .line 59
    neg-float v4, v4

    .line 60
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 63
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 65
    const/high16 v4, 0x43340000  # 180.0f

    .line 67
    const/high16 v6, 0x42b40000  # 90.0f

    .line 69
    const/4 v7, 0x0

    .line 70
    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 73
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 75
    const/high16 v4, 0x43870000  # 270.0f

    .line 77
    const/high16 v6, -0x3d4c0000  # -90.0f

    .line 79
    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 82
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 84
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 87
    iget v3, v2, Landroid/graphics/RectF;->top:F

    .line 89
    neg-float v11, v3

    .line 90
    cmpl-float v3, v11, v5

    .line 92
    const/4 v4, 0x2

    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v15, 0x3

    .line 95
    if-lez v3, :cond_a2

    .line 97
    iget v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 99
    div-float/2addr v3, v11

    .line 100
    const/high16 v8, 0x3f800000  # 1.0f

    .line 102
    sub-float v9, v8, v3

    .line 104
    const/high16 v10, 0x40000000  # 2.0f

    .line 106
    div-float/2addr v9, v10

    .line 107
    add-float/2addr v9, v3

    .line 108
    iget-object v14, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 110
    new-instance v13, Landroid/graphics/RadialGradient;

    .line 112
    const/4 v12, 0x4

    .line 113
    new-array v10, v12, [I

    .line 115
    aput v7, v10, v7

    .line 117
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    .line 119
    aput v8, v10, v6

    .line 121
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    .line 123
    aput v8, v10, v4

    .line 125
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    .line 127
    aput v8, v10, v15

    .line 129
    new-array v12, v12, [F

    .line 131
    aput v5, v12, v7

    .line 133
    aput v3, v12, v6

    .line 135
    aput v9, v12, v4

    .line 137
    const/high16 v3, 0x3f800000  # 1.0f

    .line 139
    aput v3, v12, v15

    .line 141
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 143
    move-object v8, v13

    .line 144
    const/4 v5, 0x0

    .line 145
    move v9, v5

    .line 146
    move-object/from16 v16, v10

    .line 148
    const/4 v5, 0x0

    .line 149
    move v10, v5

    .line 150
    move-object v5, v12

    .line 151
    move-object/from16 v12, v16

    .line 153
    move-object v4, v13

    .line 154
    move-object v13, v5

    .line 155
    move-object v5, v14

    .line 156
    move-object v14, v3

    .line 157
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 160
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 163
    :cond_a2
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 165
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 167
    const/16 v18, 0x0

    .line 169
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 171
    const/16 v20, 0x0

    .line 173
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 175
    new-array v5, v15, [I

    .line 177
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowStartColor:I

    .line 179
    aput v8, v5, v7

    .line 181
    iget v8, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowMiddleColor:I

    .line 183
    aput v8, v5, v6

    .line 185
    iget v6, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowEndColor:I

    .line 187
    const/4 v8, 0x2

    .line 188
    aput v6, v5, v8

    .line 190
    new-array v6, v15, [F

    .line 192
    fill-array-data v6, :array_da

    .line 195
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 197
    move-object/from16 v17, v4

    .line 199
    move/from16 v19, v1

    .line 201
    move/from16 v21, v2

    .line 203
    move-object/from16 v22, v5

    .line 205
    move-object/from16 v23, v6

    .line 207
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 210
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 213
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 215
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    return-void

    .line 219
    :array_da
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .registers 9

    .line 1
    if-eqz p2, :cond_c

    .line 3
    float-to-double v0, p0

    .line 4
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 6
    sget-wide v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    .line 8
    sub-double/2addr v2, v4

    .line 9
    float-to-double p0, p1

    .line 10
    mul-double/2addr v2, p0

    .line 11
    add-double/2addr v2, v0

    .line 12
    double-to-float p0, v2

    .line 13
    :cond_c
    return p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .registers 9

    .line 1
    const/high16 v0, 0x3fc00000  # 1.5f

    .line 3
    if-eqz p2, :cond_10

    .line 5
    mul-float/2addr p0, v0

    .line 6
    float-to-double v0, p0

    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 9
    sget-wide v4, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->COS_45:D

    .line 11
    sub-double/2addr v2, v4

    .line 12
    float-to-double p0, p1

    .line 13
    mul-double/2addr v2, p0

    .line 14
    add-double/2addr v2, v0

    .line 15
    double-to-float p0, v2

    .line 16
    return p0

    .line 17
    :cond_10
    mul-float/2addr p0, v0

    .line 18
    return p0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    move-result v8

    .line 9
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    .line 11
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 13
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 16
    move-result v2

    .line 17
    iget-object v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 19
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 22
    move-result v3

    .line 23
    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 26
    iget v9, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 28
    neg-float v1, v9

    .line 29
    iget v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    .line 31
    sub-float v10, v1, v2

    .line 33
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 35
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 38
    move-result v1

    .line 39
    const/high16 v2, 0x40000000  # 2.0f

    .line 41
    mul-float v11, v9, v2

    .line 43
    sub-float/2addr v1, v11

    .line 44
    const/4 v2, 0x0

    .line 45
    cmpl-float v1, v1, v2

    .line 47
    const/4 v3, 0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    if-lez v1, :cond_34

    .line 51
    move v12, v3

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v12, v4

    .line 54
    :goto_35
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 56
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 59
    move-result v1

    .line 60
    sub-float/2addr v1, v11

    .line 61
    cmpl-float v1, v1, v2

    .line 63
    if-lez v1, :cond_42

    .line 65
    move v13, v3

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v13, v4

    .line 68
    :goto_43
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    .line 70
    const/high16 v2, 0x3e800000  # 0.25f

    .line 72
    mul-float/2addr v2, v1

    .line 73
    sub-float v2, v1, v2

    .line 75
    const/high16 v3, 0x3f000000  # 0.5f

    .line 77
    mul-float/2addr v3, v1

    .line 78
    sub-float v3, v1, v3

    .line 80
    const/high16 v14, 0x3f800000  # 1.0f

    .line 82
    mul-float v4, v1, v14

    .line 84
    sub-float/2addr v1, v4

    .line 85
    add-float/2addr v3, v9

    .line 86
    div-float v15, v9, v3

    .line 88
    add-float/2addr v2, v9

    .line 89
    div-float v6, v9, v2

    .line 91
    add-float/2addr v1, v9

    .line 92
    div-float v5, v9, v1

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 97
    move-result v4

    .line 98
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 100
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 102
    add-float/2addr v2, v9

    .line 103
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 105
    add-float/2addr v1, v9

    .line 106
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 112
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 114
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    if-eqz v12, :cond_a2

    .line 121
    div-float v1, v14, v15

    .line 123
    invoke-virtual {v7, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 126
    const/4 v2, 0x0

    .line 127
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 129
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 132
    move-result v1

    .line 133
    sub-float v16, v1, v11

    .line 135
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 137
    neg-float v3, v1

    .line 138
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 140
    move-object/from16 v17, v1

    .line 142
    move-object/from16 v1, p1

    .line 144
    move/from16 v18, v3

    .line 146
    move v3, v10

    .line 147
    move v14, v4

    .line 148
    move/from16 v4, v16

    .line 150
    move/from16 v19, v5

    .line 152
    move/from16 v5, v18

    .line 154
    move/from16 v16, v8

    .line 156
    move v8, v6

    .line 157
    move-object/from16 v6, v17

    .line 159
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 162
    goto :goto_a8

    .line 163
    :cond_a2
    move v14, v4

    .line 164
    move/from16 v19, v5

    .line 166
    move/from16 v16, v8

    .line 168
    move v8, v6

    .line 169
    :goto_a8
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    move-result v14

    .line 176
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 178
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 180
    sub-float/2addr v2, v9

    .line 181
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 183
    sub-float/2addr v1, v9

    .line 184
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    move/from16 v6, v19

    .line 189
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 192
    const/high16 v1, 0x43340000  # 180.0f

    .line 194
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 197
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 199
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 201
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 204
    if-eqz v12, :cond_f1

    .line 206
    const/high16 v1, 0x3f800000  # 1.0f

    .line 208
    div-float v2, v1, v15

    .line 210
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 213
    const/4 v2, 0x0

    .line 214
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 216
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 219
    move-result v1

    .line 220
    sub-float v4, v1, v11

    .line 222
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 224
    neg-float v1, v1

    .line 225
    iget v3, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    .line 227
    add-float v5, v1, v3

    .line 229
    iget-object v12, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 231
    move-object/from16 v1, p1

    .line 233
    move v3, v10

    .line 234
    move/from16 v17, v8

    .line 236
    move v8, v6

    .line 237
    move-object v6, v12

    .line 238
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    goto :goto_f4

    .line 242
    :cond_f1
    move/from16 v17, v8

    .line 244
    move v8, v6

    .line 245
    :goto_f4
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    move-result v12

    .line 252
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 254
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 256
    add-float/2addr v2, v9

    .line 257
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 259
    sub-float/2addr v1, v9

    .line 260
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 263
    invoke-virtual {v7, v15, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 266
    const/high16 v1, 0x43870000  # 270.0f

    .line 268
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 271
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 273
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 275
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 278
    if-eqz v13, :cond_132

    .line 280
    const/high16 v1, 0x3f800000  # 1.0f

    .line 282
    div-float v14, v1, v8

    .line 284
    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 287
    const/4 v2, 0x0

    .line 288
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 290
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 293
    move-result v1

    .line 294
    sub-float v4, v1, v11

    .line 296
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 298
    neg-float v5, v1

    .line 299
    iget-object v6, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 301
    move-object/from16 v1, p1

    .line 303
    move v3, v10

    .line 304
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    :cond_132
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    move-result v8

    .line 314
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 316
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 318
    sub-float/2addr v2, v9

    .line 319
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 321
    add-float/2addr v1, v9

    .line 322
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    move/from16 v9, v17

    .line 327
    invoke-virtual {v7, v15, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 330
    const/high16 v1, 0x42b40000  # 90.0f

    .line 332
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 335
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 337
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 339
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 342
    if-eqz v13, :cond_172

    .line 344
    const/high16 v1, 0x3f800000  # 1.0f

    .line 346
    div-float v14, v1, v9

    .line 348
    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 351
    const/4 v2, 0x0

    .line 352
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 354
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 357
    move-result v1

    .line 358
    sub-float v4, v1, v11

    .line 360
    iget v1, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 362
    neg-float v5, v1

    .line 363
    iget-object v6, v0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 365
    move-object/from16 v1, p1

    .line 367
    move v3, v10

    .line 368
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 371
    :cond_172
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 374
    move/from16 v1, v16

    .line 376
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 379
    return-void
.end method

.method private static toEven(F)I
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 4
    move-result p0

    .line 5
    rem-int/lit8 v0, p0, 0x2

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_b

    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 12
    :cond_b
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->buildComponents(Landroid/graphics/Rect;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 15
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->drawShadow(Landroid/graphics/Canvas;)V

    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 21
    return-void
.end method

.method public getCornerRadius()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 3
    return v0
.end method

.method public getMaxShadowSize()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 3
    return v0
.end method

.method public getMinHeight()F
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 3
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 5
    const/high16 v2, 0x3fc00000  # 1.5f

    .line 7
    mul-float v3, v0, v2

    .line 9
    const/high16 v4, 0x40000000  # 2.0f

    .line 11
    div-float/2addr v3, v4

    .line 12
    add-float/2addr v3, v1

    .line 13
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 16
    move-result v0

    .line 17
    mul-float/2addr v0, v4

    .line 18
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 20
    mul-float/2addr v1, v2

    .line 21
    mul-float/2addr v1, v4

    .line 22
    add-float/2addr v1, v0

    .line 23
    return v1
.end method

.method public getMinWidth()F
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 3
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 5
    const/high16 v2, 0x40000000  # 2.0f

    .line 7
    div-float v3, v0, v2

    .line 9
    add-float/2addr v3, v1

    .line 10
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 13
    move-result v0

    .line 14
    mul-float/2addr v0, v2

    .line 15
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 17
    mul-float/2addr v1, v2

    .line 18
    add-float/2addr v1, v0

    .line 19
    return v1
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 3
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 5
    iget-boolean v2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    .line 10
    move-result v0

    .line 11
    float-to-double v0, v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    iget v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 19
    iget v2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 21
    iget-boolean v3, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 23
    invoke-static {v1, v2, v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    .line 26
    move-result v1

    .line 27
    float-to-double v1, v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 31
    move-result-wide v1

    .line 32
    double-to-int v1, v1

    .line 33
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method public getShadowSize()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    .line 3
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 4
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 8
    cmpl-float v0, v0, p1

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->cornerRadius:F

    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    .line 21
    return-void
.end method

.method public setMaxShadowSize(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 6
    return-void
.end method

.method public final setRotation(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rotation:F

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    .line 12
    :cond_b
    return-void
.end method

.method public setShadowSize(F)V
    .registers 3

    .line 13
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    return-void
.end method

.method public setShadowSize(FF)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_42

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_42

    .line 1
    invoke-static {p1}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->toEven(F)I

    move-result p1

    int-to-float p1, p1

    .line 2
    invoke-static {p2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->toEven(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-lez v0, :cond_1f

    .line 3
    iget-boolean p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    if-nez p1, :cond_1e

    .line 4
    iput-boolean v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    :cond_1e
    move p1, p2

    .line 5
    :cond_1f
    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2c

    return-void

    .line 6
    :cond_2c
    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawShadowSize:F

    .line 7
    iput p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v0, 0x3fc00000  # 1.5f

    mul-float/2addr p1, v0

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->shadowSize:F

    .line 9
    iput p2, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->maxShadowSize:F

    .line 10
    iput-boolean v1, p0, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->dirty:Z

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->invalidateSelf()V

    return-void

    .line 12
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid shadow size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
