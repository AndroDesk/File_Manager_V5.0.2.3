.class public Lcom/xiaomi/micloudsdk/request/utils/RequestJsonHelper;
.super Ljava/lang/Object;
.source "RequestJsonHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putInt(Lorg/json/JSONObject;[Ljava/lang/String;[I)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    aget v1, p2, v0

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamNeed(I)Z

    move-result v1

    if-eqz v1, :cond_13

    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-object p0
.end method

.method public static putLong(Lorg/json/JSONObject;[Ljava/lang/String;[J)Lorg/json/JSONObject;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    aget-wide v1, p2, v0

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamNeed(J)Z

    move-result v1

    if-eqz v1, :cond_13

    aget-object v1, p1, v0

    aget-wide v2, p2, v0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-object p0
.end method

.method public static putString(Lorg/json/JSONObject;[Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/ParamChecker;->checkParamNeed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-object p0
.end method
