.class public Lcom/xiaomi/opensdk/pdc/asset/AssetUtils;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetEntityFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;
    .registers 10

    .line 1
    const-string v0, "assetInfo"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 9
    const-string v1, "assetId"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    const-string v1, "size"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 20
    move-result-wide v4

    .line 21
    const-string v0, "existed"

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 27
    move-result v6

    .line 28
    move-object v1, v7

    .line 29
    move-object v2, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 33
    return-object v7
.end method

.method public static getUrlEntityFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;
    .registers 5

    .line 1
    const-string v0, "storage"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;

    .line 9
    const-string v1, "expireAt"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 14
    move-result-wide v1

    .line 15
    const-string v3, "downloadUrl"

    .line 17
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, v1, v2, p0}, Lcom/xiaomi/opensdk/pdc/asset/UrlEntity;-><init>(JLjava/lang/String;)V

    .line 24
    return-object v0
.end method

.method public static parseJSONArrayToEntities(Lorg/json/JSONArray;Ljava/lang/String;)[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;
    .registers 14

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v3, v0, :cond_34

    .line 11
    :try_start_a
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 14
    move-result-object v4

    .line 15
    new-instance v11, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 17
    const-string v5, "assetId"

    .line 19
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v7

    .line 23
    const-string v5, "size"

    .line 25
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 28
    move-result-wide v8

    .line 29
    const-string v5, "existed"

    .line 31
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 34
    move-result v10

    .line 35
    move-object v5, v11

    .line 36
    move-object v6, p1

    .line 37
    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 40
    aput-object v11, v1, v3
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_29} :catch_2c

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_8

    .line 45
    :catch_2c
    new-instance p0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 47
    const-string p1, "AssetUtils parseJSONArrayToEntities() JSONException"

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 53
    :cond_34
    return-object v1
.end method
