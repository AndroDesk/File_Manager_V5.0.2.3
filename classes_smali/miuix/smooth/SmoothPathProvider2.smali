.class public Lmiuix/smooth/SmoothPathProvider2;
.super Ljava/lang/Object;
.source "SmoothPathProvider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothPathProvider2$SmoothData;,
        Lmiuix/smooth/SmoothPathProvider2$CornerData;
    }
.end annotation


# static fields
.field private static final DEFAULT_KSI:F = 0.46f

.field private static final DEFAULT_SMOOTH:F = 0.8f


# instance fields
.field private mKsi:F

.field private mSmooth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x3f4ccccd  # 0.8f

    .line 7
    iput v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mSmooth:F

    .line 9
    const v0, 0x3eeb851f  # 0.46f

    .line 12
    iput v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mKsi:F

    .line 14
    return-void
.end method

.method public static synthetic access$000(FFDF)D
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider2;->smoothForWidth(FFDF)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$100(FFDF)D
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider2;->smoothForHeight(FFDF)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1000(DD)D
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->yForWidth(DD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1100(DD)D
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->kForHeight(DD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1200(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->mForHeight(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1300(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->nForHeight(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1400(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->pForHeight(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1500(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->xForHeight(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$1600(DD)D
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->yForHeight(DD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$200(D)D
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider2;->thetaForWidth(D)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$300(D)D
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider2;->thetaForHeight(D)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$400(D)D
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$500(DD)D
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->kForWidth(DD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$600(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->mForWidth(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$700(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->nForWidth(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$800(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->pForWidth(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$900(FD)D
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->xForWidth(FD)D

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private ensureFourCornerData(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 7
    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    .line 10
    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 12
    :cond_b
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 14
    if-nez v0, :cond_16

    .line 16
    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 18
    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    .line 21
    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 23
    :cond_16
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 25
    if-nez v0, :cond_21

    .line 27
    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 29
    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    .line 32
    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 34
    :cond_21
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 36
    if-nez v0, :cond_2c

    .line 38
    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 40
    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    .line 43
    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 45
    :cond_2c
    return-void
.end method

.method private isFourCornerDataValid(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Z
    .registers 3

    .line 1
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 11
    if-eqz v0, :cond_13

    .line 13
    iget-object p1, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 15
    if-nez p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    return p1
.end method

.method private static isHeightCollapsed(FFFDF)Z
    .registers 10

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p3, p0

    cmpg-double p0, v0, p3

    if-gtz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static isWidthCollapsed(FFFDF)Z
    .registers 10

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p3, p0

    cmpg-double p0, v0, p3

    if-gtz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static kForHeight(DD)D
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmpl-double v2, p2, v0

    .line 5
    if-nez v2, :cond_7

    .line 7
    return-wide v0

    .line 8
    :cond_7
    const-wide v0, 0x3fdd70a3e0000000L  # 0.46000000834465027

    .line 13
    mul-double/2addr p0, v0

    .line 14
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    .line 16
    div-double v2, p2, v0

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 21
    move-result-wide v4

    .line 22
    add-double/2addr v4, p0

    .line 23
    mul-double/2addr v4, v0

    .line 24
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 27
    move-result-wide p0

    .line 28
    const-wide/high16 p2, 0x3ff0000000000000L  # 1.0

    .line 30
    add-double/2addr p0, p2

    .line 31
    mul-double/2addr p0, v4

    .line 32
    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 37
    move-result-wide v2

    .line 38
    mul-double/2addr v2, v0

    .line 39
    div-double/2addr p0, v2

    .line 40
    sub-double/2addr p0, p2

    .line 41
    return-wide p0
.end method

.method private static kForWidth(DD)D
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmpl-double v2, p2, v0

    .line 5
    if-nez v2, :cond_7

    .line 7
    return-wide v0

    .line 8
    :cond_7
    const-wide v0, 0x3fdd70a3e0000000L  # 0.46000000834465027

    .line 13
    mul-double/2addr p0, v0

    .line 14
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    .line 16
    div-double v2, p2, v0

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 21
    move-result-wide v4

    .line 22
    add-double/2addr v4, p0

    .line 23
    mul-double/2addr v4, v0

    .line 24
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 27
    move-result-wide p0

    .line 28
    const-wide/high16 p2, 0x3ff0000000000000L  # 1.0

    .line 30
    add-double/2addr p0, p2

    .line 31
    mul-double/2addr p0, v4

    .line 32
    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 37
    move-result-wide v2

    .line 38
    mul-double/2addr v2, v0

    .line 39
    div-double/2addr p0, v2

    .line 40
    sub-double/2addr p0, p2

    .line 41
    return-wide p0
.end method

.method private static mForHeight(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v2, v0

    .line 10
    return-wide v2
.end method

.method private static mForWidth(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v2, v0

    .line 10
    return-wide v2
.end method

.method private static nForHeight(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v2, v0

    .line 10
    return-wide v2
.end method

.method private static nForWidth(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v2, v0

    .line 10
    return-wide v2
.end method

.method private static pForHeight(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 4
    div-double/2addr p1, v2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    .line 8
    move-result-wide p0

    .line 9
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 11
    sub-double/2addr v2, p0

    .line 12
    mul-double/2addr v2, v0

    .line 13
    return-wide v2
.end method

.method private static pForWidth(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 4
    div-double/2addr p1, v2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    .line 8
    move-result-wide p0

    .line 9
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 11
    sub-double/2addr v2, p0

    .line 12
    mul-double/2addr v2, v0

    .line 13
    return-wide v2
.end method

.method private static radToAngle(D)D
    .registers 4

    const-wide v0, 0x4066800000000000L  # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static smoothForHeight(FFDF)D
    .registers 11

    .line 1
    move v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move v5, p4

    .line 6
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1e

    .line 12
    const/high16 p2, 0x40000000  # 2.0f

    .line 14
    mul-float/2addr p1, p2

    .line 15
    div-float/2addr p0, p1

    .line 16
    const/high16 p1, 0x3f800000  # 1.0f

    .line 18
    sub-float/2addr p0, p1

    .line 19
    div-float/2addr p0, p4

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result p0

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result p0

    .line 29
    float-to-double p0, p0

    .line 30
    return-wide p0

    .line 31
    :cond_1e
    return-wide p2
.end method

.method private static smoothForWidth(FFDF)D
    .registers 11

    .line 1
    move v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move v5, p4

    .line 6
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1e

    .line 12
    const/high16 p2, 0x40000000  # 2.0f

    .line 14
    mul-float/2addr p1, p2

    .line 15
    div-float/2addr p0, p1

    .line 16
    const/high16 p1, 0x3f800000  # 1.0f

    .line 18
    sub-float/2addr p0, p1

    .line 19
    div-float/2addr p0, p4

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result p0

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result p0

    .line 29
    float-to-double p0, p0

    .line 30
    return-wide p0

    .line 31
    :cond_1e
    return-wide p2
.end method

.method private static thetaForHeight(D)D
    .registers 4

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static thetaForWidth(D)D
    .registers 4

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static xForHeight(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    .line 4
    mul-double/2addr v0, v2

    .line 5
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 7
    div-double v2, p1, v2

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 12
    move-result-wide v2

    .line 13
    mul-double/2addr v2, v0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 17
    move-result-wide p0

    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 20
    add-double/2addr p0, v0

    .line 21
    div-double/2addr v2, p0

    .line 22
    return-wide v2
.end method

.method private static xForWidth(FD)D
    .registers 7

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    .line 4
    mul-double/2addr v0, v2

    .line 5
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 7
    div-double v2, p1, v2

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 12
    move-result-wide v2

    .line 13
    mul-double/2addr v2, v0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 17
    move-result-wide p0

    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 20
    add-double/2addr p0, v0

    .line 21
    div-double/2addr v2, p0

    .line 22
    return-wide v2
.end method

.method private static yForHeight(DD)D
    .registers 4

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static yForWidth(DD)D
    .registers 4

    mul-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public buildSmoothData(Landroid/graphics/RectF;F)Lmiuix/smooth/SmoothPathProvider2$SmoothData;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    move-result-object p1

    return-object p1
.end method

.method public buildSmoothData(Landroid/graphics/RectF;FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;
    .registers 7

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 2
    invoke-virtual {p0, p1, v0, p3, p4}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    move-result-object p1

    return-object p1
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[F)Lmiuix/smooth/SmoothPathProvider2$SmoothData;
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    move-result-object p1

    return-object p1
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;
    .registers 25

    move-object/from16 v0, p2

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider2;->getKsi()F

    move-result v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider2;->getSmooth()F

    move-result v1

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 8
    new-instance v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    float-to-double v12, v1

    move-object v1, v11

    move v2, v7

    move v3, v8

    move-wide v4, v12

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider2$SmoothData;-><init>(FFDF)V

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 9
    fill-array-data v2, :array_ee

    const/4 v3, 0x0

    move v4, v3

    .line 10
    :goto_2a
    array-length v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_40

    .line 11
    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 12
    aget v5, v0, v4

    aput v5, v2, v4

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_40
    aget v0, v2, v3

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v4, v2, v4

    const/4 v5, 0x4

    aget v5, v2, v5

    const/4 v6, 0x5

    aget v6, v2, v6

    const/4 v9, 0x6

    aget v9, v2, v9

    const/4 v14, 0x7

    aget v2, v2, v14

    add-float v14, v0, v3

    cmpl-float v14, v14, v7

    if-lez v14, :cond_68

    mul-float v14, v7, v0

    add-float v15, v0, v3

    div-float/2addr v14, v15

    mul-float v15, v7, v3

    add-float/2addr v0, v3

    div-float v3, v15, v0

    move v0, v14

    :cond_68
    move v14, v3

    add-float v3, v4, v6

    cmpl-float v3, v3, v8

    if-lez v3, :cond_7b

    mul-float v3, v8, v4

    add-float v15, v4, v6

    div-float/2addr v3, v15

    mul-float v15, v8, v6

    add-float/2addr v4, v6

    div-float v6, v15, v4

    move v15, v3

    goto :goto_7c

    :cond_7b
    move v15, v4

    :goto_7c
    add-float v3, v5, v9

    cmpl-float v3, v3, v7

    if-lez v3, :cond_8e

    mul-float v3, v7, v5

    add-float v4, v5, v9

    div-float/2addr v3, v4

    mul-float/2addr v7, v9

    add-float/2addr v5, v9

    div-float v9, v7, v5

    move v7, v9

    move v9, v3

    goto :goto_90

    :cond_8e
    move v7, v9

    move v9, v5

    :goto_90
    add-float v3, v2, v1

    cmpl-float v3, v3, v8

    if-lez v3, :cond_a3

    mul-float v3, v8, v2

    add-float v4, v2, v1

    div-float/2addr v3, v4

    mul-float/2addr v8, v1

    add-float/2addr v2, v1

    div-float v1, v8, v2

    move-object/from16 v5, p0

    move v8, v3

    goto :goto_a6

    :cond_a3
    move-object/from16 v5, p0

    move v8, v2

    .line 13
    :goto_a6
    invoke-direct {v5, v11}, Lmiuix/smooth/SmoothPathProvider2;->ensureFourCornerData(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)V

    .line 14
    iget-object v2, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/16 v16, 0x0

    move-object v1, v2

    move v2, v0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move v0, v6

    move/from16 v17, v7

    move-wide v6, v12

    move/from16 v18, v8

    move v8, v10

    move/from16 v19, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 15
    iget-object v1, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 16
    iget-object v1, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    move/from16 v3, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 17
    iget-object v1, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    move/from16 v9, v17

    move/from16 v2, v18

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x3

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    return-object v11

    :array_ee
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lmiuix/smooth/SmoothPathProvider2$SmoothData;III)V
    .registers 34

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    if-nez v8, :cond_f

    return-void

    :cond_f
    move-object/from16 v12, p0

    .line 1
    invoke-direct {v12, v8}, Lmiuix/smooth/SmoothPathProvider2;->isFourCornerDataValid(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    iget v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget v2, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 4
    :cond_28
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    .line 5
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    add-double/2addr v4, v2

    .line 7
    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v14, 0x0

    aget-object v1, v1, v14

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v13, Landroid/graphics/PointF;->x:F

    .line 10
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v13, Landroid/graphics/PointF;->y:F

    .line 11
    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    const-wide/16 v15, 0x0

    cmpl-double v0, v0, v15

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x3

    if-eqz v0, :cond_b1

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 13
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v15

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 15
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 18
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 19
    :cond_b1
    iget v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v2, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v3, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v5, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v23, v3

    move/from16 v25, v5

    invoke-static/range {v20 .. v25}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 20
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 23
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 24
    :cond_f5
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_146

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 26
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 27
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v15

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 28
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 30
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 31
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 32
    :cond_146
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v2, 0x4012d97c7f3321d2L  # 4.71238898038469

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    add-double/2addr v4, v2

    .line 34
    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    .line 35
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 36
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v14

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v13, Landroid/graphics/PointF;->x:F

    .line 37
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v13, Landroid/graphics/PointF;->y:F

    .line 38
    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1c3

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 40
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v15

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 42
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 45
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 46
    :cond_1c3
    iget v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v2, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v3, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v5, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v23, v3

    move/from16 v25, v5

    invoke-static/range {v20 .. v25}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_207

    .line 47
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 50
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 51
    :cond_207
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_258

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 53
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v15

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 55
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 57
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 58
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 59
    :cond_258
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v2, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    .line 61
    invoke-static {v2, v3}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v14

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v13, Landroid/graphics/PointF;->x:F

    .line 64
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v13, Landroid/graphics/PointF;->y:F

    .line 65
    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2cf

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 67
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v15

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 69
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 72
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 73
    :cond_2cf
    iget v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v2, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v3, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v5, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v23, v3

    move/from16 v25, v5

    invoke-static/range {v20 .. v25}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_313

    .line 74
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 77
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 78
    :cond_313
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_364

    .line 79
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 80
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v15

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 85
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 86
    :cond_364
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v2, 0x3ff921fb54442d18L  # 1.5707963267948966

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    add-double/2addr v4, v2

    .line 88
    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v14

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v13, Landroid/graphics/PointF;->x:F

    .line 91
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v13, Landroid/graphics/PointF;->y:F

    .line 92
    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3e1

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 94
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 95
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v10

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 96
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 99
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 100
    :cond_3e1
    iget v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v2, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v3, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v5, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v20, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v23, v3

    move/from16 v25, v5

    invoke-static/range {v20 .. v25}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_425

    .line 101
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 104
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 105
    :cond_425
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_476

    .line 106
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 107
    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v2, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object v1, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v18

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v4, v1, v17

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v1, v1, v19

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v25, v9

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 109
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 111
    iget-object v0, v8, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v19

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 112
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v13, Landroid/graphics/PointF;->y:F

    :cond_476
    return-void
.end method

.method public getKsi()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mKsi:F

    .line 3
    return v0
.end method

.method public getSmooth()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mSmooth:F

    .line 3
    return v0
.end method

.method public getSmoothPath(Landroid/graphics/Path;Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Landroid/graphics/Path;
    .registers 27

    .line 1
    move-object/from16 v0, p2

    .line 3
    if-nez p1, :cond_a

    .line 5
    new-instance v1, Landroid/graphics/Path;

    .line 7
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    move-object/from16 v1, p1

    .line 13
    :goto_c
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 16
    if-nez v0, :cond_12

    .line 18
    return-object v1

    .line 19
    :cond_12
    move-object/from16 v9, p0

    .line 21
    invoke-direct {v9, v0}, Lmiuix/smooth/SmoothPathProvider2;->isFourCornerDataValid(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Z

    .line 24
    move-result v2

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v2, :cond_2a

    .line 28
    new-instance v2, Landroid/graphics/RectF;

    .line 30
    iget v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    .line 32
    iget v0, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    .line 34
    invoke-direct {v2, v10, v10, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 37
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 39
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 42
    return-object v1

    .line 43
    :cond_2a
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 45
    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 47
    cmpl-float v3, v3, v10

    .line 49
    const/4 v11, 0x0

    .line 50
    if-eqz v3, :cond_4a

    .line 52
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    .line 54
    const-wide v4, 0x400921fb54442d18L  # Math.PI

    .line 59
    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    .line 61
    add-double/2addr v6, v4

    .line 62
    invoke-static {v6, v7}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    .line 65
    move-result-wide v4

    .line 66
    double-to-float v2, v4

    .line 67
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 69
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 71
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 74
    goto :goto_55

    .line 75
    :cond_4a
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 77
    aget-object v2, v2, v11

    .line 79
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 81
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 83
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    :goto_55
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 88
    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    .line 90
    const-wide/16 v12, 0x0

    .line 92
    cmpl-double v3, v3, v12

    .line 94
    const/4 v14, 0x3

    .line 95
    const/4 v15, 0x2

    .line 96
    const/16 v16, 0x1

    .line 98
    if-eqz v3, :cond_84

    .line 100
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 102
    aget-object v3, v2, v16

    .line 104
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 106
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 108
    aget-object v3, v2, v15

    .line 110
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 112
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 114
    aget-object v2, v2, v14

    .line 116
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 118
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 120
    move-object v2, v1

    .line 121
    move/from16 v17, v3

    .line 123
    move v3, v4

    .line 124
    move v4, v5

    .line 125
    move v5, v6

    .line 126
    move v6, v7

    .line 127
    move v7, v8

    .line 128
    move/from16 v8, v17

    .line 130
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 133
    :cond_84
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    .line 135
    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 137
    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 139
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 141
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 143
    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    .line 145
    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    .line 147
    move/from16 v18, v2

    .line 149
    move/from16 v19, v3

    .line 151
    move/from16 v20, v4

    .line 153
    move-wide/from16 v21, v5

    .line 155
    move/from16 v23, v7

    .line 157
    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_af

    .line 163
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 165
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 167
    aget-object v2, v2, v11

    .line 169
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 171
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 173
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    :cond_af
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 178
    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    .line 180
    cmpl-double v3, v3, v12

    .line 182
    if-eqz v3, :cond_d8

    .line 184
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 186
    aget-object v3, v2, v16

    .line 188
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 190
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 192
    aget-object v3, v2, v15

    .line 194
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 196
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 198
    aget-object v2, v2, v14

    .line 200
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 202
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 204
    move-object v2, v1

    .line 205
    move/from16 v17, v3

    .line 207
    move v3, v4

    .line 208
    move v4, v5

    .line 209
    move v5, v6

    .line 210
    move v6, v7

    .line 211
    move v7, v8

    .line 212
    move/from16 v8, v17

    .line 214
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 217
    :cond_d8
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 219
    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 221
    cmpl-float v3, v3, v10

    .line 223
    if-eqz v3, :cond_f6

    .line 225
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    .line 227
    const-wide v4, 0x4012d97c7f3321d2L  # 4.71238898038469

    .line 232
    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    .line 234
    add-double/2addr v6, v4

    .line 235
    invoke-static {v6, v7}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    .line 238
    move-result-wide v4

    .line 239
    double-to-float v2, v4

    .line 240
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 242
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 244
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 247
    :cond_f6
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 249
    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    .line 251
    cmpl-double v3, v3, v12

    .line 253
    if-eqz v3, :cond_11f

    .line 255
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 257
    aget-object v3, v2, v16

    .line 259
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 261
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 263
    aget-object v3, v2, v15

    .line 265
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 267
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 269
    aget-object v2, v2, v14

    .line 271
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 273
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 275
    move-object v2, v1

    .line 276
    move/from16 v17, v3

    .line 278
    move v3, v4

    .line 279
    move v4, v5

    .line 280
    move v5, v6

    .line 281
    move v6, v7

    .line 282
    move v7, v8

    .line 283
    move/from16 v8, v17

    .line 285
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 288
    :cond_11f
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    .line 290
    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 292
    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 294
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 296
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 298
    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    .line 300
    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    .line 302
    move/from16 v18, v2

    .line 304
    move/from16 v19, v3

    .line 306
    move/from16 v20, v4

    .line 308
    move-wide/from16 v21, v5

    .line 310
    move/from16 v23, v7

    .line 312
    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    .line 315
    move-result v2

    .line 316
    if-nez v2, :cond_14a

    .line 318
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 320
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 322
    aget-object v2, v2, v11

    .line 324
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 326
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 328
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    :cond_14a
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 333
    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    .line 335
    cmpl-double v3, v3, v12

    .line 337
    if-eqz v3, :cond_173

    .line 339
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 341
    aget-object v3, v2, v16

    .line 343
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 345
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 347
    aget-object v3, v2, v15

    .line 349
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 351
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 353
    aget-object v2, v2, v14

    .line 355
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 357
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 359
    move-object v2, v1

    .line 360
    move/from16 v17, v3

    .line 362
    move v3, v4

    .line 363
    move v4, v5

    .line 364
    move v5, v6

    .line 365
    move v6, v7

    .line 366
    move v7, v8

    .line 367
    move/from16 v8, v17

    .line 369
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 372
    :cond_173
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 374
    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 376
    cmpl-float v3, v3, v10

    .line 378
    if-eqz v3, :cond_18b

    .line 380
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    .line 382
    iget-wide v4, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    .line 384
    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    .line 387
    move-result-wide v4

    .line 388
    double-to-float v2, v4

    .line 389
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 391
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 393
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 396
    :cond_18b
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 398
    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    .line 400
    cmpl-double v3, v3, v12

    .line 402
    if-eqz v3, :cond_1b4

    .line 404
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 406
    aget-object v3, v2, v16

    .line 408
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 410
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 412
    aget-object v3, v2, v15

    .line 414
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 416
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 418
    aget-object v2, v2, v14

    .line 420
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 422
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 424
    move-object v2, v1

    .line 425
    move/from16 v17, v3

    .line 427
    move v3, v4

    .line 428
    move v4, v5

    .line 429
    move v5, v6

    .line 430
    move v6, v7

    .line 431
    move v7, v8

    .line 432
    move/from16 v8, v17

    .line 434
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 437
    :cond_1b4
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    .line 439
    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 441
    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 443
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 445
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 447
    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    .line 449
    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    .line 451
    move/from16 v18, v2

    .line 453
    move/from16 v19, v3

    .line 455
    move/from16 v20, v4

    .line 457
    move-wide/from16 v21, v5

    .line 459
    move/from16 v23, v7

    .line 461
    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    .line 464
    move-result v2

    .line 465
    if-nez v2, :cond_1df

    .line 467
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 469
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 471
    aget-object v2, v2, v11

    .line 473
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 475
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 477
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 480
    :cond_1df
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 482
    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    .line 484
    cmpl-double v3, v3, v12

    .line 486
    if-eqz v3, :cond_208

    .line 488
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    .line 490
    aget-object v3, v2, v16

    .line 492
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 494
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 496
    aget-object v3, v2, v15

    .line 498
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 500
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 502
    aget-object v2, v2, v14

    .line 504
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 506
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 508
    move-object v2, v1

    .line 509
    move/from16 v17, v3

    .line 511
    move v3, v4

    .line 512
    move v4, v5

    .line 513
    move v5, v6

    .line 514
    move v6, v7

    .line 515
    move v7, v8

    .line 516
    move/from16 v8, v17

    .line 518
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 521
    :cond_208
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 523
    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 525
    cmpl-float v3, v3, v10

    .line 527
    if-eqz v3, :cond_226

    .line 529
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    .line 531
    const-wide v4, 0x3ff921fb54442d18L  # 1.5707963267948966

    .line 536
    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    .line 538
    add-double/2addr v6, v4

    .line 539
    invoke-static {v6, v7}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    .line 542
    move-result-wide v4

    .line 543
    double-to-float v2, v4

    .line 544
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 546
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 548
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 551
    :cond_226
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 553
    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    .line 555
    cmpl-double v3, v3, v12

    .line 557
    if-eqz v3, :cond_24c

    .line 559
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 561
    aget-object v3, v2, v16

    .line 563
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 565
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 567
    aget-object v3, v2, v15

    .line 569
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 571
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 573
    aget-object v2, v2, v14

    .line 575
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 577
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 579
    move-object v2, v1

    .line 580
    move v3, v4

    .line 581
    move v4, v5

    .line 582
    move v5, v6

    .line 583
    move v6, v7

    .line 584
    move v7, v8

    .line 585
    move v8, v10

    .line 586
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 589
    :cond_24c
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    .line 591
    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 593
    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 595
    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 597
    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    .line 599
    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    .line 601
    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    .line 603
    move/from16 v17, v2

    .line 605
    move/from16 v18, v3

    .line 607
    move/from16 v19, v4

    .line 609
    move-wide/from16 v20, v5

    .line 611
    move/from16 v22, v7

    .line 613
    invoke-static/range {v17 .. v22}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    .line 616
    move-result v2

    .line 617
    if-nez v2, :cond_277

    .line 619
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 621
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 623
    aget-object v2, v2, v11

    .line 625
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 627
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 629
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 632
    :cond_277
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 634
    iget-wide v2, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    .line 636
    cmpl-double v2, v2, v12

    .line 638
    if-eqz v2, :cond_297

    .line 640
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    .line 642
    aget-object v2, v0, v16

    .line 644
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 646
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 648
    aget-object v2, v0, v15

    .line 650
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 652
    iget v6, v2, Landroid/graphics/PointF;->y:F

    .line 654
    aget-object v0, v0, v14

    .line 656
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 658
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 660
    move-object v2, v1

    .line 661
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 664
    :cond_297
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 667
    return-object v1
.end method

.method public setKsi(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/smooth/SmoothPathProvider2;->mKsi:F

    .line 3
    return-void
.end method

.method public setSmooth(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/smooth/SmoothPathProvider2;->mSmooth:F

    .line 3
    return-void
.end method
