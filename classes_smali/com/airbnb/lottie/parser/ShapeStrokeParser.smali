.class Lcom/airbnb/lottie/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const-string v0, "nm"

    .line 3
    const-string v1, "c"

    .line 5
    const-string v2, "w"

    .line 7
    const-string v3, "o"

    .line 9
    const-string v4, "lc"

    .line 11
    const-string v5, "lj"

    .line 13
    const-string v6, "ml"

    .line 15
    const-string v7, "hd"

    .line 17
    const-string v8, "d"

    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 29
    const-string v0, "n"

    .line 31
    const-string v1, "v"

    .line 33
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

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

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move v12, v1

    .line 11
    move v11, v4

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    :cond_12
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 22
    move-result v13

    .line 23
    if-eqz v13, :cond_fc

    .line 25
    sget-object v13, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 27
    invoke-virtual {v0, v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 30
    move-result v13

    .line 31
    const/4 v14, 0x1

    .line 32
    packed-switch v13, :pswitch_data_10c

    .line 35
    move-object/from16 v2, p1

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 40
    goto :goto_12

    .line 41
    :pswitch_28  #0x8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 44
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 47
    move-result v13

    .line 48
    if-eqz v13, :cond_99

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v15, 0x0

    .line 55
    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 58
    move-result v16

    .line 59
    if-eqz v16, :cond_57

    .line 61
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 63
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_52

    .line 69
    if-eq v2, v14, :cond_4d

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 77
    goto :goto_36

    .line 78
    :cond_4d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 81
    move-result-object v15

    .line 82
    goto :goto_36

    .line 83
    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 86
    move-result-object v13

    .line 87
    goto :goto_36

    .line 88
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 91
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 97
    move-result v17

    .line 98
    sparse-switch v17, :sswitch_data_122

    .line 101
    :goto_64
    const/4 v2, -0x1

    .line 102
    goto :goto_86

    .line 103
    :sswitch_66
    const-string v2, "o"

    .line 105
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_6f

    .line 111
    goto :goto_64

    .line 112
    :cond_6f
    const/4 v2, 0x2

    .line 113
    goto :goto_86

    .line 114
    :sswitch_71
    const-string v2, "g"

    .line 116
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_7a

    .line 122
    goto :goto_64

    .line 123
    :cond_7a
    move v2, v14

    .line 124
    goto :goto_86

    .line 125
    :sswitch_7c
    const-string v2, "d"

    .line 127
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_85

    .line 133
    goto :goto_64

    .line 134
    :cond_85
    move v2, v1

    .line 135
    :goto_86
    packed-switch v2, :pswitch_data_130

    .line 138
    move-object/from16 v2, p1

    .line 140
    goto :goto_2b

    .line 141
    :pswitch_8c  #0x2
    move-object/from16 v2, p1

    .line 143
    move-object v5, v15

    .line 144
    goto :goto_2b

    .line 145
    :pswitch_90  #0x0, 0x1
    move-object/from16 v2, p1

    .line 147
    invoke-virtual {v2, v14}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 150
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_2b

    .line 154
    :cond_99
    move-object/from16 v2, p1

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 162
    move-result v13

    .line 163
    if-ne v13, v14, :cond_12

    .line 165
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v13

    .line 169
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    goto/16 :goto_12

    .line 174
    :pswitch_ad  #0x7
    move-object/from16 v2, p1

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 179
    move-result v12

    .line 180
    goto/16 :goto_12

    .line 182
    :pswitch_b5  #0x6
    move-object/from16 v2, p1

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 187
    move-result-wide v13

    .line 188
    double-to-float v11, v13

    .line 189
    goto/16 :goto_12

    .line 191
    :pswitch_be  #0x5
    move-object/from16 v2, p1

    .line 193
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 196
    move-result-object v10

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 200
    move-result v13

    .line 201
    sub-int/2addr v13, v14

    .line 202
    aget-object v10, v10, v13

    .line 204
    goto/16 :goto_12

    .line 206
    :pswitch_cd  #0x4
    move-object/from16 v2, p1

    .line 208
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 211
    move-result-object v9

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 215
    move-result v13

    .line 216
    sub-int/2addr v13, v14

    .line 217
    aget-object v9, v9, v13

    .line 219
    goto/16 :goto_12

    .line 221
    :pswitch_dc  #0x3
    move-object/from16 v2, p1

    .line 223
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 226
    move-result-object v7

    .line 227
    goto/16 :goto_12

    .line 229
    :pswitch_e4  #0x2
    move-object/from16 v2, p1

    .line 231
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 234
    move-result-object v8

    .line 235
    goto/16 :goto_12

    .line 237
    :pswitch_ec  #0x1
    move-object/from16 v2, p1

    .line 239
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 242
    move-result-object v6

    .line 243
    goto/16 :goto_12

    .line 245
    :pswitch_f4  #0x0
    move-object/from16 v2, p1

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 250
    move-result-object v4

    .line 251
    goto/16 :goto_12

    .line 253
    :cond_fc
    new-instance v13, Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 255
    move-object v0, v13

    .line 256
    move-object v1, v4

    .line 257
    move-object v2, v5

    .line 258
    move-object v4, v6

    .line 259
    move-object v5, v7

    .line 260
    move-object v6, v8

    .line 261
    move-object v7, v9

    .line 262
    move-object v8, v10

    .line 263
    move v9, v11

    .line 264
    move v10, v12

    .line 265
    invoke-direct/range {v0 .. v10}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    .line 268
    return-object v13

    .line 269
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_f4  #00000000
        :pswitch_ec  #00000001
        :pswitch_e4  #00000002
        :pswitch_dc  #00000003
        :pswitch_cd  #00000004
        :pswitch_be  #00000005
        :pswitch_b5  #00000006
        :pswitch_ad  #00000007
        :pswitch_28  #00000008
    .end packed-switch

    :sswitch_data_122
    .sparse-switch
        0x64 -> :sswitch_7c
        0x67 -> :sswitch_71
        0x6f -> :sswitch_66
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_90  #00000000
        :pswitch_90  #00000001
        :pswitch_8c  #00000002
    .end packed-switch
.end method
