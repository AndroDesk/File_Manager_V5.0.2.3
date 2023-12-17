.class public Lcom/airbnb/lottie/animation/content/RepeaterContent;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/content/GreedyContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field private contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

.field private final copies:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/Repeater;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 20
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 22
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/Repeater;->getName()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->name:Ljava/lang/String;

    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/Repeater;->isHidden()Z

    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->hidden:Z

    .line 34
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/Repeater;->getCopies()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 44
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 47
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/Repeater;->getOffset()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 63
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 66
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/Repeater;->getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 76
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 79
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_12

    .line 12
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    if-eq v0, p0, :cond_12

    .line 18
    goto :goto_5

    .line 19
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 24
    :goto_17
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_28

    .line 30
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 40
    goto :goto_17

    .line 41
    :cond_28
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 44
    new-instance p1, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 46
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 48
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 50
    iget-boolean v5, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->hidden:Z

    .line 52
    const/4 v7, 0x0

    .line 53
    const-string v4, "Repeater"

    .line 55
    move-object v1, p1

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    .line 59
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 61
    return-void
.end method

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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->REPEATER_COPIES:Ljava/lang/Float;

    .line 12
    if-ne p1, v0, :cond_13

    .line 14
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 16
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->REPEATER_OFFSET:Ljava/lang/Float;

    .line 22
    if-ne p1, v0, :cond_1c

    .line 24
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 15
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Float;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 27
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getStartOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Float;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 40
    move-result v2

    .line 41
    const/high16 v3, 0x42c80000  # 100.0f

    .line 43
    div-float/2addr v2, v3

    .line 44
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 46
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getEndOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/Float;

    .line 56
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 59
    move-result v4

    .line 60
    div-float/2addr v4, v3

    .line 61
    float-to-int v3, v0

    .line 62
    add-int/lit8 v3, v3, -0x1

    .line 64
    :goto_3f
    if-ltz v3, :cond_66

    .line 66
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 68
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 71
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 73
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 75
    int-to-float v7, v3

    .line 76
    add-float v8, v7, v1

    .line 78
    invoke-virtual {v6, v8}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 85
    int-to-float v5, p3

    .line 86
    div-float/2addr v7, v0

    .line 87
    invoke-static {v2, v4, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 90
    move-result v6

    .line 91
    mul-float/2addr v6, v5

    .line 92
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 94
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 96
    float-to-int v6, v6

    .line 97
    invoke-virtual {v5, p1, v7, v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 100
    add-int/lit8 v3, v3, -0x1

    .line 102
    goto :goto_3f

    .line 103
    :cond_66
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 6
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 14
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Float;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Float;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result v2

    .line 36
    float-to-int v1, v1

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 39
    :goto_26
    if-ltz v1, :cond_3f

    .line 41
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 43
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 45
    int-to-float v5, v1

    .line 46
    add-float/2addr v5, v2

    .line 47
    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    .line 56
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    .line 58
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 63
    goto :goto_26

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    .line 66
    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    .registers 4
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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 6
    return-void
.end method
