.class Lcom/airbnb/lottie/parser/FontCharacterParser;
.super Ljava/lang/Object;
.source "FontCharacterParser.java"


# static fields
.field private static final DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    const-string v0, "ch"

    .line 3
    const-string v1, "size"

    .line 5
    const-string v2, "w"

    .line 7
    const-string v3, "style"

    .line 9
    const-string v4, "fFamily"

    .line 11
    const-string v5, "data"

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 23
    const-string v0, "shapes"

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;
    .registers 13

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 9
    const/4 v0, 0x0

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v9, v0

    .line 14
    move-object v10, v9

    .line 15
    move-wide v5, v2

    .line 16
    move-wide v7, v5

    .line 17
    move v2, v4

    .line 18
    :goto_11
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_85

    .line 24
    sget-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 26
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_7c

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v0, v3, :cond_77

    .line 35
    const/4 v3, 0x2

    .line 36
    if-eq v0, v3, :cond_72

    .line 38
    const/4 v3, 0x3

    .line 39
    if-eq v0, v3, :cond_6d

    .line 41
    const/4 v3, 0x4

    .line 42
    if-eq v0, v3, :cond_68

    .line 44
    const/4 v3, 0x5

    .line 45
    if-eq v0, v3, :cond_35

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 53
    goto :goto_11

    .line 54
    :cond_35
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 57
    :goto_38
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_64

    .line 63
    sget-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 65
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4d

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 74
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 77
    goto :goto_38

    .line 78
    :cond_4d
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 81
    :goto_50
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_60

    .line 87
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_50

    .line 97
    :cond_60
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 100
    goto :goto_38

    .line 101
    :cond_64
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 104
    goto :goto_11

    .line 105
    :cond_68
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 108
    move-result-object v10

    .line 109
    goto :goto_11

    .line 110
    :cond_6d
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 113
    move-result-object v9

    .line 114
    goto :goto_11

    .line 115
    :cond_72
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 118
    move-result-wide v7

    .line 119
    goto :goto_11

    .line 120
    :cond_77
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 123
    move-result-wide v5

    .line 124
    goto :goto_11

    .line 125
    :cond_7c
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 132
    move-result v2

    .line 133
    goto :goto_11

    .line 134
    :cond_85
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 137
    new-instance p0, Lcom/airbnb/lottie/model/FontCharacter;

    .line 139
    move-object v0, p0

    .line 140
    move-wide v3, v5

    .line 141
    move-wide v5, v7

    .line 142
    move-object v7, v9

    .line 143
    move-object v8, v10

    .line 144
    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-object p0
.end method
