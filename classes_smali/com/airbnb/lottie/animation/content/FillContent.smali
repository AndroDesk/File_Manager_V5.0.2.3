.class public Lcom/airbnb/lottie/animation/content/FillContent;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final hidden:Z

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

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


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 11
    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 17
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getName()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->name:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->isHidden()Z

    .line 37
    move-result v1

    .line 38
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->hidden:Z

    .line 40
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 42
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_5e

    .line 48
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_36

    .line 54
    goto :goto_5e

    .line 55
    :cond_36
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getFillType()Landroid/graphics/Path$FillType;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 62
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 75
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 78
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 88
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 94
    return-void

    .line 95
    :cond_5e
    :goto_5e
    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 98
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 100
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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 3
    if-ne p1, v0, :cond_a

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 10
    goto :goto_38

    .line 11
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    .line 13
    if-ne p1, v0, :cond_14

    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 20
    goto :goto_38

    .line 21
    :cond_14
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 23
    if-ne p1, v0, :cond_38

    .line 25
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    if-eqz p1, :cond_21

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 31
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 34
    :cond_21
    if-nez p2, :cond_27

    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    goto :goto_38

    .line 40
    :cond_27
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 42
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 45
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 47
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 52
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->hidden:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "FillContent#draw"

    .line 8
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 13
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 15
    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 17
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    int-to-float p3, p3

    .line 25
    const/high16 v1, 0x437f0000  # 255.0f

    .line 27
    div-float/2addr p3, v1

    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 30
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v2

    .line 40
    int-to-float v2, v2

    .line 41
    mul-float/2addr p3, v2

    .line 42
    const/high16 v2, 0x42c80000  # 100.0f

    .line 44
    div-float/2addr p3, v2

    .line 45
    mul-float/2addr p3, v1

    .line 46
    float-to-int p3, p3

    .line 47
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 49
    const/16 v2, 0xff

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {p3, v3, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    .line 55
    move-result p3

    .line 56
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    if-eqz p3, :cond_49

    .line 63
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object p3

    .line 69
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 71
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 74
    :cond_49
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 76
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 79
    :goto_4e
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 81
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 84
    move-result p3

    .line 85
    if-ge v3, p3, :cond_6a

    .line 87
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 89
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 91
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 97
    invoke-interface {v1}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_4e

    .line 107
    :cond_6a
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 109
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 117
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 6
    const/4 p3, 0x0

    .line 7
    move v0, p3

    .line 8
    :goto_7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_23

    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 18
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

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
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

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
