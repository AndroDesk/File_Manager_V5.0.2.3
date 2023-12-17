.class Lcom/airbnb/lottie/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    const-string v0, "nm"

    .line 3
    const-string v1, "sy"

    .line 5
    const-string v2, "pt"

    .line 7
    const-string v3, "p"

    .line 9
    const-string v4, "r"

    .line 11
    const-string v5, "or"

    .line 13
    const-string v6, "os"

    .line 15
    const-string v7, "ir"

    .line 17
    const-string v8, "is"

    .line 19
    const-string v9, "hd"

    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;
    .registers 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v12, v0

    .line 4
    move-object v3, v1

    .line 5
    move-object v4, v3

    .line 6
    move-object v5, v4

    .line 7
    move-object v6, v5

    .line 8
    move-object v7, v6

    .line 9
    move-object v8, v7

    .line 10
    move-object v9, v8

    .line 11
    move-object v10, v9

    .line 12
    move-object v11, v10

    .line 13
    :goto_c
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_58

    .line 19
    sget-object v1, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 24
    move-result v1

    .line 25
    packed-switch v1, :pswitch_data_60

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 31
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 34
    goto :goto_c

    .line 35
    :pswitch_22  #0x9
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 38
    move-result v12

    .line 39
    goto :goto_c

    .line 40
    :pswitch_27  #0x8
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 43
    move-result-object v10

    .line 44
    goto :goto_c

    .line 45
    :pswitch_2c  #0x7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 48
    move-result-object v8

    .line 49
    goto :goto_c

    .line 50
    :pswitch_31  #0x6
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 53
    move-result-object v11

    .line 54
    goto :goto_c

    .line 55
    :pswitch_36  #0x5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 58
    move-result-object v9

    .line 59
    goto :goto_c

    .line 60
    :pswitch_3b  #0x4
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 63
    move-result-object v7

    .line 64
    goto :goto_c

    .line 65
    :pswitch_40  #0x3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 68
    move-result-object v6

    .line 69
    goto :goto_c

    .line 70
    :pswitch_45  #0x2
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 73
    move-result-object v5

    .line 74
    goto :goto_c

    .line 75
    :pswitch_4a  #0x1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 78
    move-result v1

    .line 79
    invoke-static {v1}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 82
    move-result-object v4

    .line 83
    goto :goto_c

    .line 84
    :pswitch_53  #0x0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    goto :goto_c

    .line 89
    :cond_58
    new-instance p0, Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 91
    move-object v2, p0

    .line 92
    invoke-direct/range {v2 .. v12}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_4a  #00000001
        :pswitch_45  #00000002
        :pswitch_40  #00000003
        :pswitch_3b  #00000004
        :pswitch_36  #00000005
        :pswitch_31  #00000006
        :pswitch_2c  #00000007
        :pswitch_27  #00000008
        :pswitch_22  #00000009
    .end packed-switch
.end method
