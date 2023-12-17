.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v4, v0

    .line 7
    move-object v2, v1

    .line 8
    move-object v3, v2

    .line 9
    :goto_8
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 12
    move-result v5

    .line 13
    if-eqz v5, :cond_d4

    .line 15
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextName()Ljava/lang/String;

    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 25
    move-result v6

    .line 26
    const/4 v7, 0x3

    .line 27
    const/4 v8, 0x2

    .line 28
    const/4 v9, 0x1

    .line 29
    const/4 v10, -0x1

    .line 30
    sparse-switch v6, :sswitch_data_de

    .line 33
    :goto_20
    move v6, v10

    .line 34
    goto :goto_4d

    .line 35
    :sswitch_22
    const-string v6, "mode"

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_2b

    .line 43
    goto :goto_20

    .line 44
    :cond_2b
    move v6, v7

    .line 45
    goto :goto_4d

    .line 46
    :sswitch_2d
    const-string v6, "inv"

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_36

    .line 54
    goto :goto_20

    .line 55
    :cond_36
    move v6, v8

    .line 56
    goto :goto_4d

    .line 57
    :sswitch_38
    const-string v6, "pt"

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_41

    .line 65
    goto :goto_20

    .line 66
    :cond_41
    move v6, v9

    .line 67
    goto :goto_4d

    .line 68
    :sswitch_43
    const-string v6, "o"

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_4c

    .line 76
    goto :goto_20

    .line 77
    :cond_4c
    move v6, v0

    .line 78
    :goto_4d
    packed-switch v6, :pswitch_data_f0

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 84
    goto :goto_8

    .line 85
    :pswitch_54  #0x3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 95
    move-result v6

    .line 96
    sparse-switch v6, :sswitch_data_fc

    .line 99
    :goto_62
    move v7, v10

    .line 100
    goto :goto_8d

    .line 101
    :sswitch_64
    const-string v6, "s"

    .line 103
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_8d

    .line 109
    goto :goto_62

    .line 110
    :sswitch_6d
    const-string v6, "n"

    .line 112
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_76

    .line 118
    goto :goto_62

    .line 119
    :cond_76
    move v7, v8

    .line 120
    goto :goto_8d

    .line 121
    :sswitch_78
    const-string v6, "i"

    .line 123
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_81

    .line 129
    goto :goto_62

    .line 130
    :cond_81
    move v7, v9

    .line 131
    goto :goto_8d

    .line 132
    :sswitch_83
    const-string v6, "a"

    .line 134
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_8c

    .line 140
    goto :goto_62

    .line 141
    :cond_8c
    move v7, v0

    .line 142
    :cond_8d
    :goto_8d
    packed-switch v7, :pswitch_data_10e

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v6, "Unknown mask mode "

    .line 152
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v5, ". Defaulting to Add."

    .line 160
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 172
    goto/16 :goto_8

    .line 174
    :pswitch_ad  #0x3
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 176
    goto/16 :goto_8

    .line 178
    :pswitch_b1  #0x2
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 180
    goto/16 :goto_8

    .line 182
    :pswitch_b5  #0x1
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 184
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 187
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 189
    goto/16 :goto_8

    .line 191
    :pswitch_be  #0x0
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 193
    goto/16 :goto_8

    .line 195
    :pswitch_c2  #0x2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 198
    move-result v4

    .line 199
    goto/16 :goto_8

    .line 201
    :pswitch_c8  #0x1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 204
    move-result-object v2

    .line 205
    goto/16 :goto_8

    .line 207
    :pswitch_ce  #0x0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 210
    move-result-object v3

    .line 211
    goto/16 :goto_8

    .line 213
    :cond_d4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 216
    new-instance p0, Lcom/airbnb/lottie/model/content/Mask;

    .line 218
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 221
    return-object p0

    .line 222
    nop

    .line 223
    :sswitch_data_de
    .sparse-switch
        0x6f -> :sswitch_43
        0xe04 -> :sswitch_38
        0x197f1 -> :sswitch_2d
        0x3339a3 -> :sswitch_22
    .end sparse-switch

    .line 241
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_ce  #00000000
        :pswitch_c8  #00000001
        :pswitch_c2  #00000002
        :pswitch_54  #00000003
    .end packed-switch

    .line 253
    :sswitch_data_fc
    .sparse-switch
        0x61 -> :sswitch_83
        0x69 -> :sswitch_78
        0x6e -> :sswitch_6d
        0x73 -> :sswitch_64
    .end sparse-switch

    .line 271
    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_be  #00000000
        :pswitch_b5  #00000001
        :pswitch_b1  #00000002
        :pswitch_ad  #00000003
    .end packed-switch
.end method
