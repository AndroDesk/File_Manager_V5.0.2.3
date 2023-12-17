.class public Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;
.super Ljava/lang/Object;
.source "CloudRelocationUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field private static final CODE_EXCEED_MAX_REDIRECT_COUNT:I = 0x2732

.field public static final CODE_IS_INTERNATIONAL_ACCOUNT:I = 0x1

.field public static final CODE_NOT_INTERNATIONAL_ACCOUNT:I = 0x0

.field private static final CODE_REDIRECT:I = 0x134

.field public static final CODE_UNKOWN_ERROR:I = 0x2

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final MAX_REDIRECT_COUNT:I = 0xf

.field private static final REDIRECT_URL:Ljava/lang/String; = "redirectUrl"

.field private static final RESUME_SYNC_INTERVAL_SECOND:I = 0xa

.field private static final RETRY_AFTER:Ljava/lang/String; = "retryAfter"

.field private static final SERVER_RETRY_INTERVALS:[I

.field private static final URL_RELOCATION_QUERY:Ljava/lang/String;

.field private static volatile sHostsCacheInner:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sNeedInitHostList:Ljava/lang/Object;

.field private static volatile sNeedUpdateHostList:Z

.field private static sUpdateMiCloudHostsLock:Ljava/lang/Object;

.field private static sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->SERVER_RETRY_INTERVALS:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    const-string v2, "/mic/relocation/v3/user/record"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->URL_RELOCATION_QUERY:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sHostsCacheInner:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    return-void

    :array_26
    .array-data 4
        0x3e8
        0x7d0
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRedirect(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const-string v0, "code"

    const/16 v1, 0x2732

    const/16 v2, 0x1f7

    const/16 v3, 0xf

    if-ge p1, v3, :cond_78

    :try_start_a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_13} :catch_5f

    const/16 v4, 0x134

    const-string v5, "data"

    if-ne v3, v4, :cond_34

    :try_start_19
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isPermanent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    :cond_29
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "redirectUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_38} :catch_5f

    const-string v4, "retryAfter"

    if-eq v3, v2, :cond_51

    :try_start_3c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_43

    goto :goto_76

    :cond_43
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v0, v2, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    throw v0

    :cond_51
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v0, v2, v2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    throw v0
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException in checkRedirect():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Micloud"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_76
    const/4 p0, 0x0

    return-object p0

    :cond_78
    new-instance p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 p1, 0xa

    invoke-direct {p0, v2, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    throw p0
.end method

.method private static getHostCache()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sHostsCacheInner:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "Micloud"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "Enter getHost key="

    invoke-static {v2, p0, v0}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_20

    check-cast v2, Ljava/lang/String;

    goto :goto_21

    :cond_20
    move-object v2, v3

    :goto_21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_32

    const-string p0, "Hit host cache directly return host = "

    invoke-static {p0, v2, v0}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-object v2

    :cond_33
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ly3/b;->a:Ly3/c;

    invoke-interface {v5, v4}, Ly3/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4e

    const-string p0, "Hosts in SystemSettings/sp = null, return null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-object v3

    :cond_4f
    :try_start_4f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateHostCache(Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6c

    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_6c

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_6c
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_86

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find host in SystemSettings/sp return host = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_86} :catch_87

    :cond_86
    return-object v2

    :catch_87
    move-exception p0

    const-string v1, "JSONException in getHost, return null"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public static getRelocatedHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateMiCloudHosts(Z)V

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Host with scheme: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Micloud"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_27

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    :cond_27
    return-object p0
.end method

.method public static isInternationalAccount(Z)I
    .registers 6

    if-eqz p0, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateHostCache(Ljava/util/Map;)V

    :cond_a
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_30

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    :try_start_19
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateMiCloudHosts(Z)V
    :try_end_1c
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_19 .. :try_end_1c} :catch_27

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_30

    return v2

    :catch_27
    move-exception p0

    const-string v0, "Micloud"

    const-string v1, "CloudServerException in isInternationalAccount"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_30
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_57

    goto :goto_3c

    :cond_57
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_64

    goto :goto_3c

    :cond_64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    const/4 p0, 0x0

    return p0

    :cond_6c
    return v1

    :cond_6d
    return v2
.end method

.method private static needUpdateHostListAndInitIfNeeded()Z
    .registers 3

    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedInitHostList:Ljava/lang/Object;

    if-nez v0, :cond_27

    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedInitHostList:Ljava/lang/Object;

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedInitHostList:Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ly3/b;->a:Ly3/c;

    invoke-interface {v2, v1}, Ly3/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedUpdateHostList:Z

    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1

    :cond_27
    :goto_27
    sget-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedUpdateHostList:Z

    return v0
.end method

.method private static setNeedUpdateHostsList(Z)V
    .registers 1

    sput-boolean p0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedUpdateHostList:Z

    return-void
.end method

.method public static shouldUpdateHost()Z
    .registers 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->shouldUpdateHost()Z

    move-result v0

    return v0
.end method

.method private static updateHostCache(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sHostsCacheInner:Ljava/util/Map;

    return-void
.end method

.method private static updateMiCloudHosts(Z)V
    .registers 8

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->needUpdateHostListAndInitIfNeeded()Z

    const-string v0, "Micloud"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "Micloud"

    const-string v1, "enter updateMiCloudHosts, sNeedUpdateHosts: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->needUpdateHostListAndInitIfNeeded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ly3/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_49

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "Micloud"

    const-string v1, "change sNeedUpdateHosts to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    :cond_49
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->needUpdateHostListAndInitIfNeeded()Z

    move-result v0

    if-nez v0, :cond_51

    if-eqz p0, :cond_22f

    :cond_51
    const/4 p0, 0x0

    :try_start_52
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_233

    :goto_55
    move v1, v2

    :goto_56
    :try_start_56
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sget-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->UPDATING:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    if-ne v3, v4, :cond_a6

    const-string v1, "Micloud"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for an existing updateMiCloudHosts to finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const-string v1, "Micloud"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The existing updateMiCloudHosts finished "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    if-eq v1, v3, :cond_a4

    goto :goto_55

    :cond_a4
    move v1, p0

    goto :goto_56

    :cond_a6
    if-eqz v1, :cond_aa

    sput-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    :cond_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_56 .. :try_end_ab} :catchall_230

    if-eqz v1, :cond_22f

    :try_start_ad
    const-string v0, "Micloud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMiCloudHosts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RomCountryUtil;->getRomCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_df

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->setRegion(Ljava/lang/String;)V

    const-string v2, "romCountry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e8

    :cond_df
    const-string v1, "romCountry"

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e8
    move v1, p0

    :goto_e9
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3
    :try_end_f2
    .catchall {:try_start_ad .. :try_end_f2} :catchall_21d

    if-nez v3, :cond_217

    :try_start_f4
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_100
    .catch Lorg/json/JSONException; {:try_start_f4 .. :try_end_100} :catch_209
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_f4 .. :try_end_100} :catch_1fb
    .catch Ljavax/crypto/BadPaddingException; {:try_start_f4 .. :try_end_100} :catch_1ed
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f4 .. :try_end_100} :catch_1df
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_100} :catch_186
    .catchall {:try_start_f4 .. :try_end_100} :catchall_21d

    if-eqz v4, :cond_113

    :try_start_102
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_105
    .catch Ljava/lang/InterruptedException; {:try_start_102 .. :try_end_105} :catch_233

    :try_start_105
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_110
    move-exception v1

    monitor-exit v0
    :try_end_112
    .catchall {:try_start_105 .. :try_end_112} :catchall_110

    :try_start_112
    throw v1
    :try_end_113
    .catch Ljava/lang/InterruptedException; {:try_start_112 .. :try_end_113} :catch_233

    :cond_113
    :try_start_113
    sget-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->URL_RELOCATION_QUERY:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_198

    const-string v2, "data"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "hostList"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_174

    const-string v4, "Micloud"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHostList set sNeedUpdateHosts to false "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ly3/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateHostCache(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_174

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Ly3/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_174
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_174} :catch_209
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_113 .. :try_end_174} :catch_1fb
    .catch Ljavax/crypto/BadPaddingException; {:try_start_113 .. :try_end_174} :catch_1ed
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_113 .. :try_end_174} :catch_1df
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_174} :catch_186
    .catchall {:try_start_113 .. :try_end_174} :catchall_21d

    :cond_174
    :try_start_174
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_177
    .catch Ljava/lang/InterruptedException; {:try_start_174 .. :try_end_177} :catch_233

    :try_start_177
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto/16 :goto_22f

    :catchall_183
    move-exception v1

    monitor-exit v0
    :try_end_185
    .catchall {:try_start_177 .. :try_end_185} :catchall_183

    :try_start_185
    throw v1
    :try_end_186
    .catch Ljava/lang/InterruptedException; {:try_start_185 .. :try_end_186} :catch_233

    :catch_186
    move-exception v2

    :try_start_187
    const-string v3, "Micloud"

    const-string v4, "IOException in updateMiCloudHosts"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    :cond_198
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->SERVER_RETRY_INTERVALS:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1c4

    const-string v2, "Micloud"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ms for retry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, v3, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e9

    :cond_1c4
    if-eqz v2, :cond_1cc

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_1cc
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(I)V

    throw v0

    :cond_1d2
    const-string v0, "Micloud"

    const-string v1, "No network in IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_1df
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "ClientProtocolException in updateMiCloudHosts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_1ed
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "BadPaddingException in updateMiCloudHosts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_1fb
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "IllegalBlockSizeException in updateMiCloudHosts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_209
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "JSONException in updateMiCloudHosts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :cond_217
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_21d
    .catchall {:try_start_187 .. :try_end_21d} :catchall_21d

    :catchall_21d
    move-exception v0

    :try_start_21e
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_221
    .catch Ljava/lang/InterruptedException; {:try_start_21e .. :try_end_221} :catch_233

    :try_start_221
    sget-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->FAILED:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sput-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    sget-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_22b
    .catchall {:try_start_221 .. :try_end_22b} :catchall_22c

    :try_start_22b
    throw v0
    :try_end_22c
    .catch Ljava/lang/InterruptedException; {:try_start_22b .. :try_end_22c} :catch_233

    :catchall_22c
    move-exception v0

    :try_start_22d
    monitor-exit v1
    :try_end_22e
    .catchall {:try_start_22d .. :try_end_22e} :catchall_22c

    :try_start_22e
    throw v0
    :try_end_22f
    .catch Ljava/lang/InterruptedException; {:try_start_22e .. :try_end_22f} :catch_233

    :cond_22f
    :goto_22f
    return-void

    :catchall_230
    move-exception v1

    :try_start_231
    monitor-exit v0
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_230

    :try_start_232
    throw v1
    :try_end_233
    .catch Ljava/lang/InterruptedException; {:try_start_232 .. :try_end_233} :catch_233

    :catch_233
    move-exception v0

    const-string v1, "Micloud"

    const-string v2, "InterruptedException in updateMiCloudHosts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method public static updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    const-string v0, ". "

    const-string v1, "Micloud"

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateMiCloudHosts(Z)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_a
    new-array v4, p1, [Ljava/lang/Object;

    aput-object v1, v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Original URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7c

    new-array v6, p1, [Ljava/lang/Object;

    aput-object v1, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v7, v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_71
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_71} :catch_72

    goto :goto_7c

    :catch_72
    move-exception v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "MalformedURLException in updateHost %s"

    invoke-static {v1, v4, v5}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7c
    :goto_7c
    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string v1, "Final URL: "

    invoke-static {v1, p0, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-object p0
.end method
