.class Lcom/airbnb/lottie/parser/CircleShapeParser;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


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
    const-string v3, "hd"

    .line 9
    const-string v4, "d"

    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;
    .registers 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    if-ne p2, v2, :cond_7

    .line 6
    move p2, v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move p2, v1

    .line 9
    :goto_8
    const/4 v3, 0x0

    .line 10
    move v8, p2

    .line 11
    move v9, v1

    .line 12
    move-object v5, v3

    .line 13
    move-object v6, v5

    .line 14
    move-object v7, v6

    .line 15
    :goto_e
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_4b

    .line 21
    sget-object p2, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 23
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_46

    .line 29
    if-eq p2, v0, :cond_41

    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq p2, v3, :cond_3c

    .line 34
    if-eq p2, v2, :cond_37

    .line 36
    const/4 v3, 0x4

    .line 37
    if-eq p2, v3, :cond_2d

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 45
    goto :goto_e

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 49
    move-result p2

    .line 50
    if-ne p2, v2, :cond_35

    .line 52
    move v8, v0

    .line 53
    goto :goto_e

    .line 54
    :cond_35
    move v8, v1

    .line 55
    goto :goto_e

    .line 56
    :cond_37
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 59
    move-result v9

    .line 60
    goto :goto_e

    .line 61
    :cond_3c
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 64
    move-result-object v7

    .line 65
    goto :goto_e

    .line 66
    :cond_41
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 69
    move-result-object v6

    .line 70
    goto :goto_e

    .line 71
    :cond_46
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    goto :goto_e

    .line 76
    :cond_4b
    new-instance p0, Lcom/airbnb/lottie/model/content/CircleShape;

    .line 78
    move-object v4, p0

    .line 79
    invoke-direct/range {v4 .. v9}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    .line 82
    return-object p0
.end method
