.class public Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final hidden:Z

.field private final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 11
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 13
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 20
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getName()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 32
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->isHidden()Z

    .line 35
    move-result v0

    .line 36
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 48
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 68
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 75
    move-result-object v3

    .line 76
    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 85
    move-result-object v4

    .line 86
    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 88
    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 90
    if-ne p1, v5, :cond_70

    .line 92
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 99
    move-result-object v6

    .line 100
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 102
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 109
    move-result-object p3

    .line 110
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 112
    goto :goto_75

    .line 113
    :cond_70
    const/4 p3, 0x0

    .line 114
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 116
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 118
    :goto_75
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 121
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 124
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 127
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 130
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 133
    if-ne p1, v5, :cond_90

    .line 135
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 137
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 140
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 142
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 145
    :cond_90
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 148
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 151
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 154
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 157
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 160
    if-ne p1, v5, :cond_ab

    .line 162
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 164
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 167
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 169
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 172
    :cond_ab
    return-void
.end method

.method private createPolygonPath()V
    .registers 32

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 5
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Float;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v1

    .line 15
    float-to-double v1, v1

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 19
    move-result-wide v1

    .line 20
    double-to-int v1, v1

    .line 21
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 23
    if-nez v2, :cond_1b

    .line 25
    const-wide/16 v2, 0x0

    .line 27
    goto :goto_26

    .line 28
    :cond_1b
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Float;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 37
    move-result v2

    .line 38
    float-to-double v2, v2

    .line 39
    :goto_26
    const-wide v4, 0x4056800000000000L  # 90.0

    .line 44
    sub-double/2addr v2, v4

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 48
    move-result-wide v2

    .line 49
    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    .line 54
    int-to-double v6, v1

    .line 55
    div-double/2addr v4, v6

    .line 56
    double-to-float v1, v4

    .line 57
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/Float;

    .line 65
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 68
    move-result v4

    .line 69
    const/high16 v5, 0x42c80000  # 100.0f

    .line 71
    div-float/2addr v4, v5

    .line 72
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Ljava/lang/Float;

    .line 80
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 83
    move-result v5

    .line 84
    float-to-double v8, v5

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 88
    move-result-wide v10

    .line 89
    mul-double/2addr v10, v8

    .line 90
    double-to-float v10, v10

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 94
    move-result-wide v11

    .line 95
    mul-double/2addr v11, v8

    .line 96
    double-to-float v11, v11

    .line 97
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 99
    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    float-to-double v12, v1

    .line 103
    add-double/2addr v2, v12

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 107
    move-result-wide v6

    .line 108
    const/4 v1, 0x0

    .line 109
    :goto_6c
    int-to-double v14, v1

    .line 110
    cmpg-double v14, v14, v6

    .line 112
    if-gez v14, :cond_f3

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 117
    move-result-wide v14

    .line 118
    mul-double/2addr v14, v8

    .line 119
    double-to-float v14, v14

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 123
    move-result-wide v15

    .line 124
    move-wide/from16 v23, v6

    .line 126
    mul-double v6, v15, v8

    .line 128
    double-to-float v6, v6

    .line 129
    const/4 v7, 0x0

    .line 130
    cmpl-float v7, v4, v7

    .line 132
    if-eqz v7, :cond_d9

    .line 134
    move-wide/from16 v25, v8

    .line 136
    float-to-double v7, v11

    .line 137
    move v9, v1

    .line 138
    move-wide/from16 v27, v2

    .line 140
    float-to-double v1, v10

    .line 141
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 144
    move-result-wide v1

    .line 145
    const-wide v7, 0x3ff921fb54442d18L  # 1.5707963267948966

    .line 150
    sub-double/2addr v1, v7

    .line 151
    double-to-float v1, v1

    .line 152
    float-to-double v1, v1

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 156
    move-result-wide v7

    .line 157
    double-to-float v3, v7

    .line 158
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 161
    move-result-wide v1

    .line 162
    double-to-float v1, v1

    .line 163
    float-to-double v7, v6

    .line 164
    move-wide/from16 v29, v12

    .line 166
    float-to-double v12, v14

    .line 167
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 170
    move-result-wide v7

    .line 171
    const-wide v12, 0x3ff921fb54442d18L  # 1.5707963267948966

    .line 176
    sub-double/2addr v7, v12

    .line 177
    double-to-float v2, v7

    .line 178
    float-to-double v7, v2

    .line 179
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 182
    move-result-wide v12

    .line 183
    double-to-float v2, v12

    .line 184
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 187
    move-result-wide v7

    .line 188
    double-to-float v7, v7

    .line 189
    mul-float v8, v5, v4

    .line 191
    const/high16 v12, 0x3e800000  # 0.25f

    .line 193
    mul-float/2addr v8, v12

    .line 194
    mul-float/2addr v3, v8

    .line 195
    mul-float/2addr v1, v8

    .line 196
    mul-float/2addr v2, v8

    .line 197
    mul-float/2addr v8, v7

    .line 198
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 200
    sub-float v17, v10, v3

    .line 202
    sub-float v18, v11, v1

    .line 204
    add-float v19, v14, v2

    .line 206
    add-float v20, v6, v8

    .line 208
    move-object/from16 v16, v7

    .line 210
    move/from16 v21, v14

    .line 212
    move/from16 v22, v6

    .line 214
    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 217
    goto :goto_e5

    .line 218
    :cond_d9
    move-wide/from16 v27, v2

    .line 220
    move-wide/from16 v25, v8

    .line 222
    move-wide/from16 v29, v12

    .line 224
    move v9, v1

    .line 225
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 227
    invoke-virtual {v1, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    :goto_e5
    add-double v2, v27, v29

    .line 232
    add-int/lit8 v1, v9, 0x1

    .line 234
    move v11, v6

    .line 235
    move v10, v14

    .line 236
    move-wide/from16 v6, v23

    .line 238
    move-wide/from16 v8, v25

    .line 240
    move-wide/from16 v12, v29

    .line 242
    goto/16 :goto_6c

    .line 244
    :cond_f3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 246
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Landroid/graphics/PointF;

    .line 252
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 254
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 256
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 258
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 261
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 263
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 266
    return-void
.end method

.method private createStarPath()V
    .registers 42

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 5
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Float;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v1

    .line 15
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    if-nez v2, :cond_15

    .line 19
    const-wide/16 v2, 0x0

    .line 21
    goto :goto_20

    .line 22
    :cond_15
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Float;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 31
    move-result v2

    .line 32
    float-to-double v2, v2

    .line 33
    :goto_20
    const-wide v4, 0x4056800000000000L  # 90.0

    .line 38
    sub-double/2addr v2, v4

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 42
    move-result-wide v2

    .line 43
    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    .line 48
    float-to-double v6, v1

    .line 49
    div-double/2addr v4, v6

    .line 50
    double-to-float v4, v4

    .line 51
    const/high16 v5, 0x40000000  # 2.0f

    .line 53
    div-float v5, v4, v5

    .line 55
    float-to-int v8, v1

    .line 56
    int-to-float v8, v8

    .line 57
    sub-float/2addr v1, v8

    .line 58
    const/4 v8, 0x0

    .line 59
    cmpl-float v9, v1, v8

    .line 61
    if-eqz v9, :cond_44

    .line 63
    const/high16 v10, 0x3f800000  # 1.0f

    .line 65
    sub-float/2addr v10, v1

    .line 66
    mul-float/2addr v10, v5

    .line 67
    float-to-double v10, v10

    .line 68
    add-double/2addr v2, v10

    .line 69
    :cond_44
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 71
    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v10

    .line 75
    check-cast v10, Ljava/lang/Float;

    .line 77
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 80
    move-result v10

    .line 81
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 83
    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 86
    move-result-object v11

    .line 87
    check-cast v11, Ljava/lang/Float;

    .line 89
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 92
    move-result v11

    .line 93
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 95
    const/high16 v13, 0x42c80000  # 100.0f

    .line 97
    if-eqz v12, :cond_6e

    .line 99
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Ljava/lang/Float;

    .line 105
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 108
    move-result v12

    .line 109
    div-float/2addr v12, v13

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    move v12, v8

    .line 112
    :goto_6f
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 114
    if-eqz v14, :cond_7e

    .line 116
    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Ljava/lang/Float;

    .line 122
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 125
    move-result v8

    .line 126
    div-float/2addr v8, v13

    .line 127
    :cond_7e
    if-eqz v9, :cond_a4

    .line 129
    invoke-static {v10, v11, v1, v11}, Lf0/e;->a(FFFF)F

    .line 132
    move-result v13

    .line 133
    float-to-double v14, v13

    .line 134
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 137
    move-result-wide v16

    .line 138
    move/from16 v19, v8

    .line 140
    move/from16 v18, v9

    .line 142
    mul-double v8, v16, v14

    .line 144
    double-to-float v8, v8

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 148
    move-result-wide v16

    .line 149
    mul-double v14, v14, v16

    .line 151
    double-to-float v9, v14

    .line 152
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 154
    invoke-virtual {v14, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 157
    mul-float v14, v4, v1

    .line 159
    const/high16 v15, 0x40000000  # 2.0f

    .line 161
    div-float/2addr v14, v15

    .line 162
    float-to-double v14, v14

    .line 163
    add-double/2addr v2, v14

    .line 164
    goto :goto_c2

    .line 165
    :cond_a4
    move/from16 v19, v8

    .line 167
    move/from16 v18, v9

    .line 169
    float-to-double v8, v10

    .line 170
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 173
    move-result-wide v13

    .line 174
    mul-double/2addr v13, v8

    .line 175
    double-to-float v13, v13

    .line 176
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 179
    move-result-wide v14

    .line 180
    mul-double/2addr v14, v8

    .line 181
    double-to-float v9, v14

    .line 182
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 184
    invoke-virtual {v8, v13, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 187
    float-to-double v14, v5

    .line 188
    add-double/2addr v2, v14

    .line 189
    const/4 v8, 0x0

    .line 190
    move/from16 v40, v13

    .line 192
    move v13, v8

    .line 193
    move/from16 v8, v40

    .line 195
    :goto_c2
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 198
    move-result-wide v6

    .line 199
    const-wide/high16 v14, 0x4000000000000000L  # 2.0

    .line 201
    mul-double/2addr v6, v14

    .line 202
    const/16 v16, 0x0

    .line 204
    move/from16 v20, v10

    .line 206
    move/from16 v21, v11

    .line 208
    move/from16 v14, v16

    .line 210
    move v15, v14

    .line 211
    :goto_d2
    int-to-double v10, v14

    .line 212
    cmpg-double v22, v10, v6

    .line 214
    if-gez v22, :cond_1dc

    .line 216
    if-eqz v15, :cond_dc

    .line 218
    move/from16 v22, v20

    .line 220
    goto :goto_de

    .line 221
    :cond_dc
    move/from16 v22, v21

    .line 223
    :goto_de
    const/16 v23, 0x0

    .line 225
    cmpl-float v23, v13, v23

    .line 227
    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    .line 229
    if-eqz v23, :cond_f9

    .line 231
    sub-double v24, v6, v16

    .line 233
    cmpl-double v24, v10, v24

    .line 235
    if-nez v24, :cond_f9

    .line 237
    mul-float v24, v4, v1

    .line 239
    const/high16 v25, 0x40000000  # 2.0f

    .line 241
    div-float v24, v24, v25

    .line 243
    move/from16 v40, v24

    .line 245
    move/from16 v24, v4

    .line 247
    move/from16 v4, v40

    .line 249
    goto :goto_fc

    .line 250
    :cond_f9
    move/from16 v24, v4

    .line 252
    move v4, v5

    .line 253
    :goto_fc
    const-wide/high16 v25, 0x3ff0000000000000L  # 1.0

    .line 255
    if-eqz v23, :cond_10c

    .line 257
    sub-double v27, v6, v25

    .line 259
    cmpl-double v23, v10, v27

    .line 261
    if-nez v23, :cond_10c

    .line 263
    move/from16 v22, v4

    .line 265
    move/from16 v23, v5

    .line 267
    move v5, v13

    .line 268
    goto :goto_112

    .line 269
    :cond_10c
    move/from16 v23, v5

    .line 271
    move/from16 v5, v22

    .line 273
    move/from16 v22, v4

    .line 275
    :goto_112
    float-to-double v4, v5

    .line 276
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 279
    move-result-wide v27

    .line 280
    move-wide/from16 v29, v10

    .line 282
    mul-double v10, v27, v4

    .line 284
    double-to-float v10, v10

    .line 285
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 288
    move-result-wide v27

    .line 289
    mul-double v4, v4, v27

    .line 291
    double-to-float v4, v4

    .line 292
    const/4 v5, 0x0

    .line 293
    cmpl-float v11, v12, v5

    .line 295
    if-nez v11, :cond_13c

    .line 297
    cmpl-float v5, v19, v5

    .line 299
    if-nez v5, :cond_13c

    .line 301
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 303
    invoke-virtual {v5, v10, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    move-wide/from16 v27, v2

    .line 308
    move/from16 v38, v4

    .line 310
    move v5, v12

    .line 311
    move/from16 v39, v13

    .line 313
    :goto_138
    move/from16 v2, v22

    .line 315
    goto/16 :goto_1c9

    .line 317
    :cond_13c
    move v5, v12

    .line 318
    float-to-double v11, v9

    .line 319
    move-wide/from16 v27, v2

    .line 321
    float-to-double v2, v8

    .line 322
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 325
    move-result-wide v2

    .line 326
    const-wide v11, 0x3ff921fb54442d18L  # 1.5707963267948966

    .line 331
    sub-double/2addr v2, v11

    .line 332
    double-to-float v2, v2

    .line 333
    float-to-double v2, v2

    .line 334
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 337
    move-result-wide v11

    .line 338
    double-to-float v11, v11

    .line 339
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 342
    move-result-wide v2

    .line 343
    double-to-float v2, v2

    .line 344
    move v3, v13

    .line 345
    float-to-double v12, v4

    .line 346
    move/from16 v39, v3

    .line 348
    move/from16 v38, v4

    .line 350
    float-to-double v3, v10

    .line 351
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 354
    move-result-wide v3

    .line 355
    const-wide v12, 0x3ff921fb54442d18L  # 1.5707963267948966

    .line 360
    sub-double/2addr v3, v12

    .line 361
    double-to-float v3, v3

    .line 362
    float-to-double v3, v3

    .line 363
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 366
    move-result-wide v12

    .line 367
    double-to-float v12, v12

    .line 368
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 371
    move-result-wide v3

    .line 372
    double-to-float v3, v3

    .line 373
    if-eqz v15, :cond_178

    .line 375
    move v4, v5

    .line 376
    goto :goto_17a

    .line 377
    :cond_178
    move/from16 v4, v19

    .line 379
    :goto_17a
    if-eqz v15, :cond_17f

    .line 381
    move/from16 v13, v19

    .line 383
    goto :goto_180

    .line 384
    :cond_17f
    move v13, v5

    .line 385
    :goto_180
    if-eqz v15, :cond_185

    .line 387
    move/from16 v31, v21

    .line 389
    goto :goto_187

    .line 390
    :cond_185
    move/from16 v31, v20

    .line 392
    :goto_187
    if-eqz v15, :cond_18c

    .line 394
    move/from16 v32, v20

    .line 396
    goto :goto_18e

    .line 397
    :cond_18c
    move/from16 v32, v21

    .line 399
    :goto_18e
    mul-float v31, v31, v4

    .line 401
    const v4, 0x3ef4e26d  # 0.47829f

    .line 404
    mul-float v31, v31, v4

    .line 406
    mul-float v11, v11, v31

    .line 408
    mul-float v31, v31, v2

    .line 410
    mul-float v32, v32, v13

    .line 412
    mul-float v32, v32, v4

    .line 414
    mul-float v12, v12, v32

    .line 416
    mul-float v32, v32, v3

    .line 418
    if-eqz v18, :cond_1b2

    .line 420
    if-nez v14, :cond_1a9

    .line 422
    mul-float/2addr v11, v1

    .line 423
    mul-float v31, v31, v1

    .line 425
    goto :goto_1b2

    .line 426
    :cond_1a9
    sub-double v2, v6, v25

    .line 428
    cmpl-double v2, v29, v2

    .line 430
    if-nez v2, :cond_1b2

    .line 432
    mul-float/2addr v12, v1

    .line 433
    mul-float v32, v32, v1

    .line 435
    :cond_1b2
    :goto_1b2
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 437
    sub-float v3, v8, v11

    .line 439
    sub-float v33, v9, v31

    .line 441
    add-float v34, v10, v12

    .line 443
    add-float v35, v38, v32

    .line 445
    move-object/from16 v31, v2

    .line 447
    move/from16 v32, v3

    .line 449
    move/from16 v36, v10

    .line 451
    move/from16 v37, v38

    .line 453
    invoke-virtual/range {v31 .. v37}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 456
    goto/16 :goto_138

    .line 458
    :goto_1c9
    float-to-double v2, v2

    .line 459
    add-double v2, v27, v2

    .line 461
    xor-int/lit8 v15, v15, 0x1

    .line 463
    add-int/lit8 v14, v14, 0x1

    .line 465
    move v12, v5

    .line 466
    move v8, v10

    .line 467
    move/from16 v5, v23

    .line 469
    move/from16 v4, v24

    .line 471
    move/from16 v9, v38

    .line 473
    move/from16 v13, v39

    .line 475
    goto/16 :goto_d2

    .line 477
    :cond_1dc
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 479
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Landroid/graphics/PointF;

    .line 485
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 487
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 489
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 491
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 494
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 496
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 499
    return-void
.end method

.method private invalidate()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    .line 3
    if-ne p1, v0, :cond_a

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 7
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 10
    goto :goto_49

    .line 11
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    .line 13
    if-ne p1, v0, :cond_14

    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 20
    goto :goto_49

    .line 21
    :cond_14
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 23
    if-ne p1, v0, :cond_1e

    .line 25
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 30
    goto :goto_49

    .line 31
    :cond_1e
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    .line 33
    if-ne p1, v0, :cond_2a

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 37
    if-eqz v0, :cond_2a

    .line 39
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 42
    goto :goto_49

    .line 43
    :cond_2a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    .line 45
    if-ne p1, v0, :cond_34

    .line 47
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 49
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 52
    goto :goto_49

    .line 53
    :cond_34
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    .line 55
    if-ne p1, v0, :cond_40

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    if-eqz v0, :cond_40

    .line 61
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 64
    goto :goto_49

    .line 65
    :cond_40
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    .line 67
    if-ne p1, v0, :cond_49

    .line 69
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 71
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 74
    :cond_49
    :goto_49
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_16

    .line 18
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 22
    return-object v0

    .line 23
    :cond_16
    sget-object v0, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v2

    .line 31
    aget v0, v0, v2

    .line 33
    if-eq v0, v1, :cond_2a

    .line 35
    const/4 v2, 0x2

    .line 36
    if-eq v0, v2, :cond_26

    .line 38
    goto :goto_2d

    .line 39
    :cond_26
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createPolygonPath()V

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createStarPath()V

    .line 46
    :goto_2d
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 53
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 55
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 58
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 62
    return-object v0
.end method

.method public onValueChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->invalidate()V

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

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
