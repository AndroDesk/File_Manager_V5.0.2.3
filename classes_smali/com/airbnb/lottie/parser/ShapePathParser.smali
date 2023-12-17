.class Lcom/airbnb/lottie/parser/ShapePathParser;
.super Ljava/lang/Object;
.source "ShapePathParser.java"


# static fields
.field public static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "nm"

    .line 3
    const-string v1, "ind"

    .line 5
    const-string v2, "ks"

    .line 7
    const-string v3, "hd"

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v1

    .line 4
    move-object v3, v2

    .line 5
    move v1, v0

    .line 6
    :goto_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 9
    move-result v4

    .line 10
    if-eqz v4, :cond_34

    .line 12
    sget-object v4, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 14
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_2f

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eq v4, v5, :cond_2a

    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq v4, v5, :cond_25

    .line 26
    const/4 v5, 0x3

    .line 27
    if-eq v4, v5, :cond_20

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 32
    goto :goto_5

    .line 33
    :cond_20
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 36
    move-result v1

    .line 37
    goto :goto_5

    .line 38
    :cond_25
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 41
    move-result-object v3

    .line 42
    goto :goto_5

    .line 43
    :cond_2a
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 46
    move-result v0

    .line 47
    goto :goto_5

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    goto :goto_5

    .line 53
    :cond_34
    new-instance p0, Lcom/airbnb/lottie/model/content/ShapePath;

    .line 55
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Z)V

    .line 58
    return-object p0
.end method
