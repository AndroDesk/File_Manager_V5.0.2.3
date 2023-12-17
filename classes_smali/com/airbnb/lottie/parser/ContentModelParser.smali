.class Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "ty"

    .line 3
    const-string v1, "d"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 4
    const/4 v0, 0x2

    .line 5
    move v1, v0

    .line 6
    :goto_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v2, :cond_28

    .line 14
    sget-object v2, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 16
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_23

    .line 22
    if-eq v2, v3, :cond_1e

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 30
    goto :goto_5

    .line 31
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 34
    move-result v1

    .line 35
    goto :goto_5

    .line 36
    :cond_23
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move-object v2, v4

    .line 42
    :goto_29
    if-nez v2, :cond_2c

    .line 44
    return-object v4

    .line 45
    :cond_2c
    const/4 v5, -0x1

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 49
    move-result v6

    .line 50
    sparse-switch v6, :sswitch_data_13a

    .line 53
    :goto_34
    move v0, v5

    .line 54
    goto/16 :goto_cf

    .line 56
    :sswitch_37
    const-string v0, "tr"

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_40

    .line 64
    goto :goto_34

    .line 65
    :cond_40
    const/16 v0, 0xc

    .line 67
    goto/16 :goto_cf

    .line 69
    :sswitch_44
    const-string v0, "tm"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4d

    .line 77
    goto :goto_34

    .line 78
    :cond_4d
    const/16 v0, 0xb

    .line 80
    goto/16 :goto_cf

    .line 82
    :sswitch_51
    const-string v0, "st"

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5a

    .line 90
    goto :goto_34

    .line 91
    :cond_5a
    const/16 v0, 0xa

    .line 93
    goto/16 :goto_cf

    .line 95
    :sswitch_5e
    const-string v0, "sr"

    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_67

    .line 103
    goto :goto_34

    .line 104
    :cond_67
    const/16 v0, 0x9

    .line 106
    goto/16 :goto_cf

    .line 108
    :sswitch_6b
    const-string v0, "sh"

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_74

    .line 116
    goto :goto_34

    .line 117
    :cond_74
    const/16 v0, 0x8

    .line 119
    goto :goto_cf

    .line 120
    :sswitch_77
    const-string v0, "rp"

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_80

    .line 128
    goto :goto_34

    .line 129
    :cond_80
    const/4 v0, 0x7

    .line 130
    goto :goto_cf

    .line 131
    :sswitch_82
    const-string v0, "rc"

    .line 133
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_8b

    .line 139
    goto :goto_34

    .line 140
    :cond_8b
    const/4 v0, 0x6

    .line 141
    goto :goto_cf

    .line 142
    :sswitch_8d
    const-string v0, "mm"

    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_96

    .line 150
    goto :goto_34

    .line 151
    :cond_96
    const/4 v0, 0x5

    .line 152
    goto :goto_cf

    .line 153
    :sswitch_98
    const-string v0, "gs"

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_a1

    .line 161
    goto :goto_34

    .line 162
    :cond_a1
    const/4 v0, 0x4

    .line 163
    goto :goto_cf

    .line 164
    :sswitch_a3
    const-string v0, "gr"

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_ac

    .line 172
    goto :goto_34

    .line 173
    :cond_ac
    const/4 v0, 0x3

    .line 174
    goto :goto_cf

    .line 175
    :sswitch_ae
    const-string v3, "gf"

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_cf

    .line 183
    goto/16 :goto_34

    .line 185
    :sswitch_b8
    const-string v0, "fl"

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_c2

    .line 193
    goto/16 :goto_34

    .line 195
    :cond_c2
    move v0, v3

    .line 196
    goto :goto_cf

    .line 197
    :sswitch_c4
    const-string v0, "el"

    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_ce

    .line 205
    goto/16 :goto_34

    .line 207
    :cond_ce
    const/4 v0, 0x0

    .line 208
    :cond_cf
    :goto_cf
    packed-switch v0, :pswitch_data_170

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    const-string v0, "Unknown shape type "

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 231
    goto :goto_12c

    .line 232
    :pswitch_e7  #0xc
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 235
    move-result-object v4

    .line 236
    goto :goto_12c

    .line 237
    :pswitch_ec  #0xb
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    .line 240
    move-result-object v4

    .line 241
    goto :goto_12c

    .line 242
    :pswitch_f1  #0xa
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 245
    move-result-object v4

    .line 246
    goto :goto_12c

    .line 247
    :pswitch_f6  #0x9
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/PolystarShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 250
    move-result-object v4

    .line 251
    goto :goto_12c

    .line 252
    :pswitch_fb  #0x8
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapePathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;

    .line 255
    move-result-object v4

    .line 256
    goto :goto_12c

    .line 257
    :pswitch_100  #0x7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RepeaterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;

    .line 260
    move-result-object v4

    .line 261
    goto :goto_12c

    .line 262
    :pswitch_105  #0x6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RectangleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;

    .line 265
    move-result-object v4

    .line 266
    goto :goto_12c

    .line 267
    :pswitch_10a  #0x5
    invoke-static {p0}, Lcom/airbnb/lottie/parser/MergePathsParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    .line 270
    move-result-object v4

    .line 271
    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 273
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 276
    goto :goto_12c

    .line 277
    :pswitch_114  #0x4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;

    .line 280
    move-result-object v4

    .line 281
    goto :goto_12c

    .line 282
    :pswitch_119  #0x3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeGroupParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 285
    move-result-object v4

    .line 286
    goto :goto_12c

    .line 287
    :pswitch_11e  #0x2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;

    .line 290
    move-result-object v4

    .line 291
    goto :goto_12c

    .line 292
    :pswitch_123  #0x1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;

    .line 295
    move-result-object v4

    .line 296
    goto :goto_12c

    .line 297
    :pswitch_128  #0x0
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/parser/CircleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;

    .line 300
    move-result-object v4

    .line 301
    :goto_12c
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_136

    .line 307
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 310
    goto :goto_12c

    .line 311
    :cond_136
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 314
    return-object v4

    .line 315
    :sswitch_data_13a
    .sparse-switch
        0xca7 -> :sswitch_c4
        0xcc6 -> :sswitch_b8
        0xcdf -> :sswitch_ae
        0xceb -> :sswitch_a3
        0xcec -> :sswitch_98
        0xda0 -> :sswitch_8d
        0xe31 -> :sswitch_82
        0xe3e -> :sswitch_77
        0xe55 -> :sswitch_6b
        0xe5f -> :sswitch_5e
        0xe61 -> :sswitch_51
        0xe79 -> :sswitch_44
        0xe7e -> :sswitch_37
    .end sparse-switch

    .line 369
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_128  #00000000
        :pswitch_123  #00000001
        :pswitch_11e  #00000002
        :pswitch_119  #00000003
        :pswitch_114  #00000004
        :pswitch_10a  #00000005
        :pswitch_105  #00000006
        :pswitch_100  #00000007
        :pswitch_fb  #00000008
        :pswitch_f6  #00000009
        :pswitch_f1  #0000000a
        :pswitch_ec  #0000000b
        :pswitch_e7  #0000000c
    .end packed-switch
.end method
