.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    }
.end annotation


# instance fields
.field private final boundsPath:Landroid/graphics/Path;

.field private final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field private final cornerTransforms:[Landroid/graphics/Matrix;

.field private edgeIntersectionCheckEnabled:Z

.field private final edgeTransforms:[Landroid/graphics/Matrix;

.field private final overlappedEdgePath:Landroid/graphics/Path;

.field private final pointF:Landroid/graphics/PointF;

.field private final scratch:[F

.field private final scratch2:[F

.field private final shapePath:Lcom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    .line 7
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 11
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 15
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 38
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    .line 40
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 48
    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 50
    new-array v1, v1, [F

    .line 52
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 54
    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_39
    if-ge v1, v0, :cond_59

    .line 60
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 62
    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    .line 64
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 67
    aput-object v3, v2, v1

    .line 69
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 71
    new-instance v3, Landroid/graphics/Matrix;

    .line 73
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    aput-object v3, v2, v1

    .line 78
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 80
    new-instance v3, Landroid/graphics/Matrix;

    .line 82
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    aput-object v3, v2, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_39

    .line 90
    :cond_59
    return-void
.end method

.method private angleOfEdge(I)F
    .registers 2

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    return p1
.end method

.method private appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 3
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 5
    aget-object v1, v1, p2

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput v1, v0, v2

    .line 14
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 16
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 18
    aget-object v1, v1, p2

    .line 20
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x1

    .line 25
    aput v1, v0, v3

    .line 27
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 29
    aget-object v0, v0, p2

    .line 31
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 36
    if-nez p2, :cond_31

    .line 38
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    .line 40
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 42
    aget v2, v1, v2

    .line 44
    aget v1, v1, v3

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    .line 52
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 54
    aget v2, v1, v2

    .line 56
    aget v1, v1, v3

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    :goto_3c
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 63
    aget-object v0, v0, p2

    .line 65
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 67
    aget-object v1, v1, p2

    .line 69
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 74
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 76
    if-eqz p1, :cond_58

    .line 78
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 80
    aget-object v0, v0, p2

    .line 82
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 84
    aget-object v1, v1, p2

    .line 86
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onCornerPathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 89
    :cond_58
    return-void
.end method

.method private appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 11

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    rem-int/lit8 v0, v0, 0x4

    .line 5
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 7
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 9
    aget-object v2, v2, p2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput v2, v1, v3

    .line 18
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 20
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 22
    aget-object v2, v2, p2

    .line 24
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    .line 27
    move-result v2

    .line 28
    const/4 v4, 0x1

    .line 29
    aput v2, v1, v4

    .line 31
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 33
    aget-object v1, v1, p2

    .line 35
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 40
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 42
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 44
    aget-object v2, v2, v0

    .line 46
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    .line 49
    move-result v2

    .line 50
    aput v2, v1, v3

    .line 52
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 54
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 56
    aget-object v2, v2, v0

    .line 58
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    .line 61
    move-result v2

    .line 62
    aput v2, v1, v4

    .line 64
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 66
    aget-object v1, v1, v0

    .line 68
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 70
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 73
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 75
    aget v2, v1, v3

    .line 77
    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 79
    aget v6, v5, v3

    .line 81
    sub-float/2addr v2, v6

    .line 82
    float-to-double v6, v2

    .line 83
    aget v1, v1, v4

    .line 85
    aget v2, v5, v4

    .line 87
    sub-float/2addr v1, v2

    .line 88
    float-to-double v1, v1

    .line 89
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    .line 92
    move-result-wide v1

    .line 93
    double-to-float v1, v1

    .line 94
    const v2, 0x3a83126f  # 0.001f

    .line 97
    sub-float/2addr v1, v2

    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 102
    move-result v1

    .line 103
    iget-object v5, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    .line 105
    invoke-direct {p0, v5, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeCenterForIndex(Landroid/graphics/RectF;I)F

    .line 108
    move-result v5

    .line 109
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 111
    invoke-virtual {v6, v2, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 114
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 116
    invoke-direct {p0, p2, v2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;

    .line 119
    move-result-object v2

    .line 120
    iget v6, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    .line 122
    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 124
    invoke-virtual {v2, v1, v5, v6, v7}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    .line 127
    new-instance v1, Landroid/graphics/Path;

    .line 129
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 132
    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 134
    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 136
    aget-object v6, v6, p2

    .line 138
    invoke-virtual {v5, v6, v1}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 141
    iget-boolean v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 143
    if-eqz v5, :cond_dd

    .line 145
    invoke-virtual {v2}, Lcom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_a2

    .line 151
    invoke-direct {p0, v1, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    .line 154
    move-result v2

    .line 155
    if-nez v2, :cond_a2

    .line 157
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_dd

    .line 163
    :cond_a2
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 165
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 167
    invoke-virtual {v1, v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 170
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 172
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 174
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    .line 177
    move-result v1

    .line 178
    aput v1, v0, v3

    .line 180
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 182
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 184
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    .line 187
    move-result v1

    .line 188
    aput v1, v0, v4

    .line 190
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 192
    aget-object v0, v0, p2

    .line 194
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 196
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 199
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 201
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 203
    aget v2, v1, v3

    .line 205
    aget v1, v1, v4

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 210
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 212
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 214
    aget-object v1, v1, p2

    .line 216
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 221
    goto :goto_e8

    .line 222
    :cond_dd
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 224
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 226
    aget-object v1, v1, p2

    .line 228
    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 233
    :goto_e8
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 235
    if-eqz p1, :cond_f5

    .line 237
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 239
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 241
    aget-object v1, v1, p2

    .line 243
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onEdgePathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 246
    :cond_f5
    return-void
.end method

.method private getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_21

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_19

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_11

    .line 10
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 12
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 14
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 17
    goto :goto_28

    .line 18
    :cond_11
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 20
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 22
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 25
    goto :goto_28

    .line 26
    :cond_19
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 28
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 30
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    goto :goto_28

    .line 34
    :cond_21
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 36
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 38
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 41
    :goto_28
    return-void
.end method

.method private getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_18

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_13

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_e

    .line 10
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_e
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_18

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_13

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_e

    .line 10
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_e
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private getEdgeCenterForIndex(Landroid/graphics/RectF;I)F
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 3
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 5
    aget-object v1, v1, p2

    .line 7
    iget v2, v1, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 9
    const/4 v3, 0x0

    .line 10
    aput v2, v0, v3

    .line 12
    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 14
    const/4 v2, 0x1

    .line 15
    aput v1, v0, v2

    .line 17
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 19
    aget-object v1, v1, p2

    .line 21
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 24
    if-eq p2, v2, :cond_2a

    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p2, v0, :cond_2a

    .line 29
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 32
    move-result p1

    .line 33
    iget-object p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 35
    aget p2, p2, v2

    .line 37
    sub-float/2addr p1, p2

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 46
    move-result p1

    .line 47
    iget-object p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 49
    aget p2, p2, v3

    .line 51
    sub-float/2addr p1, p2

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method private getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_18

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_13

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_e

    .line 10
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_e
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .registers 6

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 8
    aget-object v1, v1, p2

    .line 10
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 12
    aget-object p2, v2, p2

    .line 14
    invoke-virtual {v1, p2, v0}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 29
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3e

    .line 43
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000  # 1.0f

    .line 49
    cmpl-float p1, p1, v0

    .line 51
    if-lez p1, :cond_3d

    .line 53
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 56
    move-result p1

    .line 57
    cmpl-float p1, p1, v0

    .line 59
    if-lez p1, :cond_3d

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    const/4 v1, 0x0

    .line 63
    :cond_3e
    :goto_3e
    return v1
.end method

.method private setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .registers 10

    .line 1
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;

    .line 6
    move-result-object v6

    .line 7
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 9
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;

    .line 12
    move-result-object v1

    .line 13
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 15
    aget-object v2, v0, p2

    .line 17
    iget v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    .line 19
    iget-object v5, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    .line 21
    const/high16 v3, 0x42b40000  # 90.0f

    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/google/android/material/shape/ShapePath;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)V

    .line 26
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 32
    aget-object v1, v1, p2

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 37
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    .line 39
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 41
    invoke-direct {p0, p2, p1, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 44
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 46
    aget-object p1, p1, p2

    .line 48
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 50
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 52
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 54
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 57
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 59
    aget-object p1, p1, p2

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 64
    return-void
.end method

.method private setEdgePathAndTransform(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 3
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 5
    aget-object v1, v1, p1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput v1, v0, v2

    .line 14
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 16
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 18
    aget-object v1, v1, p1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x1

    .line 25
    aput v1, v0, v3

    .line 27
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 29
    aget-object v0, v0, p1

    .line 31
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 42
    aget-object v1, v1, p1

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 47
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 49
    aget-object v1, v1, p1

    .line 51
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 53
    aget v2, v4, v2

    .line 55
    aget v3, v4, v3

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 60
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 62
    aget-object p1, v1, p1

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 67
    return-void
.end method


# virtual methods
.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    return-void
.end method

.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .registers 14

    .line 2
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 6
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_21
    const/4 p3, 0x4

    if-ge p2, p3, :cond_2d

    .line 7
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgePathAndTransform(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    :cond_2d
    :goto_2d
    if-ge p1, p3, :cond_38

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    .line 11
    :cond_38
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 12
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 13
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 14
    iget-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_4f
    return-void
.end method

.method public setEdgeIntersectionCheckEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 3
    return-void
.end method
