.class public Lcom/airbnb/lottie/model/layer/CompositionLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "CompositionLayer.java"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;

.field private hasMatte:Ljava/lang/Boolean;

.field private layerPaint:Landroid/graphics/Paint;

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    .line 27
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeRemapping()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 35
    move-result-object p2

    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p2, :cond_35

    .line 39
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    :goto_37
    new-instance p2, Landroidx/collection/d;

    .line 58
    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    move-result v1

    .line 66
    invoke-direct {p2, v1}, Landroidx/collection/d;-><init>(I)V

    .line 69
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x1

    .line 74
    sub-int/2addr v1, v2

    .line 75
    move-object v3, v0

    .line 76
    :goto_4b
    const/4 v4, 0x0

    .line 77
    if-ltz v1, :cond_88

    .line 79
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lcom/airbnb/lottie/model/layer/Layer;

    .line 85
    invoke-static {v5, p1, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->forModel(Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 88
    move-result-object v6

    .line 89
    if-nez v6, :cond_5b

    .line 91
    goto :goto_85

    .line 92
    :cond_5b
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    .line 99
    move-result-wide v7

    .line 100
    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 103
    if-eqz v3, :cond_6d

    .line 105
    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 108
    move-object v3, v0

    .line 109
    goto :goto_85

    .line 110
    :cond_6d
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 112
    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    sget-object v4, Lcom/airbnb/lottie/model/layer/CompositionLayer$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    .line 117
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 124
    move-result v5

    .line 125
    aget v4, v4, v5

    .line 127
    if-eq v4, v2, :cond_84

    .line 129
    const/4 v5, 0x2

    .line 130
    if-eq v4, v5, :cond_84

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move-object v3, v6

    .line 134
    :goto_85
    add-int/lit8 v1, v1, -0x1

    .line 136
    goto :goto_4b

    .line 137
    :cond_88
    :goto_88
    invoke-virtual {p2}, Landroidx/collection/d;->h()I

    .line 140
    move-result p1

    .line 141
    if-ge v4, p1, :cond_b1

    .line 143
    invoke-virtual {p2, v4}, Landroidx/collection/d;->e(I)J

    .line 146
    move-result-wide p3

    .line 147
    invoke-virtual {p2, p3, p4, v0}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 153
    if-nez p1, :cond_9b

    .line 155
    goto :goto_ae

    .line 156
    :cond_9b
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    .line 163
    move-result-wide p3

    .line 164
    invoke-virtual {p2, p3, p4, v0}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 167
    move-result-object p3

    .line 168
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 170
    if-eqz p3, :cond_ae

    .line 172
    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 175
    :cond_ae
    :goto_ae
    add-int/lit8 v4, v4, 0x1

    .line 177
    goto :goto_88

    .line 178
    :cond_b1
    return-void
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
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    .line 6
    if-ne p1, v0, :cond_21

    .line 8
    if-nez p2, :cond_12

    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 12
    if-eqz p1, :cond_21

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    goto :goto_21

    .line 19
    :cond_12
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 21
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 29
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    .line 1
    const-string v0, "CompositionLayer#draw"

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 8
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 10
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompWidth()I

    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 17
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompHeight()I

    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 28
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 33
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled()Z

    .line 36
    move-result v1

    .line 37
    const/16 v2, 0xff

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v1, :cond_35

    .line 42
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    move-result v1

    .line 48
    if-le v1, v3, :cond_35

    .line 50
    if-eq p3, v2, :cond_35

    .line 52
    move v1, v3

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    const/4 v1, 0x0

    .line 55
    :goto_36
    if-eqz v1, :cond_45

    .line 57
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 64
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    .line 66
    invoke-static {p1, v4, v5}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    goto :goto_48

    .line 70
    :cond_45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    :goto_48
    if-eqz v1, :cond_4b

    .line 75
    move p3, v2

    .line 76
    :cond_4b
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 81
    move-result v1

    .line 82
    sub-int/2addr v1, v3

    .line 83
    :goto_52
    if-ltz v1, :cond_74

    .line 85
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 87
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_63

    .line 93
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 95
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 98
    move-result v2

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v2, v3

    .line 101
    :goto_64
    if-eqz v2, :cond_71

    .line 103
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 105
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 111
    invoke-virtual {v2, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 114
    :cond_71
    add-int/lit8 v1, v1, -0x1

    .line 116
    goto :goto_52

    .line 117
    :cond_74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 120
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 123
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    move-result p2

    .line 10
    const/4 p3, 0x1

    .line 11
    sub-int/2addr p2, p3

    .line 12
    :goto_b
    if-ltz p2, :cond_2a

    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 22
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 30
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 32
    invoke-virtual {v0, v1, v2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 40
    add-int/lit8 p2, p2, -0x1

    .line 42
    goto :goto_b

    .line 43
    :cond_2a
    return-void
.end method

.method public hasMasks()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_3d

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_c
    if-ltz v0, :cond_39

    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 23
    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    .line 25
    if-eqz v3, :cond_25

    .line 27
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_36

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 37
    return v1

    .line 38
    :cond_25
    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 40
    if-eqz v3, :cond_36

    .line 42
    check-cast v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 44
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_36

    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 54
    return v1

    .line 55
    :cond_36
    add-int/lit8 v0, v0, -0x1

    .line 57
    goto :goto_c

    .line 58
    :cond_39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 62
    :cond_3d
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result v0

    .line 68
    return v0
.end method

.method public hasMatte()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_33

    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_10

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 16
    return v1

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v1

    .line 24
    :goto_17
    if-ltz v0, :cond_2f

    .line 26
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 34
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2c

    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 44
    return v1

    .line 45
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    .line 47
    goto :goto_17

    .line 48
    :cond_2f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .registers 7
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
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_17

    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 18
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_17
    return-void
.end method

.method public setProgress(F)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 6
    if-eqz v0, :cond_39

    .line 8
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 10
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    .line 17
    move-result p1

    .line 18
    const v0, 0x3c23d70a  # 0.01f

    .line 21
    add-float/2addr p1, v0

    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 24
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 34
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Float;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 46
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    .line 53
    move-result v2

    .line 54
    mul-float/2addr v2, v1

    .line 55
    sub-float/2addr v2, v0

    .line 56
    div-float p1, v2, p1

    .line 58
    :cond_39
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    if-nez v0, :cond_44

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 64
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getStartProgress()F

    .line 67
    move-result v0

    .line 68
    sub-float/2addr p1, v0

    .line 69
    :cond_44
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 71
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x0

    .line 76
    cmpl-float v0, v0, v1

    .line 78
    if-eqz v0, :cond_56

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 82
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 85
    move-result v0

    .line 86
    div-float/2addr p1, v0

    .line 87
    :cond_56
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    move-result v0

    .line 93
    add-int/lit8 v0, v0, -0x1

    .line 95
    :goto_5e
    if-ltz v0, :cond_6e

    .line 97
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 105
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 108
    add-int/lit8 v0, v0, -0x1

    .line 110
    goto :goto_5e

    .line 111
    :cond_6e
    return-void
.end method
