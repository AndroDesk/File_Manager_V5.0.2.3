.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INV_SQRT_2:F

.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static dpScale:F

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 3
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 6
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 8
    new-instance v0, Landroid/graphics/Path;

    .line 10
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 13
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 20
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    .line 22
    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [F

    .line 25
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    .line 27
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    move-result-wide v2

    .line 33
    div-double/2addr v2, v0

    .line 34
    double-to-float v0, v2

    .line 35
    sput v0, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    .line 37
    const/high16 v0, -0x40800000  # -1.0f

    .line 39
    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .registers 12

    const-string v0, "applyTrimPathIfNeeded"

    .line 6
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 8
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v4, p1, v3

    const/4 v5, 0x0

    if-nez v4, :cond_1e

    cmpl-float v4, p2, v5

    if-nez v4, :cond_1e

    .line 9
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_1e
    cmpg-float v4, v2, v3

    if-ltz v4, :cond_a4

    sub-float v4, p2, p1

    sub-float/2addr v4, v3

    .line 10
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v3, v3, v6

    if-gez v3, :cond_34

    goto :goto_a4

    :cond_34
    mul-float/2addr p1, v2

    mul-float/2addr p2, v2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p3, v2

    add-float/2addr v3, p3

    add-float/2addr p1, p3

    cmpl-float p2, v3, v2

    if-ltz p2, :cond_53

    cmpl-float p2, p1, v2

    if-ltz p2, :cond_53

    .line 13
    invoke-static {v3, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result p2

    int-to-float v3, p2

    .line 14
    invoke-static {p1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_53
    cmpg-float p2, v3, v5

    if-gez p2, :cond_5c

    .line 15
    invoke-static {v3, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result p2

    int-to-float v3, p2

    :cond_5c
    cmpg-float p2, p1, v5

    if-gez p2, :cond_65

    .line 16
    invoke-static {p1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_65
    cmpl-float p2, v3, p1

    if-nez p2, :cond_70

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 18
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_70
    if-ltz p2, :cond_73

    sub-float/2addr v3, v2

    .line 19
    :cond_73
    sget-object p2, Lcom/airbnb/lottie/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x1

    .line 20
    invoke-virtual {v1, v3, p1, p2, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v4, p1, v2

    if-lez v4, :cond_8d

    .line 21
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    rem-float/2addr p1, v2

    .line 22
    invoke-virtual {v1, v5, p1, v3, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 23
    invoke-virtual {p2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_9d

    :cond_8d
    cmpg-float p1, v3, v5

    if-gez p1, :cond_9d

    .line 24
    sget-object p1, Lcom/airbnb/lottie/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    add-float/2addr v3, v2

    .line 25
    invoke-virtual {v1, v3, v2, p1, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 26
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 27
    :cond_9d
    :goto_9d
    invoke-virtual {p0, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 28
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    .line 29
    :cond_a4
    :goto_a4
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .registers 5

    if-eqz p1, :cond_31

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_31

    .line 2
    :cond_9
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result p1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000  # 360.0f

    div-float/2addr p1, v2

    .line 5
    invoke-static {p0, v0, v1, p1}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    :cond_31
    :goto_31
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_8

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 6
    goto :goto_8

    .line 7
    :catch_6
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .registers 12

    .line 1
    new-instance v7, Landroid/graphics/Path;

    .line 3
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 6
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 8
    iget v1, p0, Landroid/graphics/PointF;->y:F

    .line 10
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    if-eqz p2, :cond_3d

    .line 15
    if-eqz p3, :cond_3d

    .line 17
    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    cmpl-float v0, v0, v1

    .line 24
    if-nez v0, :cond_21

    .line 26
    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    .line 29
    move-result v0

    .line 30
    cmpl-float v0, v0, v1

    .line 32
    if-eqz v0, :cond_3d

    .line 34
    :cond_21
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 36
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 38
    add-float/2addr v1, v0

    .line 39
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 41
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 43
    add-float v2, p0, p2

    .line 45
    iget v5, p1, Landroid/graphics/PointF;->x:F

    .line 47
    iget p0, p3, Landroid/graphics/PointF;->x:F

    .line 49
    add-float v3, v5, p0

    .line 51
    iget v6, p1, Landroid/graphics/PointF;->y:F

    .line 53
    iget p0, p3, Landroid/graphics/PointF;->y:F

    .line 55
    add-float v4, v6, p0

    .line 57
    move-object v0, v7

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 61
    goto :goto_44

    .line 62
    :cond_3d
    iget p0, p1, Landroid/graphics/PointF;->x:F

    .line 64
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 66
    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    :goto_44
    return-object v7
.end method

.method public static dpScale()F
    .registers 2

    .line 1
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 3
    const/high16 v1, -0x40800000  # -1.0f

    .line 5
    cmpl-float v0, v0, v1

    .line 7
    if-nez v0, :cond_14

    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 19
    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 21
    :cond_14
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    .line 23
    return v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    const-string v1, "animator_duration_scale"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .registers 7

    .line 1
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 7
    const/4 v3, 0x1

    .line 8
    aput v2, v0, v3

    .line 10
    sget v2, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    .line 12
    const/4 v4, 0x2

    .line 13
    aput v2, v0, v4

    .line 15
    const/4 v5, 0x3

    .line 16
    aput v2, v0, v5

    .line 18
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 21
    aget p0, v0, v4

    .line 23
    aget v1, v0, v1

    .line 25
    sub-float/2addr p0, v1

    .line 26
    aget v1, v0, v5

    .line 28
    aget v0, v0, v3

    .line 30
    sub-float/2addr v1, v0

    .line 31
    float-to-double v2, p0

    .line 32
    float-to-double v0, v1

    .line 33
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 36
    move-result-wide v0

    .line 37
    double-to-float p0, v0

    .line 38
    return p0
.end method

.method public static hasZeroScaleAxis(Landroid/graphics/Matrix;)Z
    .registers 7

    .line 1
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->points:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 7
    const/4 v3, 0x1

    .line 8
    aput v2, v0, v3

    .line 10
    const v2, 0x471212bb

    .line 13
    const/4 v4, 0x2

    .line 14
    aput v2, v0, v4

    .line 16
    const v2, 0x471a973c

    .line 19
    const/4 v5, 0x3

    .line 20
    aput v2, v0, v5

    .line 22
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 25
    aget p0, v0, v1

    .line 27
    aget v2, v0, v4

    .line 29
    cmpl-float p0, p0, v2

    .line 31
    if-eqz p0, :cond_2a

    .line 33
    aget p0, v0, v3

    .line 35
    aget v0, v0, v5

    .line 37
    cmpl-float p0, p0, v0

    .line 39
    if-nez p0, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    return v1

    .line 43
    :cond_2a
    :goto_2a
    return v3
.end method

.method public static hashFor(FFFF)I
    .registers 6

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_b

    const/16 v1, 0x20f

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int p0, v1

    goto :goto_d

    :cond_b
    const/16 p0, 0x11

    :goto_d
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_16

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :cond_16
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_1f

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    :cond_1f
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_28

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    :cond_28
    return p0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .registers 8

    const/4 v0, 0x0

    if-ge p0, p3, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-le p0, p3, :cond_8

    return v1

    :cond_8
    if-ge p1, p4, :cond_b

    return v0

    :cond_b
    if-le p1, p4, :cond_e

    return v1

    :cond_e
    if-lt p2, p5, :cond_11

    move v0, v1

    :cond_11
    return v0
.end method

.method public static isNetworkException(Ljava/lang/Throwable;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/net/SocketException;

    .line 3
    if-nez v0, :cond_1f

    .line 5
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    .line 7
    if-nez v0, :cond_1f

    .line 9
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    .line 11
    if-nez v0, :cond_1f

    .line 13
    instance-of v0, p0, Ljava/net/ProtocolException;

    .line 15
    if-nez v0, :cond_1f

    .line 17
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    .line 19
    if-nez v0, :cond_1f

    .line 21
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 23
    if-nez v0, :cond_1f

    .line 25
    instance-of p0, p0, Ljava/net/UnknownServiceException;

    .line 27
    if-eqz p0, :cond_1d

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const/4 p0, 0x0

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 33
    :goto_20
    return p0
.end method

.method public static renderPath(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 10
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 12
    float-to-int v1, v1

    .line 13
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 15
    float-to-int v0, v0

    .line 16
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 18
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroid/graphics/Canvas;

    .line 24
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    new-instance v2, Lcom/airbnb/lottie/animation/LPaint;

    .line 29
    invoke-direct {v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    const v3, -0xffff01

    .line 39
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 45
    return-object v0
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_d

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    move-result v0

    .line 11
    if-ne v0, p2, :cond_d

    .line 13
    return-object p0

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    return-object p1
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 4

    const/16 v0, 0x1f

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .registers 4

    const-string p3, "Utils#saveLayer"

    .line 2
    invoke-static {p3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 4
    invoke-static {p3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method
