.class public Lcom/airbnb/lottie/animation/content/EllipseContent;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
.field private final circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 11
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 13
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 18
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 26
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 36
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 48
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 51
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 54
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 57
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 60
    return-void
.end method

.method private invalidate()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 9
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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    .line 3
    if-ne p1, v0, :cond_a

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 10
    goto :goto_13

    .line 11
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 13
    if-ne p1, v0, :cond_13

    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 5
    if-eqz v1, :cond_9

    .line 7
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 9
    return-object v1

    .line 10
    :cond_9
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 15
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 17
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/CircleShape;->isHidden()Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_1c

    .line 24
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 26
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 28
    return-object v1

    .line 29
    :cond_1c
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/graphics/PointF;

    .line 37
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 39
    const/high16 v4, 0x40000000  # 2.0f

    .line 41
    div-float/2addr v3, v4

    .line 42
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 44
    div-float/2addr v1, v4

    .line 45
    const v4, 0x3f0d6239  # 0.55228f

    .line 48
    mul-float v12, v3, v4

    .line 50
    mul-float/2addr v4, v1

    .line 51
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 53
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 56
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 58
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed()Z

    .line 61
    move-result v5

    .line 62
    const/4 v13, 0x0

    .line 63
    if-eqz v5, :cond_7f

    .line 65
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 67
    neg-float v11, v1

    .line 68
    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 73
    sub-float v8, v13, v12

    .line 75
    neg-float v6, v3

    .line 76
    sub-float v21, v13, v4

    .line 78
    const/16 v20, 0x0

    .line 80
    move v15, v8

    .line 81
    move/from16 v16, v11

    .line 83
    move/from16 v17, v6

    .line 85
    move/from16 v18, v21

    .line 87
    move/from16 v19, v6

    .line 89
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 92
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 94
    add-float/2addr v4, v13

    .line 95
    const/4 v10, 0x0

    .line 96
    move v7, v4

    .line 97
    move v9, v1

    .line 98
    move v14, v11

    .line 99
    move v11, v1

    .line 100
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 103
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 105
    add-float/2addr v12, v13

    .line 106
    const/4 v11, 0x0

    .line 107
    move v6, v12

    .line 108
    move v7, v1

    .line 109
    move v8, v3

    .line 110
    move v9, v4

    .line 111
    move v10, v3

    .line 112
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 115
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 117
    const/4 v10, 0x0

    .line 118
    move v6, v3

    .line 119
    move/from16 v7, v21

    .line 121
    move v8, v12

    .line 122
    move v9, v14

    .line 123
    move v11, v14

    .line 124
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 127
    goto :goto_bd

    .line 128
    :cond_7f
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 130
    neg-float v15, v1

    .line 131
    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 134
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 136
    add-float v14, v12, v13

    .line 138
    sub-float v16, v13, v4

    .line 140
    const/4 v11, 0x0

    .line 141
    move v6, v14

    .line 142
    move v7, v15

    .line 143
    move v8, v3

    .line 144
    move/from16 v9, v16

    .line 146
    move v10, v3

    .line 147
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 150
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 152
    add-float/2addr v4, v13

    .line 153
    const/4 v10, 0x0

    .line 154
    move v6, v3

    .line 155
    move v7, v4

    .line 156
    move v8, v14

    .line 157
    move v9, v1

    .line 158
    move v11, v1

    .line 159
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 162
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 164
    sub-float v17, v13, v12

    .line 166
    neg-float v3, v3

    .line 167
    const/4 v11, 0x0

    .line 168
    move/from16 v6, v17

    .line 170
    move v7, v1

    .line 171
    move v8, v3

    .line 172
    move v9, v4

    .line 173
    move v10, v3

    .line 174
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 177
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 179
    const/16 v19, 0x0

    .line 181
    move v1, v15

    .line 182
    move v15, v3

    .line 183
    move/from16 v18, v1

    .line 185
    move/from16 v20, v1

    .line 187
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 190
    :goto_bd
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 192
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Landroid/graphics/PointF;

    .line 198
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 200
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 202
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 204
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 207
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 209
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 212
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 214
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 216
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 219
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 221
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 223
    return-object v1
.end method

.method public onValueChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/EllipseContent;->invalidate()V

    .line 4
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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

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
