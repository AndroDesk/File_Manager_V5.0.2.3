.class public Lcom/micloud/midrive/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "JsonUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static arrayToJson([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "Array is null."

    .line 3
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/ArgumentCheckUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lorg/json/JSONArray;

    .line 8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_16

    .line 15
    aget-object v3, p0, v2

    .line 17
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_c

    .line 23
    :cond_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static mergeJsonArray(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Lorg/json/JSONArray;

    .line 8
    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 15
    move-result v1

    .line 16
    if-ge p1, v1, :cond_1b

    .line 18
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
