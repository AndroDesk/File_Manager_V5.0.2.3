.class public Lcom/airbnb/lottie/animation/content/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


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

.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

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

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final linearGradientCache:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientFill;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/d;

    .line 6
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/d;

    .line 11
    new-instance v0, Landroidx/collection/d;

    .line 13
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/d;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 25
    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 31
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 33
    new-instance v1, Landroid/graphics/RectF;

    .line 35
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 49
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getName()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->isHidden()Z

    .line 58
    move-result v1

    .line 59
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->hidden:Z

    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 63
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 69
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 76
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    .line 83
    move-result p1

    .line 84
    const/high16 v0, 0x42000000  # 32.0f

    .line 86
    div-float/2addr p1, v0

    .line 87
    float-to-int p1, p1

    .line 88
    iput p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    .line 90
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 100
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 103
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 106
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 116
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 119
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 122
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 132
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 135
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 138
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 148
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 151
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 154
    return-void
.end method

.method private applyDynamicColorsIfNeeded([I)[I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    .line 20
    move-result v1

    .line 21
    iget v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v1, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    .line 34
    move-result v2

    .line 35
    iget v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

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
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getGradientHash()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/d;

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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/PointF;

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/graphics/PointF;

    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

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
    invoke-direct {p0, v5}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

    .line 49
    move-result-object v11

    .line 50
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    .line 53
    move-result-object v12

    .line 54
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 56
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 58
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 60
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 62
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 64
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 66
    move-object v6, v4

    .line 67
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/d;

    .line 72
    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 75
    return-object v4
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getGradientHash()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/d;

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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/PointF;

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/graphics/PointF;

    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

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
    invoke-direct {p0, v5}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

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
    double-to-float v0, v0

    .line 71
    const/4 v1, 0x0

    .line 72
    cmpg-float v1, v0, v1

    .line 74
    if-gtz v1, :cond_4e

    .line 76
    const v0, 0x3a83126f  # 0.001f

    .line 79
    :cond_4e
    move v9, v0

    .line 80
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 82
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 84
    move-object v6, v0

    .line 85
    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 88
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/d;

    .line 90
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 93
    return-object v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .registers 5
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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    .line 3
    if-ne p1, v0, :cond_a

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 10
    goto :goto_52

    .line 11
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-ne p1, v0, :cond_2f

    .line 16
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 18
    if-eqz p1, :cond_18

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 22
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 25
    :cond_18
    if-nez p2, :cond_1d

    .line 27
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    goto :goto_52

    .line 30
    :cond_1d
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 32
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 35
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 37
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 40
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 42
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 44
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 47
    goto :goto_52

    .line 48
    :cond_2f
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->GRADIENT_COLOR:[Ljava/lang/Integer;

    .line 50
    if-ne p1, v0, :cond_52

    .line 52
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 54
    if-eqz p1, :cond_3c

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 58
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 61
    :cond_3c
    if-nez p2, :cond_41

    .line 63
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 65
    goto :goto_52

    .line 66
    :cond_41
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 68
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 71
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 73
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 76
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 78
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 80
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    :cond_52
    :goto_52
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->hidden:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "GradientFillContent#draw"

    .line 8
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_11
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_2d

    .line 26
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 28
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 30
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 36
    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_11

    .line 46
    :cond_2d
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 48
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 50
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 53
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 55
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 57
    if-ne v2, v3, :cond_3f

    .line 59
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    .line 62
    move-result-object v2

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    .line 67
    move-result-object v2

    .line 68
    :goto_43
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 71
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 76
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    if-eqz p2, :cond_5a

    .line 80
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroid/graphics/ColorFilter;

    .line 88
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 91
    :cond_5a
    int-to-float p2, p3

    .line 92
    const/high16 p3, 0x437f0000  # 255.0f

    .line 94
    div-float/2addr p2, p3

    .line 95
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 97
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v2

    .line 107
    int-to-float v2, v2

    .line 108
    mul-float/2addr p2, v2

    .line 109
    const/high16 v2, 0x42c80000  # 100.0f

    .line 111
    div-float/2addr p2, v2

    .line 112
    mul-float/2addr p2, p3

    .line 113
    float-to-int p2, p2

    .line 114
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 116
    const/16 v2, 0xff

    .line 118
    invoke-static {p2, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    .line 121
    move-result p2

    .line 122
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 127
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 129
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 132
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 135
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 6
    const/4 p3, 0x0

    .line 7
    move v0, p3

    .line 8
    :goto_7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_23

    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 18
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 26
    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_7

    .line 36
    :cond_23
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 38
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 41
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 43
    const/high16 p3, 0x3f800000  # 1.0f

    .line 45
    sub-float/2addr p2, p3

    .line 46
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 48
    sub-float/2addr v0, p3

    .line 49
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 51
    add-float/2addr v1, p3

    .line 52
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 54
    add-float/2addr v2, p3

    .line 55
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 4
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_1b

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 14
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 16
    if-eqz v1, :cond_18

    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 20
    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1b
    return-void
.end method
