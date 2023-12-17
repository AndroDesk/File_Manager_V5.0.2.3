.class public Lmiuix/navigation/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNaviCandidateRatio(I)F
    .registers 7

    add-int/lit16 p0, p0, -0x2ee

    int-to-float p0, p0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-gez v0, :cond_1d

    neg-float p0, p0

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const-wide v0, 0x3fdc28f5c28f5c29L  # 0.44

    const-wide v2, -0x406b851eb851eb80L  # -0.020000000000000018

    goto :goto_2e

    :cond_1d
    const/high16 v0, 0x44160000  # 600.0f

    div-float/2addr p0, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const-wide v0, 0x3fd8f5c28f5c28f6L  # 0.39

    const-wide v2, -0x4048f5c28f5c28f4L  # -0.09000000000000002

    :goto_2e
    float-to-double v4, p0

    mul-double/2addr v4, v2

    add-double/2addr v4, v0

    double-to-float p0, v4

    return p0
.end method

.method public static getNaviRatio(Landroid/graphics/Point;)F
    .registers 3

    invoke-static {p0}, Lmiuix/navigation/utils/Utils;->getNaviWidth(Landroid/graphics/Point;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public static getNaviWidth(Landroid/graphics/Point;)I
    .registers 4

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lmiuix/navigation/utils/Utils;->getNaviCandidateRatio(I)F

    move-result v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lmiuix/navigation/utils/Utils;->getNaviCandidateRatio(I)F

    move-result v1

    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    sub-int v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_24

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_24
    return v0
.end method
