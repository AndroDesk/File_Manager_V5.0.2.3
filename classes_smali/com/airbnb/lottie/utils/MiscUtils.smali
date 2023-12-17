.class public Lcom/airbnb/lottie/utils/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field private static pathFromDataCurrentPoint:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 3
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 6
    sput-object v0, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 3
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 5
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 7
    add-float/2addr v1, v2

    .line 8
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 10
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 12
    add-float/2addr p0, p1

    .line 13
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    return-object v0
.end method

.method public static clamp(FFF)F
    .registers 3

    .line 2
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .registers 3

    .line 1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static contains(FFF)Z
    .registers 3

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_a

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static floorDiv(II)I
    .registers 4

    .line 1
    div-int v0, p0, p1

    .line 3
    xor-int v1, p0, p1

    .line 5
    if-ltz v1, :cond_8

    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    rem-int/2addr p0, p1

    .line 11
    if-nez v1, :cond_10

    .line 13
    if-eqz p0, :cond_10

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    :cond_10
    return v0
.end method

.method public static floorMod(FF)I
    .registers 2

    float-to-int p0, p0

    float-to-int p1, p1

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(II)I

    move-result p0

    return p0
.end method

.method private static floorMod(II)I
    .registers 3

    .line 2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorDiv(II)I

    move-result v0

    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    .line 7
    move-result-object v0

    .line 8
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 10
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    sget-object v1, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 17
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 19
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_18
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 33
    if-ge v0, v1, :cond_6a

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 45
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    .line 56
    move-result-object v1

    .line 57
    sget-object v4, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 59
    invoke-virtual {v2, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4e

    .line 65
    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4e

    .line 71
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 73
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 75
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    goto :goto_5e

    .line 79
    :cond_4e
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 81
    iget v6, v2, Landroid/graphics/PointF;->y:F

    .line 83
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 85
    iget v8, v3, Landroid/graphics/PointF;->y:F

    .line 87
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 89
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 91
    move-object v4, p1

    .line 92
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 95
    :goto_5e
    sget-object v2, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 97
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 99
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 101
    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_18

    .line 107
    :cond_6a
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_73

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 116
    :cond_73
    return-void
.end method

.method public static lerp(DDD)D
    .registers 6

    sub-double/2addr p2, p0

    mul-double/2addr p2, p4

    add-double/2addr p2, p0

    return-wide p2
.end method

.method public static lerp(FFF)F
    .registers 3

    invoke-static {p1, p0, p2, p0}, Lf0/e;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static lerp(IIF)I
    .registers 4

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, v0

    float-to-int p0, p2

    return p0
.end method

.method public static resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "Lcom/airbnb/lottie/animation/content/KeyPathElementContent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/airbnb/lottie/animation/content/Content;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_19

    .line 11
    invoke-interface {p4}, Lcom/airbnb/lottie/animation/content/Content;->getName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p4}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_19
    return-void
.end method
