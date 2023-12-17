.class Lcom/airbnb/lottie/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    .line 1
    const-string v0, "nm"

    .line 3
    const-string v1, "g"

    .line 5
    const-string v2, "o"

    .line 7
    const-string v3, "t"

    .line 9
    const-string v4, "s"

    .line 11
    const-string v5, "e"

    .line 13
    const-string v6, "w"

    .line 15
    const-string v7, "lc"

    .line 17
    const-string v8, "lj"

    .line 19
    const-string v9, "ml"

    .line 21
    const-string v10, "hd"

    .line 23
    const-string v11, "d"

    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 35
    const-string v0, "p"

    .line 37
    const-string v1, "k"

    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 49
    const-string v0, "n"

    .line 51
    const-string v1, "v"

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    new-instance v11, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v4, 0x0

    .line 11
    move v14, v4

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
    const/4 v12, 0x0

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 24
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 27
    move-result v17

    .line 28
    if-eqz v17, :cond_13a

    .line 30
    sget-object v3, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 32
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 35
    move-result v3

    .line 36
    packed-switch v3, :pswitch_data_150

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 45
    goto :goto_17

    .line 46
    :pswitch_2d  #0xb
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 49
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_94

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 58
    const/4 v3, 0x0

    .line 59
    const/16 v18, 0x0

    .line 61
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 64
    move-result v19

    .line 65
    if-eqz v19, :cond_64

    .line 67
    sget-object v2, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 69
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_5d

    .line 75
    move-object/from16 v20, v15

    .line 77
    const/4 v15, 0x1

    .line 78
    if-eq v2, v15, :cond_56

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 90
    move-result-object v18

    .line 91
    :goto_5a
    move-object/from16 v15, v20

    .line 93
    goto :goto_3c

    .line 94
    :cond_5d
    move-object/from16 v20, v15

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    goto :goto_3c

    .line 101
    :cond_64
    move-object/from16 v20, v15

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 106
    const-string v2, "o"

    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_75

    .line 114
    move-object/from16 v15, v18

    .line 116
    const/4 v2, 0x1

    .line 117
    goto :goto_30

    .line 118
    :cond_75
    const-string v2, "d"

    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_88

    .line 126
    const-string v2, "g"

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_86

    .line 134
    goto :goto_88

    .line 135
    :cond_86
    const/4 v2, 0x1

    .line 136
    goto :goto_91

    .line 137
    :cond_88
    :goto_88
    const/4 v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 141
    move-object/from16 v3, v18

    .line 143
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_91
    move-object/from16 v15, v20

    .line 148
    goto :goto_30

    .line 149
    :cond_94
    move-object/from16 v20, v15

    .line 151
    const/4 v2, 0x1

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 155
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v3

    .line 159
    if-ne v3, v2, :cond_a9

    .line 161
    const/4 v2, 0x0

    .line 162
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    goto :goto_aa

    .line 170
    :cond_a9
    const/4 v2, 0x0

    .line 171
    :goto_aa
    move-object/from16 v15, v20

    .line 173
    goto/16 :goto_17

    .line 175
    :pswitch_ae  #0xa
    const/4 v2, 0x0

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 179
    move-result v16

    .line 180
    goto/16 :goto_17

    .line 182
    :pswitch_b5  #0x9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 185
    move-result-wide v2

    .line 186
    double-to-float v14, v2

    .line 187
    goto/16 :goto_17

    .line 189
    :pswitch_bc  #0x8
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 192
    move-result-object v2

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 196
    move-result v3

    .line 197
    const/4 v13, 0x1

    .line 198
    sub-int/2addr v3, v13

    .line 199
    aget-object v13, v2, v3

    .line 201
    goto/16 :goto_17

    .line 203
    :pswitch_ca  #0x7
    const/4 v2, 0x1

    .line 204
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 207
    move-result-object v3

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 211
    move-result v12

    .line 212
    sub-int/2addr v12, v2

    .line 213
    aget-object v12, v3, v12

    .line 215
    goto/16 :goto_17

    .line 217
    :pswitch_d8  #0x6
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 220
    move-result-object v10

    .line 221
    goto/16 :goto_17

    .line 223
    :pswitch_de  #0x5
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 226
    move-result-object v9

    .line 227
    goto/16 :goto_17

    .line 229
    :pswitch_e4  #0x4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 232
    move-result-object v8

    .line 233
    goto/16 :goto_17

    .line 235
    :pswitch_ea  #0x3
    const/4 v2, 0x1

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 239
    move-result v3

    .line 240
    if-ne v3, v2, :cond_f4

    .line 242
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 244
    goto :goto_f6

    .line 245
    :cond_f4
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 247
    :goto_f6
    move-object v5, v2

    .line 248
    goto/16 :goto_17

    .line 250
    :pswitch_f9  #0x2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 253
    move-result-object v7

    .line 254
    goto/16 :goto_17

    .line 256
    :pswitch_ff  #0x1
    const/4 v2, -0x1

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 260
    :goto_103
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_12d

    .line 266
    sget-object v3, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 268
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_123

    .line 274
    move-object/from16 v18, v6

    .line 276
    const/4 v6, 0x1

    .line 277
    if-eq v3, v6, :cond_11d

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 285
    goto :goto_12a

    .line 286
    :cond_11d
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 289
    move-result-object v3

    .line 290
    move-object v6, v3

    .line 291
    goto :goto_103

    .line 292
    :cond_123
    move-object/from16 v18, v6

    .line 294
    const/4 v6, 0x1

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 298
    move-result v2

    .line 299
    :goto_12a
    move-object/from16 v6, v18

    .line 301
    goto :goto_103

    .line 302
    :cond_12d
    move-object/from16 v18, v6

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 307
    goto/16 :goto_17

    .line 309
    :pswitch_134  #0x0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 312
    move-result-object v4

    .line 313
    goto/16 :goto_17

    .line 315
    :cond_13a
    new-instance v17, Lcom/airbnb/lottie/model/content/GradientStroke;

    .line 317
    move-object/from16 v0, v17

    .line 319
    move-object v1, v4

    .line 320
    move-object v2, v5

    .line 321
    move-object v3, v6

    .line 322
    move-object v4, v7

    .line 323
    move-object v5, v8

    .line 324
    move-object v6, v9

    .line 325
    move-object v7, v10

    .line 326
    move-object v8, v12

    .line 327
    move-object v9, v13

    .line 328
    move v10, v14

    .line 329
    move-object v12, v15

    .line 330
    move/from16 v13, v16

    .line 332
    invoke-direct/range {v0 .. v13}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 335
    return-object v17

    .line 336
    nop

    .line 337
    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_134  #00000000
        :pswitch_ff  #00000001
        :pswitch_f9  #00000002
        :pswitch_ea  #00000003
        :pswitch_e4  #00000004
        :pswitch_de  #00000005
        :pswitch_d8  #00000006
        :pswitch_ca  #00000007
        :pswitch_bc  #00000008
        :pswitch_b5  #00000009
        :pswitch_ae  #0000000a
        :pswitch_2d  #0000000b
    .end packed-switch
.end method
