.class public Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;
.super Ljava/lang/Object;
.source "CloudInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudInfoUtils"

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "iw"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    const-string p0, "he"

    .line 15
    return-object p0

    .line 16
    :cond_f
    const-string v0, "in"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    const-string p0, "id"

    .line 26
    return-object p0

    .line 27
    :cond_1a
    const-string v0, "ji"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 35
    const-string p0, "yi"

    .line 37
    :cond_24
    return-object p0
.end method

.method public static getItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
    .registers 9

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "Name"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    const-string v0, "LocalizedName"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    const-string v0, "Used"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 22
    move-result-wide v5

    .line 23
    new-instance p1, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-object v1, p1

    .line 29
    move-object v2, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V

    .line 33
    return-object p1
.end method

.method public static getMiCloudFamilyInfo(Ljava/lang/String;)Lmiui/cloud/sync/FamilyInfo;
    .registers 6

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    const-string v2, "version"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "_locale"

    .line 17
    invoke-virtual {v1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_FAMILY_INFO:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->requestServer(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 28
    move-result-object p0

    .line 29
    :try_start_1c
    const-string v0, "code"

    .line 31
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_33

    .line 37
    const-string v0, "data"

    .line 39
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    move-result-object p0
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_34

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    const-string v0, "CloudInfoUtils"

    .line 47
    const-string v1, "JSONException in getMiCloudFamilyInfo"

    .line 49
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_33
    move-object p0, v2

    .line 53
    :goto_34
    if-nez p0, :cond_37

    .line 55
    return-object v2

    .line 56
    :cond_37
    const-string v0, "usedDetails"

    .line 58
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 61
    move-result-object v0

    .line 62
    const/4 v1, -0x1

    .line 63
    if-eqz v0, :cond_44

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 68
    move-result v1

    .line 69
    :cond_44
    new-instance v0, Lmiui/cloud/sync/FamilyInfo;

    .line 71
    const-string v2, "role"

    .line 73
    const-string v3, ""

    .line 75
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    const-string v4, "status"

    .line 81
    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-direct {v0, v2, p0, v1}, Lmiui/cloud/sync/FamilyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-object v0
.end method

.method public static getMiCloudMemberStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/VipInfo;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    const-string v1, "version"

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p0, "_locale"

    .line 17
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_MEMBER_STATUS_QUERY:Ljava/lang/String;

    .line 22
    sget-object p1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->requestServer(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 28
    move-result-object p0

    .line 29
    :try_start_1c
    const-string p1, "code"

    .line 31
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_33

    .line 37
    const-string p1, "data"

    .line 39
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    move-result-object p0
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_34

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    const-string p1, "CloudInfoUtils"

    .line 47
    const-string v0, "JSONException in getMiCloudMemberStatusInfo"

    .line 49
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_33
    move-object p0, v1

    .line 53
    :goto_34
    if-nez p0, :cond_37

    .line 55
    return-object v1

    .line 56
    :cond_37
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getVipInfo(Lorg/json/JSONObject;)Lmiui/cloud/sync/VipInfo;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static getMiCloudStatusInfo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 6

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    const-string v2, "version"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "_locale"

    .line 17
    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p2, "CloudInfoUtils"

    .line 22
    if-eqz p1, :cond_25

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "query status with status."

    .line 30
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, "clientStatus"

    .line 35
    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_25
    sget-object p1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_STATUS_QUERY:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->requestServer(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 46
    move-result-object p1

    .line 47
    :try_start_2e
    const-string v0, "code"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_43

    .line 55
    const-string v0, "data"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 60
    move-result-object p1
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3c} :catch_3d

    .line 61
    goto :goto_44

    .line 62
    :catch_3d
    move-exception p1

    .line 63
    const-string v0, "JSONException in getMiCloudStatusInfo"

    .line 65
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_43
    move-object p1, v2

    .line 69
    :goto_44
    if-nez p1, :cond_47

    .line 71
    return-object v2

    .line 72
    :cond_47
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 78
    invoke-direct {p2, p0}, Lmiui/cloud/sync/MiCloudStatusInfo;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2, p1}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseMap(Ljava/util/Map;)V

    .line 84
    return-object p2
.end method

.method public static getQuotaInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 18

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string v1, "Total"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v4

    .line 9
    const-string v1, "Used"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 14
    move-result-wide v6

    .line 15
    const-string v1, "Warn"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v8

    .line 21
    const-string v1, "YearlyPackageType"

    .line 23
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v9

    .line 27
    const-string v1, "YearlyPackageSize"

    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 32
    move-result-wide v10

    .line 33
    const-string v1, "YearlyPackageCreateTime"

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 38
    move-result-wide v12

    .line 39
    const-string v1, "YearlyPackageExpireTime"

    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 44
    move-result-wide v14

    .line 45
    new-instance v1, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 47
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    move-object v2, v1

    .line 51
    move-object/from16 v3, p0

    .line 53
    invoke-direct/range {v2 .. v15}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V

    .line 56
    const-string v2, "ItemInfoList"

    .line 58
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_58

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_40
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 68
    move-result v3

    .line 69
    if-ge v2, v3, :cond_58

    .line 71
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 74
    move-result-object v3

    .line 75
    move-object/from16 v4, p0

    .line 77
    invoke-static {v4, v3}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_55

    .line 83
    invoke-virtual {v1, v3}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->addItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V

    .line 86
    :cond_55
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_40

    .line 89
    :cond_58
    return-object v1
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->sUserAgent:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_c0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "/"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "ro.product.mod_device"

    .line 34
    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2f

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_32
    const-string v1, "; MIUI/"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " E/"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "ro.miui.ui.version.name"

    .line 68
    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " B/"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    .line 82
    const-string v2, "null"

    .line 84
    if-eqz v1, :cond_5b

    .line 86
    const-string v1, "A"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    goto :goto_72

    .line 92
    :cond_5b
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 94
    if-eqz v1, :cond_65

    .line 96
    const-string v1, "D"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    goto :goto_72

    .line 102
    :cond_65
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 104
    if-eqz v1, :cond_6f

    .line 106
    const-string v1, "S"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    goto :goto_72

    .line 112
    :cond_6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_72
    const-string v1, " L/"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_9b

    .line 130
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_a0

    .line 143
    const-string v3, "-"

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    goto :goto_a0

    .line 156
    :cond_9b
    const-string v1, "EN"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_a0
    :goto_a0
    const-string v1, " LO/"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_b7

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_ba

    .line 184
    :cond_b7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :goto_ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->sUserAgent:Ljava/lang/String;

    .line 193
    :cond_c0
    sget-object v0, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->sUserAgent:Ljava/lang/String;

    .line 195
    return-object v0
.end method

.method public static getVipInfo(Lorg/json/JSONObject;)Lmiui/cloud/sync/VipInfo;
    .registers 8

    .line 1
    new-instance v6, Lmiui/cloud/sync/VipInfo;

    .line 3
    const-string v0, "vipName"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v0, "level"

    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const-string v0, "expireTime"

    .line 17
    const-wide/16 v3, -0x1

    .line 19
    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 22
    move-result-wide v3

    .line 23
    const-string v0, "autoRenew"

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v5

    .line 30
    move-object v0, v6

    .line 31
    invoke-direct/range {v0 .. v5}, Lmiui/cloud/sync/VipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 34
    return-object v6
.end method

.method public static toJSONObject(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)Lorg/json/JSONObject;
    .registers 5

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v1

    const-string v3, "Used"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LocalizedName"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v1

    const-string v3, "Total"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v1

    const-string v3, "Used"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Warn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getYearlyPackageType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YearlyPackageType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getYearlyPackageSize()J

    move-result-wide v1

    const-string v3, "YearlyPackageSize"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getYearlyPackageCreateTime()J

    move-result-wide v1

    const-string v3, "YearlyPackageCreateTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getYearlyPackageExpireTime()J

    move-result-wide v1

    const-string v3, "YearlyPackageExpireTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 10
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getItemInfoList()Ljava/util/ArrayList;

    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    .line 12
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->toJSONObject(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_51

    :cond_65
    const-string p0, "ItemInfoList"

    .line 13
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
