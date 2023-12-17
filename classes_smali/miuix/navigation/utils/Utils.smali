.class public Lmiuix/navigation/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNaviCandidateRatio(I)F
    .registers 7

    .line 1
    add-int/lit16 p0, p0, -0x2ee

    .line 3
    int-to-float p0, p0

    .line 4
    const/4 v0, 0x0

    .line 5
    cmpg-float v0, p0, v0

    .line 7
    const/high16 v1, 0x3f800000  # 1.0f

    .line 9
    if-gez v0, :cond_1d

    .line 11
    neg-float p0, p0

    .line 12
    const/high16 v0, 0x42c80000  # 100.0f

    .line 14
    div-float/2addr p0, v0

    .line 15
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result p0

    .line 19
    const-wide v0, 0x3fdc28f5c28f5c29L  # 0.44

    .line 24
    const-wide v2, -0x406b851eb851eb80L  # -0.020000000000000018

    .line 29
    goto :goto_2e

    .line 30
    :cond_1d
    const/high16 v0, 0x44160000  # 600.0f

    .line 32
    div-float/2addr p0, v0

    .line 33
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 36
    move-result p0

    .line 37
    const-wide v0, 0x3fd8f5c28f5c28f6L  # 0.39

    .line 42
    const-wide v2, -0x4048f5c28f5c28f4L  # -0.09000000000000002

    .line 47
    :goto_2e
    float-to-double v4, p0

    .line 48
    mul-double/2addr v4, v2

    .line 49
    add-double/2addr v4, v0

    .line 50
    double-to-float p0, v4

    .line 51
    return p0
.end method

.method public static getNaviRatio(Landroid/graphics/Point;)F
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/navigation/utils/Utils;->getNaviWidth(Landroid/graphics/Point;)I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f800000  # 1.0f

    .line 8
    mul-float/2addr v0, v1

    .line 9
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 11
    int-to-float p0, p0

    .line 12
    div-float/2addr v0, p0

    .line 13
    return v0
.end method

.method public static getNaviWidth(Landroid/graphics/Point;)I
    .registers 4

    .line 1
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 3
    invoke-static {v0}, Lmiuix/navigation/utils/Utils;->getNaviCandidateRatio(I)F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/graphics/Point;->y:I

    .line 9
    invoke-static {v1}, Lmiuix/navigation/utils/Utils;->getNaviCandidateRatio(I)F

    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroid/graphics/Point;->x:I

    .line 15
    int-to-float v2, v2

    .line 16
    mul-float/2addr v2, v0

    .line 17
    float-to-int v0, v2

    .line 18
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 20
    int-to-float p0, p0

    .line 21
    mul-float/2addr p0, v1

    .line 22
    float-to-int p0, p0

    .line 23
    sub-int v1, v0, p0

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 28
    move-result v1

    .line 29
    const/16 v2, 0x14

    .line 31
    if-ge v1, v2, :cond_24

    .line 33
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result v0

    .line 37
    :cond_24
    return v0
.end method
