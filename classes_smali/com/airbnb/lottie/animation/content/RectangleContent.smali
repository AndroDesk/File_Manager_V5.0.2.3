.class public Lcom/airbnb/lottie/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;


# instance fields
.field private final cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

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

.field private final rect:Landroid/graphics/RectF;

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
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RectangleShape;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 20
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 25
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->isHidden()Z

    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 49
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getCornerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    move-result-object p3

    .line 67
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 72
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 75
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 78
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 87
    return-void
.end method

.method private invalidate()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->RECTANGLE_SIZE:Landroid/graphics/PointF;

    .line 3
    if-ne p1, v0, :cond_a

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 10
    goto :goto_1d

    .line 11
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 13
    if-ne p1, v0, :cond_14

    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->CORNER_RADIUS:Ljava/lang/Float;

    .line 23
    if-ne p1, v0, :cond_1d

    .line 25
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 5
    if-eqz v1, :cond_9

    .line 7
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 9
    return-object v1

    .line 10
    :cond_9
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 15
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_18

    .line 20
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 22
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 24
    return-object v1

    .line 25
    :cond_18
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/PointF;

    .line 33
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 35
    const/high16 v4, 0x40000000  # 2.0f

    .line 37
    div-float/2addr v3, v4

    .line 38
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 40
    div-float/2addr v1, v4

    .line 41
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 43
    const/4 v6, 0x0

    .line 44
    if-nez v5, :cond_2f

    .line 46
    move v5, v6

    .line 47
    goto :goto_35

    .line 48
    :cond_2f
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 50
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 53
    move-result v5

    .line 54
    :goto_35
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 57
    move-result v7

    .line 58
    cmpl-float v8, v5, v7

    .line 60
    if-lez v8, :cond_3e

    .line 62
    move v5, v7

    .line 63
    :cond_3e
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 65
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Landroid/graphics/PointF;

    .line 71
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 73
    iget v9, v7, Landroid/graphics/PointF;->x:F

    .line 75
    add-float/2addr v9, v3

    .line 76
    iget v10, v7, Landroid/graphics/PointF;->y:F

    .line 78
    sub-float/2addr v10, v1

    .line 79
    add-float/2addr v10, v5

    .line 80
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 85
    iget v9, v7, Landroid/graphics/PointF;->x:F

    .line 87
    add-float/2addr v9, v3

    .line 88
    iget v10, v7, Landroid/graphics/PointF;->y:F

    .line 90
    add-float/2addr v10, v1

    .line 91
    sub-float/2addr v10, v5

    .line 92
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 95
    cmpl-float v8, v5, v6

    .line 97
    const/4 v9, 0x0

    .line 98
    const/high16 v10, 0x42b40000  # 90.0f

    .line 100
    if-lez v8, :cond_80

    .line 102
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 104
    iget v12, v7, Landroid/graphics/PointF;->x:F

    .line 106
    add-float v13, v12, v3

    .line 108
    mul-float v14, v5, v4

    .line 110
    sub-float/2addr v13, v14

    .line 111
    iget v15, v7, Landroid/graphics/PointF;->y:F

    .line 113
    add-float v16, v15, v1

    .line 115
    sub-float v14, v16, v14

    .line 117
    add-float/2addr v12, v3

    .line 118
    add-float/2addr v15, v1

    .line 119
    invoke-virtual {v11, v13, v14, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 124
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 126
    invoke-virtual {v11, v12, v6, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 129
    :cond_80
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 131
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 133
    sub-float/2addr v11, v3

    .line 134
    add-float/2addr v11, v5

    .line 135
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 137
    add-float/2addr v12, v1

    .line 138
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    if-lez v8, :cond_a8

    .line 143
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 145
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 147
    sub-float v12, v11, v3

    .line 149
    iget v13, v7, Landroid/graphics/PointF;->y:F

    .line 151
    add-float v14, v13, v1

    .line 153
    mul-float v15, v5, v4

    .line 155
    sub-float/2addr v14, v15

    .line 156
    sub-float/2addr v11, v3

    .line 157
    add-float/2addr v11, v15

    .line 158
    add-float/2addr v13, v1

    .line 159
    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 164
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 166
    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 169
    :cond_a8
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 171
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 173
    sub-float/2addr v11, v3

    .line 174
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 176
    sub-float/2addr v12, v1

    .line 177
    add-float/2addr v12, v5

    .line 178
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    if-lez v8, :cond_d2

    .line 183
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 185
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 187
    sub-float v12, v11, v3

    .line 189
    iget v13, v7, Landroid/graphics/PointF;->y:F

    .line 191
    sub-float v14, v13, v1

    .line 193
    sub-float/2addr v11, v3

    .line 194
    mul-float v15, v5, v4

    .line 196
    add-float/2addr v11, v15

    .line 197
    sub-float/2addr v13, v1

    .line 198
    add-float/2addr v13, v15

    .line 199
    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 204
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 206
    const/high16 v12, 0x43340000  # 180.0f

    .line 208
    invoke-virtual {v6, v11, v12, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 211
    :cond_d2
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 213
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 215
    add-float/2addr v11, v3

    .line 216
    sub-float/2addr v11, v5

    .line 217
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 219
    sub-float/2addr v12, v1

    .line 220
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    if-lez v8, :cond_fb

    .line 225
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 227
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 229
    add-float v11, v8, v3

    .line 231
    mul-float/2addr v5, v4

    .line 232
    sub-float/2addr v11, v5

    .line 233
    iget v4, v7, Landroid/graphics/PointF;->y:F

    .line 235
    sub-float v7, v4, v1

    .line 237
    add-float/2addr v8, v3

    .line 238
    sub-float/2addr v4, v1

    .line 239
    add-float/2addr v4, v5

    .line 240
    invoke-virtual {v6, v11, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 243
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 245
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 247
    const/high16 v4, 0x43870000  # 270.0f

    .line 249
    invoke-virtual {v1, v3, v4, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 252
    :cond_fb
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 254
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 257
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 259
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 261
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 264
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 266
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 268
    return-object v1
.end method

.method public onValueChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/RectangleContent;->invalidate()V

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

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
