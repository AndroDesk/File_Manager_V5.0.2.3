.class Lcom/airbnb/lottie/parser/ShapeFillParser;
.super Ljava/lang/Object;
.source "ShapeFillParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    const-string v0, "nm"

    .line 3
    const-string v1, "c"

    .line 5
    const-string v2, "o"

    .line 7
    const-string v3, "fillEnabled"

    .line 9
    const-string v4, "r"

    .line 11
    const-string v5, "hd"

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    move v5, v0

    .line 5
    move v9, v5

    .line 6
    move v0, v1

    .line 7
    move-object v4, v2

    .line 8
    move-object v7, v4

    .line 9
    move-object v8, v7

    .line 10
    :goto_9
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_4a

    .line 16
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 18
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_45

    .line 24
    if-eq v2, v1, :cond_40

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_3b

    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v2, v3, :cond_36

    .line 32
    const/4 v3, 0x4

    .line 33
    if-eq v2, v3, :cond_31

    .line 35
    const/4 v3, 0x5

    .line 36
    if-eq v2, v3, :cond_2c

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 44
    goto :goto_9

    .line 45
    :cond_2c
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 48
    move-result v9

    .line 49
    goto :goto_9

    .line 50
    :cond_31
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 53
    move-result v0

    .line 54
    goto :goto_9

    .line 55
    :cond_36
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 58
    move-result v5

    .line 59
    goto :goto_9

    .line 60
    :cond_3b
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 63
    move-result-object v8

    .line 64
    goto :goto_9

    .line 65
    :cond_40
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 68
    move-result-object v7

    .line 69
    goto :goto_9

    .line 70
    :cond_45
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    goto :goto_9

    .line 75
    :cond_4a
    if-ne v0, v1, :cond_4f

    .line 77
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 79
    goto :goto_51

    .line 80
    :cond_4f
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 82
    :goto_51
    move-object v6, p0

    .line 83
    new-instance p0, Lcom/airbnb/lottie/model/content/ShapeFill;

    .line 85
    move-object v3, p0

    .line 86
    invoke-direct/range {v3 .. v9}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 89
    return-object p0
.end method
