.class Lcom/airbnb/lottie/parser/RectangleShapeParser;
.super Ljava/lang/Object;
.source "RectangleShapeParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "nm"

    .line 3
    const-string v1, "p"

    .line 5
    const-string v2, "s"

    .line 7
    const-string v3, "r"

    .line 9
    const-string v4, "hd"

    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v3, v0

    .line 4
    move-object v4, v3

    .line 5
    move-object v5, v4

    .line 6
    move-object v6, v5

    .line 7
    move v7, v1

    .line 8
    :goto_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3e

    .line 14
    sget-object v0, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 16
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_39

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_34

    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_2f

    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_2a

    .line 31
    const/4 v1, 0x4

    .line 32
    if-eq v0, v1, :cond_25

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 37
    goto :goto_7

    .line 38
    :cond_25
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 41
    move-result v7

    .line 42
    goto :goto_7

    .line 43
    :cond_2a
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 46
    move-result-object v6

    .line 47
    goto :goto_7

    .line 48
    :cond_2f
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 51
    move-result-object v5

    .line 52
    goto :goto_7

    .line 53
    :cond_34
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 56
    move-result-object v4

    .line 57
    goto :goto_7

    .line 58
    :cond_39
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    goto :goto_7

    .line 63
    :cond_3e
    new-instance p0, Lcom/airbnb/lottie/model/content/RectangleShape;

    .line 65
    move-object v2, p0

    .line 66
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/content/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 69
    return-object p0
.end method
