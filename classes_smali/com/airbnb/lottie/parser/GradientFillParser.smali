.class Lcom/airbnb/lottie/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# static fields
.field private static final GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

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
    const-string v6, "r"

    .line 15
    const-string v7, "hd"

    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 27
    const-string v0, "p"

    .line 29
    const-string v1, "k"

    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .registers 16

    .line 1
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v6, v0

    .line 6
    move-object v4, v1

    .line 7
    move-object v5, v4

    .line 8
    move-object v7, v5

    .line 9
    move-object v8, v7

    .line 10
    move-object v9, v8

    .line 11
    move-object v10, v9

    .line 12
    move v13, v2

    .line 13
    :goto_c
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_7f

    .line 19
    sget-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    packed-switch v0, :pswitch_data_88

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 35
    goto :goto_c

    .line 36
    :pswitch_23  #0x7
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 39
    move-result v13

    .line 40
    goto :goto_c

    .line 41
    :pswitch_28  #0x6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 44
    move-result v0

    .line 45
    if-ne v0, v1, :cond_31

    .line 47
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 52
    :goto_33
    move-object v6, v0

    .line 53
    goto :goto_c

    .line 54
    :pswitch_35  #0x5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 57
    move-result-object v10

    .line 58
    goto :goto_c

    .line 59
    :pswitch_3a  #0x4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 62
    move-result-object v9

    .line 63
    goto :goto_c

    .line 64
    :pswitch_3f  #0x3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 67
    move-result v0

    .line 68
    if-ne v0, v1, :cond_48

    .line 70
    sget-object v0, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    sget-object v0, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 75
    :goto_4a
    move-object v5, v0

    .line 76
    goto :goto_c

    .line 77
    :pswitch_4c  #0x2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 80
    move-result-object v8

    .line 81
    goto :goto_c

    .line 82
    :pswitch_51  #0x1
    const/4 v0, -0x1

    .line 83
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 86
    :goto_55
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_76

    .line 92
    sget-object v2, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 94
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_71

    .line 100
    if-eq v2, v1, :cond_6c

    .line 102
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 105
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 108
    goto :goto_55

    .line 109
    :cond_6c
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 112
    move-result-object v7

    .line 113
    goto :goto_55

    .line 114
    :cond_71
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 117
    move-result v0

    .line 118
    goto :goto_55

    .line 119
    :cond_76
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 122
    goto :goto_c

    .line 123
    :pswitch_7a  #0x0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    goto :goto_c

    .line 128
    :cond_7f
    new-instance p0, Lcom/airbnb/lottie/model/content/GradientFill;

    .line 130
    const/4 v11, 0x0

    .line 131
    const/4 v12, 0x0

    .line 132
    move-object v3, p0

    .line 133
    invoke-direct/range {v3 .. v13}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 136
    return-object p0

    .line 137
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_7a  #00000000
        :pswitch_51  #00000001
        :pswitch_4c  #00000002
        :pswitch_3f  #00000003
        :pswitch_3a  #00000004
        :pswitch_35  #00000005
        :pswitch_28  #00000006
        :pswitch_23  #00000007
    .end packed-switch
.end method
