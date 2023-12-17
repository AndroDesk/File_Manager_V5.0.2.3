.class public Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# static fields
.field private static ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    const-string v0, "a"

    .line 3
    const-string v1, "p"

    .line 5
    const-string v2, "s"

    .line 7
    const-string v3, "rz"

    .line 9
    const-string v4, "r"

    .line 11
    const-string v5, "o"

    .line 13
    const-string v6, "so"

    .line 15
    const-string v7, "eo"

    .line 17
    const-string v8, "sk"

    .line 19
    const-string v9, "sa"

    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 31
    const-string v0, "k"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1e

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1f

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->getKeyframes()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 22
    check-cast p0, Landroid/graphics/PointF;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1f

    .line 31
    :cond_1e
    const/4 v0, 0x1

    .line 32
    :cond_1f
    return v0
.end method

.method private static isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_22

    .line 4
    instance-of v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    .line 6
    if-nez v1, :cond_23

    .line 8
    invoke-interface {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_23

    .line 14
    invoke-interface {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 24
    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 26
    check-cast p0, Landroid/graphics/PointF;

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_23

    .line 35
    :cond_22
    const/4 v0, 0x1

    .line 36
    :cond_23
    return v0
.end method

.method private static isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_20

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_21

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 22
    check-cast p0, Ljava/lang/Float;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x0

    .line 29
    cmpl-float p0, p0, v1

    .line 31
    if-nez p0, :cond_21

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    :cond_21
    return v0
.end method

.method private static isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1f

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->isStatic()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_20

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->getKeyframes()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 22
    check-cast p0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 24
    const/high16 v1, 0x3f800000  # 1.0f

    .line 26
    invoke-virtual {p0, v1, v1}, Lcom/airbnb/lottie/value/ScaleXY;->equals(FF)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_20

    .line 32
    :cond_1f
    const/4 v0, 0x1

    .line 33
    :cond_20
    return v0
.end method

.method private static isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_20

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_21

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 22
    check-cast p0, Ljava/lang/Float;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x0

    .line 29
    cmpl-float p0, p0, v1

    .line 31
    if-nez p0, :cond_21

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    :cond_21
    return v0
.end method

.method private static isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_20

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_21

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 22
    check-cast p0, Ljava/lang/Float;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x0

    .line 29
    cmpl-float p0, p0, v1

    .line 31
    if-nez p0, :cond_21

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    :cond_21
    return v0
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 11
    const/4 v9, 0x0

    .line 12
    if-ne v1, v2, :cond_10

    .line 14
    const/4 v1, 0x1

    .line 15
    move v10, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v10, v9

    .line 18
    :goto_11
    if-eqz v10, :cond_16

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 23
    :cond_16
    const/4 v1, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0x0

    .line 30
    const/16 v22, 0x0

    .line 32
    const/16 v23, 0x0

    .line 34
    const/16 v24, 0x0

    .line 36
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_fa

    .line 42
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 44
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 47
    move-result v2

    .line 48
    packed-switch v2, :pswitch_data_148

    .line 51
    move v2, v9

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 58
    goto :goto_23

    .line 59
    :pswitch_3a  #0x9
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 62
    move-result-object v16

    .line 63
    goto :goto_23

    .line 64
    :pswitch_3f  #0x8
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 67
    move-result-object v15

    .line 68
    goto :goto_23

    .line 69
    :pswitch_44  #0x7
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 72
    move-result-object v24

    .line 73
    goto :goto_23

    .line 74
    :pswitch_49  #0x6
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 77
    move-result-object v23

    .line 78
    goto :goto_23

    .line 79
    :pswitch_4e  #0x5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 82
    move-result-object v22

    .line 83
    goto :goto_23

    .line 84
    :pswitch_53  #0x3
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 86
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 89
    :pswitch_58  #0x4
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 92
    move-result-object v17

    .line 93
    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v1, :cond_90

    .line 104
    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    .line 107
    move-result-object v7

    .line 108
    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    .line 110
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 113
    move-result-object v3

    .line 114
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    move-result-object v4

    .line 118
    const/4 v5, 0x0

    .line 119
    const/16 v18, 0x0

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 128
    move-result-object v19

    .line 129
    move-object v1, v6

    .line 130
    move-object/from16 v2, p1

    .line 132
    move-object v11, v6

    .line 133
    move/from16 v6, v18

    .line 135
    move-object v9, v7

    .line 136
    move-object/from16 v7, v19

    .line 138
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 141
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_c2

    .line 145
    :cond_90
    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    .line 148
    move-result-object v1

    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 156
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 158
    if-nez v1, :cond_c2

    .line 160
    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    .line 163
    move-result-object v9

    .line 164
    new-instance v11, Lcom/airbnb/lottie/value/Keyframe;

    .line 166
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    move-result-object v3

    .line 170
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 173
    move-result-object v4

    .line 174
    const/4 v5, 0x0

    .line 175
    const/4 v6, 0x0

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 179
    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 183
    move-result-object v7

    .line 184
    move-object v1, v11

    .line 185
    move-object/from16 v2, p1

    .line 187
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 190
    const/4 v2, 0x0

    .line 191
    invoke-interface {v9, v2, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    goto :goto_c3

    .line 195
    :cond_c2
    :goto_c2
    const/4 v2, 0x0

    .line 196
    :goto_c3
    move v9, v2

    .line 197
    move-object/from16 v1, v17

    .line 199
    goto/16 :goto_23

    .line 201
    :pswitch_c8  #0x2
    move v2, v9

    .line 202
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseScale(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 205
    move-result-object v14

    .line 206
    goto/16 :goto_23

    .line 208
    :pswitch_cf  #0x1
    move v2, v9

    .line 209
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 212
    move-result-object v13

    .line 213
    goto/16 :goto_23

    .line 215
    :pswitch_d6  #0x0
    move v2, v9

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 219
    :goto_da
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_f4

    .line 225
    sget-object v3, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 227
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_ef

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 239
    goto :goto_da

    .line 240
    :cond_ef
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 243
    move-result-object v12

    .line 244
    goto :goto_da

    .line 245
    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 248
    move v9, v2

    .line 249
    goto/16 :goto_23

    .line 251
    :cond_fa
    if-eqz v10, :cond_ff

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 256
    :cond_ff
    invoke-static {v12}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z

    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_108

    .line 262
    const/16 v18, 0x0

    .line 264
    goto :goto_10a

    .line 265
    :cond_108
    move-object/from16 v18, v12

    .line 267
    :goto_10a
    invoke-static {v13}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z

    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_113

    .line 273
    const/16 v19, 0x0

    .line 275
    goto :goto_115

    .line 276
    :cond_113
    move-object/from16 v19, v13

    .line 278
    :goto_115
    invoke-static {v1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_11e

    .line 284
    const/16 v21, 0x0

    .line 286
    goto :goto_120

    .line 287
    :cond_11e
    move-object/from16 v21, v1

    .line 289
    :goto_120
    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z

    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_127

    .line 295
    const/4 v14, 0x0

    .line 296
    :cond_127
    invoke-static {v15}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_130

    .line 302
    const/16 v25, 0x0

    .line 304
    goto :goto_132

    .line 305
    :cond_130
    move-object/from16 v25, v15

    .line 307
    :goto_132
    invoke-static/range {v16 .. v16}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_13b

    .line 313
    const/16 v26, 0x0

    .line 315
    goto :goto_13d

    .line 316
    :cond_13b
    move-object/from16 v26, v16

    .line 318
    :goto_13d
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 320
    move-object/from16 v17, v0

    .line 322
    move-object/from16 v20, v14

    .line 324
    invoke-direct/range {v17 .. v26}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 327
    return-object v0

    .line 328
    nop

    .line 329
    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_d6  #00000000
        :pswitch_cf  #00000001
        :pswitch_c8  #00000002
        :pswitch_53  #00000003
        :pswitch_58  #00000004
        :pswitch_4e  #00000005
        :pswitch_49  #00000006
        :pswitch_44  #00000007
        :pswitch_3f  #00000008
        :pswitch_3a  #00000009
    .end packed-switch
.end method
