.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 6
    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 3
    mul-int/lit8 v0, v0, 0x4

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    if-gt v1, v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr v1, v0

    .line 17
    div-int/lit8 v1, v1, 0x2

    .line 19
    new-array v2, v1, [D

    .line 21
    new-array v1, v1, [D

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_18
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    move-result v5

    .line 29
    if-ge v0, v5, :cond_42

    .line 31
    rem-int/lit8 v5, v0, 0x2

    .line 33
    if-nez v5, :cond_30

    .line 35
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Float;

    .line 41
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 44
    move-result v5

    .line 45
    float-to-double v5, v5

    .line 46
    aput-wide v5, v2, v4

    .line 48
    goto :goto_3f

    .line 49
    :cond_30
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/Float;

    .line 55
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 58
    move-result v5

    .line 59
    float-to-double v5, v5

    .line 60
    aput-wide v5, v1, v4

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 64
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_18

    .line 67
    :cond_42
    :goto_42
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    .line 70
    move-result p2

    .line 71
    if-ge v3, p2, :cond_72

    .line 73
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    .line 76
    move-result-object p2

    .line 77
    aget p2, p2, v3

    .line 79
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    .line 82
    move-result-object v0

    .line 83
    aget v0, v0, v3

    .line 85
    float-to-double v4, v0

    .line 86
    invoke-direct {p0, v4, v5, v2, v1}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    .line 89
    move-result v0

    .line 90
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 93
    move-result v4

    .line 94
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 97
    move-result v5

    .line 98
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 101
    move-result p2

    .line 102
    invoke-static {v0, v4, v5, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 105
    move-result p2

    .line 106
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    .line 109
    move-result-object v0

    .line 110
    aput p2, v0, v3

    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 114
    goto :goto_42

    .line 115
    :cond_72
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .registers 24

    .line 1
    move-object/from16 v0, p3

    .line 3
    move-object/from16 v1, p4

    .line 5
    const/4 v2, 0x1

    .line 6
    move v3, v2

    .line 7
    :goto_6
    array-length v4, v0

    .line 8
    const-wide v5, 0x406fe00000000000L  # 255.0

    .line 13
    if-ge v3, v4, :cond_2b

    .line 15
    add-int/lit8 v4, v3, -0x1

    .line 17
    aget-wide v7, v0, v4

    .line 19
    aget-wide v9, v0, v3

    .line 21
    cmpl-double v11, v9, p1

    .line 23
    if-ltz v11, :cond_28

    .line 25
    sub-double v11, p1, v7

    .line 27
    sub-double/2addr v9, v7

    .line 28
    div-double v17, v11, v9

    .line 30
    aget-wide v13, v1, v4

    .line 32
    aget-wide v15, v1, v3

    .line 34
    invoke-static/range {v13 .. v18}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    .line 37
    move-result-wide v0

    .line 38
    :goto_25
    mul-double/2addr v0, v5

    .line 39
    double-to-int v0, v0

    .line 40
    return v0

    .line 41
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_6

    .line 44
    :cond_2b
    array-length v0, v1

    .line 45
    sub-int/2addr v0, v2

    .line 46
    aget-wide v0, v1, v0

    .line 48
    goto :goto_25
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .registers 15

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v3

    :goto_12
    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 5
    :cond_17
    :goto_17
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 6
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2a
    if-eqz v0, :cond_2f

    .line 7
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 8
    :cond_2f
    iget p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3c

    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 10
    :cond_3c
    iget p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v0, p1, [F

    .line 11
    new-array p1, p1, [I

    move v1, v3

    move v4, v1

    .line 12
    :goto_44
    iget v5, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v5, v5, 0x4

    if-ge v3, v5, :cond_80

    .line 13
    div-int/lit8 v5, v3, 0x4

    .line 14
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    .line 15
    rem-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_7a

    const-wide v9, 0x406fe00000000000L  # 255.0

    if-eq v8, v2, :cond_77

    const/4 v11, 0x2

    if-eq v8, v11, :cond_74

    const/4 v11, 0x3

    if-eq v8, v11, :cond_69

    goto :goto_7d

    :cond_69
    mul-double/2addr v6, v9

    double-to-int v6, v6

    const/16 v7, 0xff

    .line 16
    invoke-static {v7, v1, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, p1, v5

    goto :goto_7d

    :cond_74
    mul-double/2addr v6, v9

    double-to-int v4, v6

    goto :goto_7d

    :cond_77
    mul-double/2addr v6, v9

    double-to-int v1, v6

    goto :goto_7d

    :cond_7a
    double-to-float v6, v6

    .line 17
    aput v6, v0, v5

    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 18
    :cond_80
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v1, v0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 19
    invoke-direct {p0, v1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
