.class public Lcom/airbnb/lottie/animation/content/ShapeContent;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final hidden:Z

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapePath;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 11
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 13
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 18
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapePath;->getName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapePath;->isHidden()Z

    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    .line 30
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 32
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapePath;->getShapePath()Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 45
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 48
    return-void
.end method

.method private invalidate()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 9
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_16

    .line 18
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 22
    return-object v0

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/graphics/Path;

    .line 33
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 38
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 40
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 45
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 47
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 50
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    .line 54
    return-object v0
.end method

.method public onValueChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/ShapeContent;->invalidate()V

    .line 4
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 6
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
    const/4 p2, 0x0

    .line 2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v0

    .line 6
    if-ge p2, v0, :cond_26

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 14
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 16
    if-eqz v1, :cond_23

    .line 18
    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    if-ne v1, v2, :cond_23

    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 30
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 33
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    :cond_23
    add-int/lit8 p2, p2, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_26
    return-void
.end method
