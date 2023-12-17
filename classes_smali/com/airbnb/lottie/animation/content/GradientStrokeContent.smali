.class public Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
.super Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.source "GradientStrokeContent.java"


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field private final endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final linearGradientCache:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientStroke;)V
    .registers 15

    .line 1
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getMiterLimit()F

    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getWidth()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getLineDashPattern()Ljava/util/List;

    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getDashOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 36
    move-result-object v10

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 43
    new-instance v0, Landroidx/collection/d;

    .line 45
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/d;

    .line 50
    new-instance v0, Landroidx/collection/d;

    .line 52
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/d;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    .line 59
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getName()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 76
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->isHidden()Z

    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->hidden:Z

    .line 82
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    .line 89
    move-result p1

    .line 90
    const/high16 v0, 0x42000000  # 32.0f

    .line 92
    div-float/2addr p1, v0

    .line 93
    float-to-int p1, p1

    .line 94
    iput p1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    .line 96
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 106
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 109
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 112
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 122
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 125
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 128
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientStroke;->getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 138
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 141
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 144
    return-void
.end method

.method private applyDynamicColorsIfNeeded([I)[I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 3
    if-eqz v0, :cond_2e

    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Ljava/lang/Integer;

    .line 11
    array-length v1, p1

    .line 12
    array-length v2, v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v1, v2, :cond_1d

    .line 16
    :goto_f
    array-length v1, p1

    .line 17
    if-ge v3, v1, :cond_2e

    .line 19
    aget-object v1, v0, v3

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v1

    .line 25
    aput v1, p1, v3

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 29
    goto :goto_f

    .line 30
    :cond_1d
    array-length p1, v0

    .line 31
    new-array p1, p1, [I

    .line 33
    :goto_20
    array-length v1, v0

    .line 34
    if-ge v3, v1, :cond_2e

    .line 36
    aget-object v1, v0, v3

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v1

    .line 42
    aput v1, p1, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_20

    .line 47
    :cond_2e
    return-object p1
.end method

.method private getGradientHash()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    .line 20
    move-result v1

    .line 21
    iget v2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v1, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    .line 34
    move-result v2

    .line 35
    iget v3, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    .line 37
    int-to-float v3, v3

    .line 38
    mul-float/2addr v2, v3

    .line 39
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 42
    move-result v2

    .line 43
    if-eqz v0, :cond_30

    .line 45
    const/16 v3, 0x20f

    .line 47
    mul-int/2addr v3, v0

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    const/16 v3, 0x11

    .line 51
    :goto_32
    if-eqz v1, :cond_37

    .line 53
    mul-int/lit8 v3, v3, 0x1f

    .line 55
    mul-int/2addr v3, v1

    .line 56
    :cond_37
    if-eqz v2, :cond_3c

    .line 58
    mul-int/lit8 v3, v3, 0x1f

    .line 60
    mul-int/2addr v3, v2

    .line 61
    :cond_3c
    return v3
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .registers 15

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/d;

    .line 7
    int-to-long v2, v0

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/LinearGradient;

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-object v0

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/PointF;

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/graphics/PointF;

    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 36
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 42
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    .line 45
    move-result-object v5

    .line 46
    invoke-direct {p0, v5}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->applyDynamicColorsIfNeeded([I)[I

    .line 49
    move-result-object v11

    .line 50
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    .line 53
    move-result-object v12

    .line 54
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 56
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 58
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 60
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 62
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 64
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 66
    move-object v6, v0

    .line 67
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 70
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/d;

    .line 72
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 75
    return-object v0
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/d;

    .line 7
    int-to-long v2, v0

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/RadialGradient;

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-object v0

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/PointF;

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/graphics/PointF;

    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 36
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 42
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    .line 45
    move-result-object v5

    .line 46
    invoke-direct {p0, v5}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->applyDynamicColorsIfNeeded([I)[I

    .line 49
    move-result-object v10

    .line 50
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    .line 53
    move-result-object v11

    .line 54
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 56
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 58
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 60
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 62
    sub-float/2addr v0, v7

    .line 63
    float-to-double v4, v0

    .line 64
    sub-float/2addr v1, v8

    .line 65
    float-to-double v0, v1

    .line 66
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 69
    move-result-wide v0

    .line 70
    double-to-float v9, v0

    .line 71
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 73
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 75
    move-object v6, v0

    .line 76
    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 79
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/d;

    .line 81
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->GRADIENT_COLOR:[Ljava/lang/Integer;

    .line 6
    if-ne p1, v0, :cond_27

    .line 8
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 10
    if-eqz p1, :cond_10

    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 14
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 17
    :cond_10
    if-nez p2, :cond_16

    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 22
    goto :goto_27

    .line 23
    :cond_16
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 25
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 30
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 35
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 37
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->hidden:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, p2, v1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 14
    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 16
    if-ne v0, v1, :cond_16

    .line 18
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    .line 26
    move-result-object v0

    .line 27
    :goto_1a
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 38
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method
