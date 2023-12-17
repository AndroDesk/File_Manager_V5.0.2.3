.class public Lcom/xiaomi/micloudsdk/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertObj(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    instance-of v0, p0, Lorg/json/JSONObject;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Lorg/json/JSONObject;

    .line 7
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    instance-of v0, p0, Lorg/json/JSONArray;

    .line 14
    if-eqz v0, :cond_2c

    .line 16
    check-cast p0, Lorg/json/JSONArray;

    .line 18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 21
    move-result v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_1b
    if-ge v2, v0, :cond_2b

    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->convertObj(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    return-object v1

    .line 45
    :cond_2c
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 47
    if-ne p0, v0, :cond_31

    .line 49
    const/4 p0, 0x0

    .line 50
    :cond_31
    return-object p0
.end method

.method public static getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_25

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->convertObj(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    goto :goto_d

    .line 38
    :cond_25
    return-object v0
.end method
