.class public Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field private anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;"
        }
    .end annotation
.end field

.field private skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field private skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field private final skewMatrix1:Landroid/graphics/Matrix;

.field private final skewMatrix2:Landroid/graphics/Matrix;

.field private final skewMatrix3:Landroid/graphics/Matrix;

.field private final skewValues:[F

.field private startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 11
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_13

    .line 18
    move-object v0, v1

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    move-result-object v0

    .line 28
    :goto_1b
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 30
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_25

    .line 36
    move-object v0, v1

    .line 37
    goto :goto_2d

    .line 38
    :cond_25
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    move-result-object v0

    .line 46
    :goto_2d
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 48
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getScale()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_37

    .line 54
    move-object v0, v1

    .line 55
    goto :goto_3f

    .line 56
    :cond_37
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getScale()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    move-result-object v0

    .line 64
    :goto_3f
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_49

    .line 72
    move-object v0, v1

    .line 73
    goto :goto_51

    .line 74
    :cond_49
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 81
    move-result-object v0

    .line 82
    :goto_51
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 84
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkew()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_5b

    .line 90
    move-object v0, v1

    .line 91
    goto :goto_65

    .line 92
    :cond_5b
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkew()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 102
    :goto_65
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 104
    if-eqz v0, :cond_85

    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    .line 108
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    .line 115
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 120
    new-instance v0, Landroid/graphics/Matrix;

    .line 122
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 127
    const/16 v0, 0x9

    .line 129
    new-array v0, v0, [F

    .line 131
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 133
    goto :goto_8d

    .line 134
    :cond_85
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 136
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 138
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 140
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 142
    :goto_8d
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_95

    .line 148
    move-object v0, v1

    .line 149
    goto :goto_9f

    .line 150
    :cond_95
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 160
    :goto_9f
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 162
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_b1

    .line 168
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 178
    :cond_b1
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_c2

    .line 184
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 191
    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 194
    goto :goto_c4

    .line 195
    :cond_c2
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 197
    :goto_c4
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_d5

    .line 203
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 213
    goto :goto_d7

    .line 214
    :cond_d5
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 216
    :goto_d7
    return-void
.end method

.method private clearSkewValues()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    const/16 v1, 0x9

    .line 4
    if-ge v0, v1, :cond_d

    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 8
    const/4 v2, 0x0

    .line 9
    aput v2, v1, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 8
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 13
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 18
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 23
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 33
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 38
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 43
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 46
    return-void
.end method

.method public addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    if-eqz v0, :cond_23

    .line 33
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    if-eqz v0, :cond_31

    .line 47
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 52
    if-eqz v0, :cond_38

    .line 54
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 59
    if-eqz v0, :cond_3f

    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 64
    :cond_3f
    return-void
.end method

.method public applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    .line 3
    if-ne p1, v0, :cond_1b

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    if-nez p1, :cond_16

    .line 9
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 16
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 21
    goto/16 :goto_103

    .line 23
    :cond_16
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 26
    goto/16 :goto_103

    .line 28
    :cond_1b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_POSITION:Landroid/graphics/PointF;

    .line 30
    if-ne p1, v0, :cond_36

    .line 32
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 34
    if-nez p1, :cond_31

    .line 36
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    .line 40
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 43
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 48
    goto/16 :goto_103

    .line 50
    :cond_31
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 53
    goto/16 :goto_103

    .line 55
    :cond_36
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SCALE:Lcom/airbnb/lottie/value/ScaleXY;

    .line 57
    if-ne p1, v0, :cond_51

    .line 59
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    if-nez p1, :cond_4c

    .line 63
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 65
    new-instance v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 67
    invoke-direct {v0}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    .line 70
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 75
    goto/16 :goto_103

    .line 77
    :cond_4c
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 80
    goto/16 :goto_103

    .line 82
    :cond_51
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ROTATION:Ljava/lang/Float;

    .line 84
    const/4 v1, 0x0

    .line 85
    if-ne p1, v0, :cond_6c

    .line 87
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 89
    if-nez p1, :cond_67

    .line 91
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 93
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 100
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 102
    goto/16 :goto_103

    .line 104
    :cond_67
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 107
    goto/16 :goto_103

    .line 109
    :cond_6c
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_OPACITY:Ljava/lang/Integer;

    .line 111
    const/16 v2, 0x64

    .line 113
    if-ne p1, v0, :cond_88

    .line 115
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 117
    if-nez p1, :cond_83

    .line 119
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 128
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 130
    goto/16 :goto_103

    .line 132
    :cond_83
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 135
    goto/16 :goto_103

    .line 137
    :cond_88
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_START_OPACITY:Ljava/lang/Float;

    .line 139
    if-ne p1, v0, :cond_a2

    .line 141
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 143
    if-eqz v0, :cond_a2

    .line 145
    if-nez v0, :cond_9e

    .line 147
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v0

    .line 153
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 156
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 158
    goto :goto_103

    .line 159
    :cond_9e
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 162
    goto :goto_103

    .line 163
    :cond_a2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_END_OPACITY:Ljava/lang/Float;

    .line 165
    if-ne p1, v0, :cond_bc

    .line 167
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 169
    if-eqz v0, :cond_bc

    .line 171
    if-nez v0, :cond_b8

    .line 173
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v0

    .line 179
    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 182
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 184
    goto :goto_103

    .line 185
    :cond_b8
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 188
    goto :goto_103

    .line 189
    :cond_bc
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW:Ljava/lang/Float;

    .line 191
    if-ne p1, v0, :cond_e0

    .line 193
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 195
    if-eqz v0, :cond_e0

    .line 197
    if-nez v0, :cond_da

    .line 199
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 201
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 203
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    move-result-object v1

    .line 207
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 210
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 213
    move-result-object v0

    .line 214
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 217
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 219
    :cond_da
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 221
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 224
    goto :goto_103

    .line 225
    :cond_e0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

    .line 227
    if-ne p1, v0, :cond_105

    .line 229
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 231
    if-eqz p1, :cond_105

    .line 233
    if-nez p1, :cond_fe

    .line 235
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 237
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 239
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    move-result-object v1

    .line 243
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 246
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 249
    move-result-object v0

    .line 250
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 253
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 255
    :cond_fe
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 257
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 260
    :goto_103
    const/4 p1, 0x1

    .line 261
    return p1

    .line 262
    :cond_105
    const/4 p1, 0x0

    .line 263
    return p1
.end method

.method public getEndOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_23

    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/graphics/PointF;

    .line 17
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 19
    cmpl-float v3, v2, v1

    .line 21
    if-nez v3, :cond_1c

    .line 23
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 25
    cmpl-float v3, v3, v1

    .line 27
    if-eqz v3, :cond_23

    .line 29
    :cond_1c
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 31
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 33
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    if-eqz v0, :cond_45

    .line 40
    instance-of v2, v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 42
    if-eqz v2, :cond_36

    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Float;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 53
    move-result v0

    .line 54
    goto :goto_3c

    .line 55
    :cond_36
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 57
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 60
    move-result v0

    .line 61
    :goto_3c
    cmpl-float v2, v0, v1

    .line 63
    if-eqz v2, :cond_45

    .line 65
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 67
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 70
    :cond_45
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 72
    const/high16 v2, 0x3f800000  # 1.0f

    .line 74
    if-eqz v0, :cond_df

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 78
    const/high16 v3, 0x42b40000  # 90.0f

    .line 80
    if-nez v0, :cond_53

    .line 82
    move v0, v1

    .line 83
    goto :goto_63

    .line 84
    :cond_53
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 87
    move-result v0

    .line 88
    neg-float v0, v0

    .line 89
    add-float/2addr v0, v3

    .line 90
    float-to-double v4, v0

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 94
    move-result-wide v4

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 98
    move-result-wide v4

    .line 99
    double-to-float v0, v4

    .line 100
    :goto_63
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 102
    if-nez v4, :cond_69

    .line 104
    move v3, v2

    .line 105
    goto :goto_79

    .line 106
    :cond_69
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 109
    move-result v4

    .line 110
    neg-float v4, v4

    .line 111
    add-float/2addr v4, v3

    .line 112
    float-to-double v3, v4

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 116
    move-result-wide v3

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 120
    move-result-wide v3

    .line 121
    double-to-float v3, v3

    .line 122
    :goto_79
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 124
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 127
    move-result v4

    .line 128
    float-to-double v4, v4

    .line 129
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 132
    move-result-wide v4

    .line 133
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    .line 136
    move-result-wide v4

    .line 137
    double-to-float v4, v4

    .line 138
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 141
    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 143
    const/4 v6, 0x0

    .line 144
    aput v0, v5, v6

    .line 146
    const/4 v7, 0x1

    .line 147
    aput v3, v5, v7

    .line 149
    neg-float v8, v3

    .line 150
    const/4 v9, 0x3

    .line 151
    aput v8, v5, v9

    .line 153
    const/4 v10, 0x4

    .line 154
    aput v0, v5, v10

    .line 156
    const/16 v11, 0x8

    .line 158
    aput v2, v5, v11

    .line 160
    iget-object v12, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 162
    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 165
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 168
    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 170
    aput v2, v5, v6

    .line 172
    aput v4, v5, v9

    .line 174
    aput v2, v5, v10

    .line 176
    aput v2, v5, v11

    .line 178
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 180
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 183
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 186
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 188
    aput v0, v4, v6

    .line 190
    aput v8, v4, v7

    .line 192
    aput v3, v4, v9

    .line 194
    aput v0, v4, v10

    .line 196
    aput v2, v4, v11

    .line 198
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 200
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 203
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 205
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 207
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 210
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 212
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 214
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 217
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 219
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 221
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 224
    :cond_df
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 226
    if-eqz v0, :cond_106

    .line 228
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 234
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    .line 237
    move-result v3

    .line 238
    cmpl-float v3, v3, v2

    .line 240
    if-nez v3, :cond_f9

    .line 242
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    .line 245
    move-result v3

    .line 246
    cmpl-float v2, v3, v2

    .line 248
    if-eqz v2, :cond_106

    .line 250
    :cond_f9
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 252
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    .line 255
    move-result v3

    .line 256
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    .line 259
    move-result v0

    .line 260
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 263
    :cond_106
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 265
    if-eqz v0, :cond_125

    .line 267
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/graphics/PointF;

    .line 273
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 275
    cmpl-float v3, v2, v1

    .line 277
    if-nez v3, :cond_11c

    .line 279
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 281
    cmpl-float v1, v3, v1

    .line 283
    if-eqz v1, :cond_125

    .line 285
    :cond_11c
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 287
    neg-float v2, v2

    .line 288
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 290
    neg-float v0, v0

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 294
    :cond_125
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 296
    return-object v0
.end method

.method public getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/PointF;

    .line 14
    :goto_d
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 16
    if-nez v2, :cond_13

    .line 18
    move-object v2, v1

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/value/ScaleXY;

    .line 26
    :goto_19
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 28
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 31
    if-eqz v0, :cond_2b

    .line 33
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 35
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 37
    mul-float/2addr v4, p1

    .line 38
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 40
    mul-float/2addr v0, p1

    .line 41
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 44
    :cond_2b
    if-eqz v2, :cond_47

    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 48
    invoke-virtual {v2}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    .line 51
    move-result v3

    .line 52
    float-to-double v3, v3

    .line 53
    float-to-double v5, p1

    .line 54
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 57
    move-result-wide v3

    .line 58
    double-to-float v3, v3

    .line 59
    invoke-virtual {v2}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    .line 62
    move-result v2

    .line 63
    float-to-double v7, v2

    .line 64
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 67
    move-result-wide v4

    .line 68
    double-to-float v2, v4

    .line 69
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 72
    :cond_47
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    if-eqz v0, :cond_72

    .line 76
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Float;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 85
    move-result v0

    .line 86
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 88
    if-nez v2, :cond_5a

    .line 90
    goto :goto_60

    .line 91
    :cond_5a
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/graphics/PointF;

    .line 97
    :goto_60
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 99
    mul-float/2addr v0, p1

    .line 100
    const/4 p1, 0x0

    .line 101
    if-nez v1, :cond_68

    .line 103
    move v3, p1

    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 107
    :goto_6a
    if-nez v1, :cond_6d

    .line 109
    goto :goto_6f

    .line 110
    :cond_6d
    iget p1, v1, Landroid/graphics/PointF;->y:F

    .line 112
    :goto_6f
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 115
    :cond_72
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 117
    return-object p1
.end method

.method public getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    return-object v0
.end method

.method public getStartOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    return-object v0
.end method

.method public setProgress(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    if-eqz v0, :cond_23

    .line 33
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    if-eqz v0, :cond_31

    .line 47
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 52
    if-eqz v0, :cond_38

    .line 54
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 59
    if-eqz v0, :cond_3f

    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 64
    :cond_3f
    return-void
.end method
