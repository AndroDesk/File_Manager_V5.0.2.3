.class public Lcom/google/android/material/shadow/ShadowRenderer;
.super Ljava/lang/Object;
.source "ShadowRenderer.java"


# static fields
.field private static final COLOR_ALPHA_END:I = 0x0

.field private static final COLOR_ALPHA_MIDDLE:I = 0x14

.field private static final COLOR_ALPHA_START:I = 0x44

.field private static final cornerColors:[I

.field private static final cornerPositions:[F

.field private static final edgeColors:[I

.field private static final edgePositions:[F


# instance fields
.field private final cornerShadowPaint:Landroid/graphics/Paint;

.field private final edgeShadowPaint:Landroid/graphics/Paint;

.field private final scratch:Landroid/graphics/Path;

.field private shadowEndColor:I

.field private shadowMiddleColor:I

.field private final shadowPaint:Landroid/graphics/Paint;

.field private shadowStartColor:I

.field private transparentPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [I

    .line 4
    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    .line 6
    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_1a

    .line 11
    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    .line 13
    const/4 v0, 0x4

    .line 14
    new-array v1, v0, [I

    .line 16
    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    .line 18
    new-array v0, v0, [F

    .line 20
    fill-array-data v0, :array_24

    .line 23
    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_1a
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/high16 v0, -0x1000000

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move-object/from16 v2, p3

    .line 7
    move/from16 v1, p4

    .line 9
    move/from16 v4, p6

    .line 11
    const/4 v3, 0x0

    .line 12
    cmpg-float v5, v4, v3

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    if-gez v5, :cond_13

    .line 18
    move v5, v6

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v5, v8

    .line 21
    :goto_14
    iget-object v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    .line 23
    const/4 v10, 0x3

    .line 24
    const/4 v11, 0x2

    .line 25
    if-eqz v5, :cond_2d

    .line 27
    sget-object v12, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    .line 29
    aput v8, v12, v8

    .line 31
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    .line 33
    aput v8, v12, v6

    .line 35
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    .line 37
    aput v8, v12, v11

    .line 39
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 41
    aput v8, v12, v10

    .line 43
    move/from16 v12, p5

    .line 45
    goto :goto_58

    .line 46
    :cond_2d
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 52
    move-result v12

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 56
    move-result v13

    .line 57
    invoke-virtual {v9, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    move/from16 v12, p5

    .line 62
    invoke-virtual {v9, v2, v12, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 65
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 68
    neg-int v13, v1

    .line 69
    int-to-float v13, v13

    .line 70
    invoke-virtual {v2, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 73
    sget-object v13, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    .line 75
    aput v8, v13, v8

    .line 77
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 79
    aput v8, v13, v6

    .line 81
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    .line 83
    aput v8, v13, v11

    .line 85
    iget v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    .line 87
    aput v8, v13, v10

    .line 89
    :goto_58
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    .line 92
    move-result v8

    .line 93
    const/high16 v10, 0x40000000  # 2.0f

    .line 95
    div-float v16, v8, v10

    .line 97
    cmpg-float v3, v16, v3

    .line 99
    if-gtz v3, :cond_65

    .line 101
    return-void

    .line 102
    :cond_65
    int-to-float v1, v1

    .line 103
    div-float v1, v1, v16

    .line 105
    const/high16 v3, 0x3f800000  # 1.0f

    .line 107
    sub-float v1, v3, v1

    .line 109
    sub-float/2addr v3, v1

    .line 110
    div-float/2addr v3, v10

    .line 111
    add-float/2addr v3, v1

    .line 112
    sget-object v18, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    .line 114
    aput v1, v18, v6

    .line 116
    aput v3, v18, v11

    .line 118
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v3, Landroid/graphics/RadialGradient;

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 125
    move-result v14

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 129
    move-result v15

    .line 130
    sget-object v17, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    .line 132
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 134
    move-object v13, v3

    .line 135
    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 138
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 147
    if-nez v5, :cond_9e

    .line 149
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 151
    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 154
    iget-object v1, v0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    .line 156
    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    :cond_9e
    const/4 v5, 0x1

    .line 160
    iget-object v6, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 162
    move-object/from16 v1, p1

    .line 164
    move-object/from16 v2, p3

    .line 166
    move/from16 v3, p5

    .line 168
    move/from16 v4, p6

    .line 170
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 176
    return-void
.end method

.method public drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
    .registers 14

    .line 1
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 3
    int-to-float v1, p4

    .line 4
    add-float/2addr v0, v1

    .line 5
    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 7
    neg-int p4, p4

    .line 8
    int-to-float p4, p4

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p3, v0, p4}, Landroid/graphics/RectF;->offset(FF)V

    .line 13
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    .line 15
    iget p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    .line 17
    const/4 v0, 0x0

    .line 18
    aput p4, v6, v0

    .line 20
    iget p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    .line 22
    const/4 v0, 0x1

    .line 23
    aput p4, v6, v0

    .line 25
    iget p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 27
    const/4 v0, 0x2

    .line 28
    aput p4, v6, v0

    .line 30
    iget-object p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 34
    iget v4, p3, Landroid/graphics/RectF;->left:F

    .line 36
    iget v3, p3, Landroid/graphics/RectF;->top:F

    .line 38
    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    .line 40
    sget-object v7, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    .line 42
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 44
    move-object v1, v0

    .line 45
    move v2, v4

    .line 46
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 49
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 58
    iget-object p2, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    return-void
.end method

.method public getShadowPaint()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    .line 3
    return-object v0
.end method

.method public setShadowColor(I)V
    .registers 3

    .line 1
    const/16 v0, 0x44

    .line 3
    invoke-static {p1, v0}, Lf0/d;->c(II)I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 9
    const/16 v0, 0x14

    .line 11
    invoke-static {p1, v0}, Lf0/d;->c(II)I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0}, Lf0/d;->c(II)I

    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    .line 24
    iget-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    .line 26
    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    return-void
.end method
