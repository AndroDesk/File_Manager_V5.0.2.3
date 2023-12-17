.class public Lmiuix/smooth/SmoothPathProvider;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothPathProvider$SmoothData;,
        Lmiuix/smooth/SmoothPathProvider$CornerData;
    }
.end annotation


# static fields
.field private static final DEFAULT_KSI:F = 0.46f

.field private static final DEFAULT_SMOOTH:F = 0.8f


# instance fields
.field private mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

.field private mKsi:F

.field private mSmooth:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd  # 0.8f

    iput v0, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    const v0, 0x3eeb851f  # 0.46f

    iput v0, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    return-void
.end method

.method public static synthetic access$000(FFDF)D
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->smoothForWidth(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$100(FFDF)D
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->smoothForHeight(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1000(DD)D
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->yForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1100(DD)D
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->kForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1200(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->mForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1300(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->nForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1400(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->pForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1500(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->xForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1600(DD)D
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->yForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$200(D)D
    .registers 2

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->thetaForWidth(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$300(D)D
    .registers 2

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->thetaForHeight(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$400(D)D
    .registers 2

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$500(DD)D
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->kForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$600(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->mForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$700(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->nForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$800(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->pForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$900(FD)D
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->xForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method private ensureFourCornerData()V
    .registers 3

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_d

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    :cond_d
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_1a

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    :cond_1a
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_27

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    :cond_27
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_34

    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    :cond_34
    return-void
.end method

.method private isFourCornerDataValid()Z
    .registers 3

    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v1, :cond_15

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
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

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_7

    return-wide v0

    :cond_7
    const-wide v0, 0x3fdd70a3e0000000L  # 0.46000000834465027

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr v4, p0

    mul-double/2addr v4, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L  # 1.0

    add-double/2addr p0, p2

    mul-double/2addr p0, v4

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    div-double/2addr p0, v2

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method private static kForWidth(DD)D
    .registers 10

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_7

    return-wide v0

    :cond_7
    const-wide v0, 0x3fdd70a3e0000000L  # 0.46000000834465027

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr v4, p0

    mul-double/2addr v4, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L  # 1.0

    add-double/2addr p0, p2

    mul-double/2addr p0, v4

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    div-double/2addr p0, v2

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method private static mForHeight(FD)D
    .registers 7

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private static mForWidth(FD)D
    .registers 7

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private static nForHeight(FD)D
    .registers 7

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private static nForWidth(FD)D
    .registers 7

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private static pForHeight(FD)D
    .registers 7

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method private static pForWidth(FD)D
    .registers 7

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v0

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

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/high16 p2, 0x40000000  # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_1e
    return-wide p2
.end method

.method private static smoothForWidth(FFDF)D
    .registers 11

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/high16 p2, 0x40000000  # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

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

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    add-double/2addr p0, v0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method private static xForWidth(FD)D
    .registers 7

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    add-double/2addr p0, v0

    div-double/2addr v2, p0

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
.method public buildSmoothData(Landroid/graphics/RectF;F)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;FFF)V
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

    invoke-virtual {p0, p1, v0, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[F)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[FFF)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->getKsi()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->getSmooth()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    new-instance v11, Lmiuix/smooth/SmoothPathProvider$SmoothData;

    float-to-double v12, v2

    move-object v2, v11

    move v3, v8

    move v4, v9

    move-wide v5, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lmiuix/smooth/SmoothPathProvider$SmoothData;-><init>(FFDF)V

    iput-object v11, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    if-nez v1, :cond_24

    return-void

    :cond_24
    const/16 v2, 0x8

    new-array v3, v2, [F

    fill-array-data v3, :array_f4

    const/4 v4, 0x0

    move v5, v4

    :goto_2d
    array-length v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_43

    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_40

    aget v6, v1, v5

    aput v6, v3, v5

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_43
    aget v1, v3, v4

    const/4 v2, 0x1

    aget v2, v3, v2

    const/4 v4, 0x2

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v5, v3, v5

    const/4 v6, 0x4

    aget v6, v3, v6

    const/4 v7, 0x5

    aget v7, v3, v7

    const/4 v11, 0x6

    aget v11, v3, v11

    const/4 v14, 0x7

    aget v3, v3, v14

    add-float v14, v1, v4

    cmpl-float v14, v14, v8

    if-lez v14, :cond_6b

    mul-float v14, v8, v1

    add-float v15, v1, v4

    div-float/2addr v14, v15

    mul-float v15, v8, v4

    add-float/2addr v1, v4

    div-float v4, v15, v1

    move v1, v14

    :cond_6b
    move v14, v4

    add-float v4, v5, v7

    cmpl-float v4, v4, v9

    if-lez v4, :cond_7e

    mul-float v4, v9, v5

    add-float v15, v5, v7

    div-float/2addr v4, v15

    mul-float v15, v9, v7

    add-float/2addr v5, v7

    div-float v7, v15, v5

    move v15, v4

    goto :goto_7f

    :cond_7e
    move v15, v5

    :goto_7f
    add-float v4, v6, v11

    cmpl-float v4, v4, v8

    if-lez v4, :cond_91

    mul-float v4, v8, v6

    add-float v5, v6, v11

    div-float/2addr v4, v5

    mul-float/2addr v8, v11

    add-float/2addr v6, v11

    div-float v11, v8, v6

    move v8, v11

    move v11, v4

    goto :goto_93

    :cond_91
    move v8, v11

    move v11, v6

    :goto_93
    add-float v4, v3, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_a4

    mul-float v4, v9, v3

    add-float v5, v3, v2

    div-float/2addr v4, v5

    mul-float/2addr v9, v2

    add-float/2addr v3, v2

    div-float v2, v9, v3

    move v9, v4

    goto :goto_a5

    :cond_a4
    move v9, v3

    :goto_a5
    invoke-direct/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->ensureFourCornerData()V

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/16 v16, 0x0

    move-object v1, v3

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v17, v7

    move-wide v6, v12

    move/from16 v18, v8

    move v8, v10

    move/from16 v19, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    move/from16 v7, v17

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x2

    move-wide v6, v12

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    move/from16 v11, v18

    move/from16 v3, v19

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    return-void

    :array_f4
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

.method public drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_23
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v2, v2, v12

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v13, 0x0

    cmpl-double v1, v1, v13

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x3

    if-eqz v1, :cond_b5

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v5, v2, v15

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_b5
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_ff

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_ff
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_155

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_155
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x4012d97c7f3321d2L  # 4.71238898038469

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v12

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_1db

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_1db
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_225

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_225
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_27b

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_27b
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v3, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v3, v4}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v12

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_2fb

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_2fb
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_345

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_345
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_39b

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_39b
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x3ff921fb54442d18L  # 1.5707963267948966

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v12

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_421

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_421
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_46b

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_46b
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_4c1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v5, v2, v5

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v17

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v9

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v17

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_4c1
    return-void
.end method

.method public getKsi()F
    .registers 2

    iget v0, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    return v0
.end method

.method public getSmooth()F
    .registers 2

    iget v0, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    return v0
.end method

.method public getSmoothPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 19

    move-object/from16 v0, p0

    if-nez p1, :cond_a

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto :goto_c

    :cond_a
    move-object/from16 v1, p1

    :goto_c
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-direct/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_27

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v4, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    invoke-direct {v2, v9, v9, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v1

    :cond_27
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v3, v3, v9

    const/4 v10, 0x0

    if-eqz v3, :cond_4b

    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v4, 0x400921fb54442d18L  # Math.PI

    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_56

    :cond_4b
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_56
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v11, 0x0

    cmpl-double v3, v3, v11

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v3, :cond_86

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_86
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v4, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v5, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v5, v5, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v8, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v3 .. v8}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_ab
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v3, v11

    if-eqz v3, :cond_d6

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_d6
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_f8

    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v4, 0x4012d97c7f3321d2L  # 4.71238898038469

    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_f8
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v3, v11

    if-eqz v3, :cond_123

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_123
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v4, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v5, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v5, v5, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v8, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v3 .. v8}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_148

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_148
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v3, v11

    if-eqz v3, :cond_173

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_173
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_18f

    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v4, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_18f
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v3, v11

    if-eqz v3, :cond_1ba

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_1ba
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v4, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v5, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v5, v5, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v8, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v3 .. v8}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_1df

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1df
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v3, v11

    if-eqz v3, :cond_20a

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_20a
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_22c

    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v4, 0x3ff921fb54442d18L  # 1.5707963267948966

    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_22c
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v3, v11

    if-eqz v3, :cond_254

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_254
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v4, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v5, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v5, v5, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v6, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v8, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v3 .. v8}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_279

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_279
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v3, v3, v11

    if-eqz v3, :cond_2a1

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    aget-object v3, v2, v14

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v13

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_2a1
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method

.method public setKsi(F)V
    .registers 2

    iput p1, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    return-void
.end method

.method public setSmooth(F)V
    .registers 2

    iput p1, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    return-void
.end method
