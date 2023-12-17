.class Lcom/airbnb/lottie/parser/MergePathsParser;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "nm"

    .line 3
    const-string v1, "mm"

    .line 5
    const-string v2, "hd"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move-object v1, v0

    .line 5
    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_32

    .line 11
    sget-object v3, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 13
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_2d

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v3, v4, :cond_24

    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v3, v4, :cond_1f

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 31
    goto :goto_4

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 35
    move-result v2

    .line 36
    goto :goto_4

    .line 37
    :cond_24
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 44
    move-result-object v1

    .line 45
    goto :goto_4

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    goto :goto_4

    .line 51
    :cond_32
    new-instance p0, Lcom/airbnb/lottie/model/content/MergePaths;

    .line 53
    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    .line 56
    return-object p0
.end method
