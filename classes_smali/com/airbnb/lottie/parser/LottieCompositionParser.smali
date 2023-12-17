.class public Lcom/airbnb/lottie/parser/LottieCompositionParser;
.super Ljava/lang/Object;
.source "LottieCompositionParser.java"


# static fields
.field public static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    const-string v0, "w"

    .line 3
    const-string v1, "h"

    .line 5
    const-string v2, "ip"

    .line 7
    const-string v3, "op"

    .line 9
    const-string v4, "fr"

    .line 11
    const-string v5, "v"

    .line 13
    const-string v6, "layers"

    .line 15
    const-string v7, "assets"

    .line 17
    const-string v8, "fonts"

    .line 19
    const-string v9, "chars"

    .line 21
    const-string v10, "markers"

    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 6
    move-result v1

    .line 7
    new-instance v8, Landroidx/collection/d;

    .line 9
    invoke-direct {v8}, Landroidx/collection/d;-><init>()V

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v9, Ljava/util/HashMap;

    .line 19
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 22
    new-instance v10, Ljava/util/HashMap;

    .line 24
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v12, Ljava/util/HashMap;

    .line 29
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 32
    new-instance v13, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v11, Landroidx/collection/g;

    .line 39
    invoke-direct {v11}, Landroidx/collection/g;-><init>()V

    .line 42
    new-instance v14, Lcom/airbnb/lottie/LottieComposition;

    .line 44
    invoke-direct {v14}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 50
    const/4 v2, 0x0

    .line 51
    move v4, v2

    .line 52
    move v5, v4

    .line 53
    move v6, v5

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v15, 0x0

    .line 56
    :goto_37
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 59
    move-result v16

    .line 60
    if-eqz v16, :cond_bd

    .line 62
    sget-object v3, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 64
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 67
    move-result v3

    .line 68
    packed-switch v3, :pswitch_data_d2

    .line 71
    :goto_46
    move-object v0, v12

    .line 72
    move-object/from16 v17, v13

    .line 74
    goto/16 :goto_b3

    .line 76
    :pswitch_4b  #0x6
    invoke-static {v0, v14, v7, v8}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/d;)V

    .line 79
    goto :goto_46

    .line 80
    :pswitch_4f  #0x5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    const-string v0, "\\."

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    const/4 v3, 0x0

    .line 91
    aget-object v17, v0, v3

    .line 93
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    move-result v18

    .line 97
    const/4 v3, 0x1

    .line 98
    aget-object v3, v0, v3

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    move-result v19

    .line 104
    const/4 v3, 0x2

    .line 105
    aget-object v0, v0, v3

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    move-result v20

    .line 111
    const/16 v21, 0x4

    .line 113
    const/16 v22, 0x4

    .line 115
    const/16 v23, 0x0

    .line 117
    invoke-static/range {v18 .. v23}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_7f

    .line 123
    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    .line 125
    invoke-virtual {v14, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 128
    :cond_7f
    move-object v0, v12

    .line 129
    move-object/from16 v17, v13

    .line 131
    goto :goto_b6

    .line 132
    :pswitch_83  #0x4
    move-object v0, v12

    .line 133
    move-object/from16 v17, v13

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 138
    move-result-wide v12

    .line 139
    double-to-float v6, v12

    .line 140
    goto :goto_b6

    .line 141
    :pswitch_8c  #0x3
    move-object v0, v12

    .line 142
    move-object/from16 v17, v13

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 147
    move-result-wide v12

    .line 148
    double-to-float v3, v12

    .line 149
    const v5, 0x3c23d70a  # 0.01f

    .line 152
    sub-float v5, v3, v5

    .line 154
    goto :goto_b6

    .line 155
    :pswitch_9a  #0x2
    move-object v0, v12

    .line 156
    move-object/from16 v17, v13

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 161
    move-result-wide v3

    .line 162
    double-to-float v4, v3

    .line 163
    goto :goto_b9

    .line 164
    :pswitch_a3  #0x1
    move-object v0, v12

    .line 165
    move-object/from16 v17, v13

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 170
    move-result v15

    .line 171
    goto :goto_b9

    .line 172
    :pswitch_ab  #0x0
    move-object v0, v12

    .line 173
    move-object/from16 v17, v13

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 178
    move-result v2

    .line 179
    goto :goto_b9

    .line 180
    :goto_b3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 183
    :goto_b6
    move-object v12, v0

    .line 184
    move-object/from16 v13, v17

    .line 186
    :goto_b9
    move-object/from16 v0, p0

    .line 188
    goto/16 :goto_37

    .line 190
    :cond_bd
    move-object v0, v12

    .line 191
    move-object/from16 v17, v13

    .line 193
    int-to-float v2, v2

    .line 194
    mul-float/2addr v2, v1

    .line 195
    float-to-int v2, v2

    .line 196
    int-to-float v3, v15

    .line 197
    mul-float/2addr v3, v1

    .line 198
    float-to-int v1, v3

    .line 199
    new-instance v3, Landroid/graphics/Rect;

    .line 201
    const/4 v12, 0x0

    .line 202
    invoke-direct {v3, v12, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    move-object v2, v14

    .line 206
    move-object v12, v0

    .line 207
    invoke-virtual/range {v2 .. v13}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/d;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/g;Ljava/util/Map;Ljava/util/List;)V

    .line 210
    return-object v14

    .line 211
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_ab  #00000000
        :pswitch_a3  #00000001
        :pswitch_9a  #00000002
        :pswitch_8c  #00000003
        :pswitch_83  #00000004
        :pswitch_4f  #00000005
        :pswitch_4b  #00000006
    .end packed-switch
.end method

.method private static parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/d<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3f

    .line 11
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 21
    if-ne v2, v3, :cond_18

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    :cond_18
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {p3, v2, v3, v1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 35
    const/4 v1, 0x4

    .line 36
    if-le v0, v1, :cond_4

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v2, "You have "

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 63
    goto :goto_4

    .line 64
    :cond_3f
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 67
    return-void
.end method
