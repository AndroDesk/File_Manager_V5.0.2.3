.class public Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "LottieCompositionMoshiParser.java"


# static fields
.field public static ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


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
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 33
    const-string v1, "id"

    .line 35
    const-string v2, "layers"

    .line 37
    const-string v3, "w"

    .line 39
    const-string v4, "h"

    .line 41
    const-string v5, "p"

    .line 43
    const-string v6, "u"

    .line 45
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 55
    const-string v0, "list"

    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 67
    const-string v0, "cm"

    .line 69
    const-string v1, "tm"

    .line 71
    const-string v2, "dr"

    .line 73
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 83
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
    if-eqz v16, :cond_ce

    .line 62
    sget-object v3, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 64
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 67
    move-result v3

    .line 68
    packed-switch v3, :pswitch_data_e4

    .line 71
    move-object v0, v12

    .line 72
    move-object/from16 v17, v13

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 80
    goto :goto_ae

    .line 81
    :pswitch_50  #0xa
    invoke-static {v0, v14, v13}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V

    .line 84
    goto :goto_94

    .line 85
    :pswitch_54  #0x9
    invoke-static {v0, v14, v11}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/g;)V

    .line 88
    goto :goto_94

    .line 89
    :pswitch_58  #0x8
    invoke-static {v0, v12}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V

    .line 92
    goto :goto_94

    .line 93
    :pswitch_5c  #0x7
    invoke-static {v0, v14, v9, v10}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V

    .line 96
    goto :goto_94

    .line 97
    :pswitch_60  #0x6
    invoke-static {v0, v14, v7, v8}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/d;)V

    .line 100
    goto :goto_94

    .line 101
    :pswitch_64  #0x5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    const-string v0, "\\."

    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    const/4 v3, 0x0

    .line 112
    aget-object v17, v0, v3

    .line 114
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    move-result v18

    .line 118
    const/4 v3, 0x1

    .line 119
    aget-object v3, v0, v3

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    move-result v19

    .line 125
    const/4 v3, 0x2

    .line 126
    aget-object v0, v0, v3

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    move-result v20

    .line 132
    const/16 v21, 0x4

    .line 134
    const/16 v22, 0x4

    .line 136
    const/16 v23, 0x0

    .line 138
    invoke-static/range {v18 .. v23}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_94

    .line 144
    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    .line 146
    invoke-virtual {v14, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 149
    :cond_94
    :goto_94
    move-object v0, v12

    .line 150
    move-object/from16 v17, v13

    .line 152
    goto :goto_ae

    .line 153
    :pswitch_98  #0x4
    move-object v0, v12

    .line 154
    move-object/from16 v17, v13

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 159
    move-result-wide v12

    .line 160
    double-to-float v6, v12

    .line 161
    goto :goto_ae

    .line 162
    :pswitch_a1  #0x3
    move-object v0, v12

    .line 163
    move-object/from16 v17, v13

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 168
    move-result-wide v12

    .line 169
    double-to-float v3, v12

    .line 170
    const v5, 0x3c23d70a  # 0.01f

    .line 173
    sub-float v5, v3, v5

    .line 175
    :goto_ae
    move-object v12, v0

    .line 176
    move-object/from16 v13, v17

    .line 178
    goto :goto_ca

    .line 179
    :pswitch_b2  #0x2
    move-object v0, v12

    .line 180
    move-object/from16 v17, v13

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 185
    move-result-wide v3

    .line 186
    double-to-float v4, v3

    .line 187
    goto :goto_ca

    .line 188
    :pswitch_bb  #0x1
    move-object v0, v12

    .line 189
    move-object/from16 v17, v13

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 194
    move-result v15

    .line 195
    goto :goto_ca

    .line 196
    :pswitch_c3  #0x0
    move-object v0, v12

    .line 197
    move-object/from16 v17, v13

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 202
    move-result v2

    .line 203
    :goto_ca
    move-object/from16 v0, p0

    .line 205
    goto/16 :goto_37

    .line 207
    :cond_ce
    move-object v0, v12

    .line 208
    move-object/from16 v17, v13

    .line 210
    int-to-float v2, v2

    .line 211
    mul-float/2addr v2, v1

    .line 212
    float-to-int v2, v2

    .line 213
    int-to-float v3, v15

    .line 214
    mul-float/2addr v3, v1

    .line 215
    float-to-int v1, v3

    .line 216
    new-instance v3, Landroid/graphics/Rect;

    .line 218
    const/4 v12, 0x0

    .line 219
    invoke-direct {v3, v12, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    move-object v2, v14

    .line 223
    move-object v12, v0

    .line 224
    invoke-virtual/range {v2 .. v13}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/d;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/g;Ljava/util/Map;Ljava/util/List;)V

    .line 227
    return-object v14

    .line 228
    nop

    .line 229
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_c3  #00000000
        :pswitch_bb  #00000001
        :pswitch_b2  #00000002
        :pswitch_a1  #00000003
        :pswitch_98  #00000004
        :pswitch_64  #00000005
        :pswitch_60  #00000006
        :pswitch_5c  #00000007
        :pswitch_58  #00000008
        :pswitch_54  #00000009
        :pswitch_50  #0000000a
    .end packed-switch
.end method

.method private static parseAssets(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 4
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_8f

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v1, Landroidx/collection/d;

    .line 17
    invoke-direct {v1}, Landroidx/collection/d;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move v5, v2

    .line 26
    move v6, v5

    .line 27
    move-object v7, v3

    .line 28
    move-object v8, v7

    .line 29
    move-object v9, v8

    .line 30
    :goto_1d
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_76

    .line 36
    sget-object v2, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 38
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_71

    .line 44
    const/4 v3, 0x1

    .line 45
    if-eq v2, v3, :cond_55

    .line 47
    const/4 v3, 0x2

    .line 48
    if-eq v2, v3, :cond_50

    .line 50
    const/4 v3, 0x3

    .line 51
    if-eq v2, v3, :cond_4b

    .line 53
    const/4 v3, 0x4

    .line 54
    if-eq v2, v3, :cond_46

    .line 56
    const/4 v3, 0x5

    .line 57
    if-eq v2, v3, :cond_41

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 65
    goto :goto_1d

    .line 66
    :cond_41
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 69
    move-result-object v9

    .line 70
    goto :goto_1d

    .line 71
    :cond_46
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 74
    move-result-object v8

    .line 75
    goto :goto_1d

    .line 76
    :cond_4b
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 79
    move-result v6

    .line 80
    goto :goto_1d

    .line 81
    :cond_50
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 84
    move-result v5

    .line 85
    goto :goto_1d

    .line 86
    :cond_55
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 89
    :goto_58
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_6d

    .line 95
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    .line 102
    move-result-wide v3

    .line 103
    invoke-virtual {v1, v3, v4, v2}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_58

    .line 110
    :cond_6d
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 113
    goto :goto_1d

    .line 114
    :cond_71
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 117
    move-result-object v7

    .line 118
    goto :goto_1d

    .line 119
    :cond_76
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 122
    if-eqz v8, :cond_8a

    .line 124
    new-instance v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 126
    move-object v4, v0

    .line 127
    invoke-direct/range {v4 .. v9}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    goto/16 :goto_3

    .line 139
    :cond_8a
    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    goto/16 :goto_3

    .line 144
    :cond_8f
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 147
    return-void
.end method

.method private static parseChars(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroidx/collection/g<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 4
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_15

    .line 10
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/FontCharacterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {p2, v1, v0}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    .line 21
    goto :goto_3

    .line 22
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 25
    return-void
.end method

.method private static parseFonts(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 4
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_31

    .line 10
    sget-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 12
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_18

    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 21
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 24
    goto :goto_3

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 28
    :goto_1b
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2d

    .line 34
    invoke-static {p0}, Lcom/airbnb/lottie/parser/FontParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/Font;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    goto :goto_1b

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 49
    goto :goto_3

    .line 50
    :cond_31
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 53
    return-void
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

.method private static parseMarkers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 4
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_47

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_f
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3b

    .line 22
    sget-object v2, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 24
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_36

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v2, v3, :cond_30

    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_2a

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 42
    goto :goto_f

    .line 43
    :cond_2a
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 46
    move-result-wide v1

    .line 47
    double-to-float v1, v1

    .line 48
    goto :goto_f

    .line 49
    :cond_30
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 52
    move-result-wide v2

    .line 53
    double-to-float v0, v2

    .line 54
    goto :goto_f

    .line 55
    :cond_36
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    goto :goto_f

    .line 60
    :cond_3b
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 63
    new-instance v2, Lcom/airbnb/lottie/model/Marker;

    .line 65
    invoke-direct {v2, p1, v0, v1}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    .line 68
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_3

    .line 72
    :cond_47
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 75
    return-void
.end method
