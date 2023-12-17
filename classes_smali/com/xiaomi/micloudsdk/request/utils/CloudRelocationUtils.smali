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

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_26

    .line 7
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->SERVER_RETRY_INTERVALS:[I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    .line 16
    const-string v2, "/mic/relocation/v3/user/record"

    .line 18
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->URL_RELOCATION_QUERY:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sHostsCacheInner:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/lang/Object;

    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 38
    return-void

    .line 39
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

    .line 1
    const-string v0, "code"

    .line 3
    const/16 v1, 0x2732

    .line 5
    const/16 v2, 0x1f7

    .line 7
    const/16 v3, 0xf

    .line 9
    if-ge p1, v3, :cond_78

    .line 11
    :try_start_a
    new-instance p1, Lorg/json/JSONObject;

    .line 13
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 19
    move-result v3
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_13} :catch_5f

    .line 20
    const/16 v4, 0x134

    .line 22
    const-string v5, "data"

    .line 24
    if-ne v3, v4, :cond_34

    .line 26
    :try_start_19
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "isPermanent"

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_29

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    .line 42
    :cond_29
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 45
    move-result-object p1

    .line 46
    const-string v0, "redirectUrl"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 56
    move-result v3
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_38} :catch_5f

    .line 57
    const-string v4, "retryAfter"

    .line 59
    if-eq v3, v2, :cond_51

    .line 61
    :try_start_3c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 64
    move-result v0

    .line 65
    if-eq v0, v1, :cond_43

    .line 67
    goto :goto_76

    .line 68
    :cond_43
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 75
    move-result p1

    .line 76
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 78
    invoke-direct {v0, v2, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    .line 81
    throw v0

    .line 82
    :cond_51
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 89
    move-result p1

    .line 90
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 92
    invoke-direct {v0, v2, v2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    .line 95
    throw v0
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_5f} :catch_5f

    .line 96
    :catch_5f
    move-exception p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v1, "JSONException in checkRedirect():"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    const-string v0, "Micloud"

    .line 116
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_76
    const/4 p0, 0x0

    .line 120
    return-object p0

    .line 121
    :cond_78
    new-instance p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 123
    const/16 p1, 0xa

    .line 125
    invoke-direct {p0, v2, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    .line 128
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sHostsCacheInner:Ljava/util/Map;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 8
    return-object v0
.end method

.method private static getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "Micloud"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_e

    .line 10
    const-string v2, "Enter getHost key="

    .line 12
    invoke-static {v2, p0, v0}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_e
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_20

    .line 26
    instance-of v4, v2, Ljava/lang/String;

    .line 28
    if-eqz v4, :cond_20

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object v2, v3

    .line 34
    :goto_21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_33

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_32

    .line 46
    const-string p0, "Hit host cache directly return host = "

    .line 48
    invoke-static {p0, v2, v0}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_32
    return-object v2

    .line 52
    :cond_33
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v4

    .line 56
    sget-object v5, Ly3/b;->a:Ly3/c;

    .line 58
    invoke-interface {v5, v4}, Ly3/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_4f

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_4e

    .line 74
    const-string p0, "Hosts in SystemSettings/sp = null, return null"

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4e
    return-object v3

    .line 80
    :cond_4f
    :try_start_4f
    new-instance v5, Lorg/json/JSONObject;

    .line 82
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 88
    move-result-object v4

    .line 89
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateHostCache(Ljava/util/Map;)V

    .line 92
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 100
    if-eqz p0, :cond_6c

    .line 102
    instance-of v4, p0, Ljava/lang/String;

    .line 104
    if-eqz v4, :cond_6c

    .line 106
    move-object v2, p0

    .line 107
    check-cast v2, Ljava/lang/String;

    .line 109
    :cond_6c
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_86

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string v1, "find host in SystemSettings/sp return host = "

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_86} :catch_87

    .line 135
    :cond_86
    return-object v2

    .line 136
    :catch_87
    move-exception p0

    .line 137
    const-string v1, "JSONException in getHost, return null"

    .line 139
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    return-object v3
.end method

.method public static getRelocatedHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateMiCloudHosts(Z)V

    .line 4
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v0, "Host with scheme: "

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const-string v0, "Micloud"

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-eqz p0, :cond_27

    .line 32
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    :cond_27
    return-object p0
.end method

.method public static isInternationalAccount(Z)I
    .registers 6

    .line 1
    if-eqz p0, :cond_a

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateHostCache(Ljava/util/Map;)V

    .line 11
    :cond_a
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-eqz v0, :cond_30

    .line 23
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    .line 26
    :try_start_19
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateMiCloudHosts(Z)V
    :try_end_1c
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_19 .. :try_end_1c} :catch_27

    .line 29
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_30

    .line 39
    return v2

    .line 40
    :catch_27
    move-exception p0

    .line 41
    const-string v0, "Micloud"

    .line 43
    const-string v1, "CloudServerException in isInternationalAccount"

    .line 45
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return v2

    .line 49
    :cond_30
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostCache()Ljava/util/Map;

    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p0

    .line 61
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_6d

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    instance-of v4, v0, Ljava/lang/String;

    .line 85
    if-nez v4, :cond_57

    .line 87
    goto :goto_3c

    .line 88
    :cond_57
    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    if-nez v0, :cond_64

    .line 100
    goto :goto_3c

    .line 101
    :cond_64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_6c

    .line 107
    const/4 p0, 0x0

    .line 108
    return p0

    .line 109
    :cond_6c
    return v1

    .line 110
    :cond_6d
    return v2
.end method

.method private static needUpdateHostListAndInitIfNeeded()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedInitHostList:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_27

    .line 5
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedInitHostList:Ljava/lang/Object;

    .line 10
    if-nez v1, :cond_22

    .line 12
    new-instance v1, Ljava/lang/Object;

    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedInitHostList:Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Ly3/b;->a:Ly3/c;

    .line 25
    invoke-interface {v2, v1}, Ly3/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 33
    sput-boolean v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedUpdateHostList:Z

    .line 35
    :cond_22
    monitor-exit v0

    .line 36
    goto :goto_27

    .line 37
    :catchall_24
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    .line 39
    throw v1

    .line 40
    :cond_27
    :goto_27
    sget-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedUpdateHostList:Z

    .line 42
    return v0
.end method

.method private static setNeedUpdateHostsList(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sNeedUpdateHostList:Z

    .line 3
    return-void
.end method

.method public static shouldUpdateHost()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->shouldUpdateHost()Z

    .line 8
    move-result v0

    .line 9
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sHostsCacheInner:Ljava/util/Map;

    .line 8
    return-void
.end method

.method private static updateMiCloudHosts(Z)V
    .registers 8

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->needUpdateHostListAndInitIfNeeded()Z

    .line 4
    const-string v0, "Micloud"

    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_22

    .line 13
    const-string v0, "Micloud"

    .line 15
    const-string v1, "enter updateMiCloudHosts, sNeedUpdateHosts: "

    .line 17
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->needUpdateHostListAndInitIfNeeded()Z

    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_22
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ly3/b;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-nez v1, :cond_49

    .line 50
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->getAccountName()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_49

    .line 64
    const-string v0, "Micloud"

    .line 66
    const-string v1, "change sNeedUpdateHosts to true"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    .line 74
    :cond_49
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->needUpdateHostListAndInitIfNeeded()Z

    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_51

    .line 80
    if-eqz p0, :cond_22f

    .line 82
    :cond_51
    const/4 p0, 0x0

    .line 83
    :try_start_52
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 85
    monitor-enter v0
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_233

    .line 86
    :goto_55
    move v1, v2

    .line 87
    :goto_56
    :try_start_56
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 89
    sget-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->UPDATING:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 91
    if-ne v3, v4, :cond_a6

    .line 93
    const-string v1, "Micloud"

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v4, "Waiting for an existing updateMiCloudHosts to finish "

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 128
    const-string v1, "Micloud"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v4, "The existing updateMiCloudHosts finished "

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 160
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 162
    if-eq v1, v3, :cond_a4

    .line 164
    goto :goto_55

    .line 165
    :cond_a4
    move v1, p0

    .line 166
    goto :goto_56

    .line 167
    :cond_a6
    if-eqz v1, :cond_aa

    .line 169
    sput-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 171
    :cond_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_56 .. :try_end_ab} :catchall_230

    .line 172
    if-eqz v1, :cond_22f

    .line 174
    :try_start_ad
    const-string v0, "Micloud"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string v2, "updateMiCloudHosts "

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/util/HashMap;

    .line 206
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RomCountryUtil;->getRomCountry()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    if-eqz v1, :cond_df

    .line 215
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->setRegion(Ljava/lang/String;)V

    .line 218
    const-string v2, "romCountry"

    .line 220
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    goto :goto_e8

    .line 224
    :cond_df
    const-string v1, "romCountry"

    .line 226
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRegion()Ljava/lang/String;

    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_e8
    move v1, p0

    .line 234
    :goto_e9
    const/4 v2, 0x0

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 242
    move-result v3
    :try_end_f2
    .catchall {:try_start_ad .. :try_end_f2} :catchall_21d

    .line 243
    if-nez v3, :cond_217

    .line 245
    :try_start_f4
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 248
    move-result-object v3

    .line 249
    invoke-interface {v3}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->getAccountName()Ljava/lang/String;

    .line 252
    move-result-object v3

    .line 253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    move-result v4
    :try_end_100
    .catch Lorg/json/JSONException; {:try_start_f4 .. :try_end_100} :catch_209
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_f4 .. :try_end_100} :catch_1fb
    .catch Ljavax/crypto/BadPaddingException; {:try_start_f4 .. :try_end_100} :catch_1ed
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f4 .. :try_end_100} :catch_1df
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_100} :catch_186
    .catchall {:try_start_f4 .. :try_end_100} :catchall_21d

    .line 257
    if-eqz v4, :cond_113

    .line 259
    :try_start_102
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 261
    monitor-enter v0
    :try_end_105
    .catch Ljava/lang/InterruptedException; {:try_start_102 .. :try_end_105} :catch_233

    .line 262
    :try_start_105
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 264
    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 266
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 271
    monitor-exit v0

    .line 272
    return-void

    .line 273
    :catchall_110
    move-exception v1

    .line 274
    monitor-exit v0
    :try_end_112
    .catchall {:try_start_105 .. :try_end_112} :catchall_110

    .line 275
    :try_start_112
    throw v1
    :try_end_113
    .catch Ljava/lang/InterruptedException; {:try_start_112 .. :try_end_113} :catch_233

    .line 276
    :cond_113
    :try_start_113
    sget-object v4, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->URL_RELOCATION_QUERY:Ljava/lang/String;

    .line 278
    invoke-static {v4, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 281
    move-result-object v4

    .line 282
    new-instance v5, Lorg/json/JSONObject;

    .line 284
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    const-string v4, "code"

    .line 289
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 292
    move-result v4

    .line 293
    if-nez v4, :cond_198

    .line 295
    const-string v2, "data"

    .line 297
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 300
    move-result-object v2

    .line 301
    const-string v4, "hostList"

    .line 303
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 306
    move-result-object v2

    .line 307
    if-eqz v2, :cond_174

    .line 309
    const-string v4, "Micloud"

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    const-string v6, "getHostList set sNeedUpdateHosts to false "

    .line 318
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 328
    move-result-object v6

    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object v5

    .line 336
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 346
    move-result-object v5

    .line 347
    invoke-static {v4, v5}, Ly3/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 353
    move-result-object v2

    .line 354
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateHostCache(Ljava/util/Map;)V

    .line 357
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->setNeedUpdateHostsList(Z)V

    .line 360
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 363
    move-result v2

    .line 364
    if-nez v2, :cond_174

    .line 366
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 369
    move-result-object v2

    .line 370
    invoke-static {v2, v3}, Ly3/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_174
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_174} :catch_209
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_113 .. :try_end_174} :catch_1fb
    .catch Ljavax/crypto/BadPaddingException; {:try_start_113 .. :try_end_174} :catch_1ed
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_113 .. :try_end_174} :catch_1df
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_174} :catch_186
    .catchall {:try_start_113 .. :try_end_174} :catchall_21d

    .line 373
    :cond_174
    :try_start_174
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 375
    monitor-enter v0
    :try_end_177
    .catch Ljava/lang/InterruptedException; {:try_start_174 .. :try_end_177} :catch_233

    .line 376
    :try_start_177
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 378
    sput-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 380
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 385
    monitor-exit v0

    .line 386
    goto/16 :goto_22f

    .line 388
    :catchall_183
    move-exception v1

    .line 389
    monitor-exit v0
    :try_end_185
    .catchall {:try_start_177 .. :try_end_185} :catchall_183

    .line 390
    :try_start_185
    throw v1
    :try_end_186
    .catch Ljava/lang/InterruptedException; {:try_start_185 .. :try_end_186} :catch_233

    .line 391
    :catch_186
    move-exception v2

    .line 392
    :try_start_187
    const-string v3, "Micloud"

    .line 394
    const-string v4, "IOException in updateMiCloudHosts"

    .line 396
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 402
    move-result-object v3

    .line 403
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_1d2

    .line 409
    :cond_198
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->SERVER_RETRY_INTERVALS:[I

    .line 411
    array-length v4, v3

    .line 412
    if-ge v1, v4, :cond_1c4

    .line 414
    const-string v2, "Micloud"

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    .line 418
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    const-string v5, "Wait "

    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    aget v5, v3, v1

    .line 428
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    const-string v5, " ms for retry"

    .line 433
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    move-result-object v4

    .line 440
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    aget v2, v3, v1

    .line 445
    int-to-long v2, v2

    .line 446
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    .line 451
    goto/16 :goto_e9

    .line 453
    :cond_1c4
    if-eqz v2, :cond_1cc

    .line 455
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 457
    invoke-direct {v0, p0, v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    .line 460
    throw v0

    .line 461
    :cond_1cc
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 463
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(I)V

    .line 466
    throw v0

    .line 467
    :cond_1d2
    const-string v0, "Micloud"

    .line 469
    const-string v1, "No network in IOException"

    .line 471
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 476
    invoke-direct {v0, p0, v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    .line 479
    throw v0

    .line 480
    :catch_1df
    move-exception v0

    .line 481
    const-string v1, "Micloud"

    .line 483
    const-string v2, "ClientProtocolException in updateMiCloudHosts"

    .line 485
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 490
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    .line 493
    throw v1

    .line 494
    :catch_1ed
    move-exception v0

    .line 495
    const-string v1, "Micloud"

    .line 497
    const-string v2, "BadPaddingException in updateMiCloudHosts"

    .line 499
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 504
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    .line 507
    throw v1

    .line 508
    :catch_1fb
    move-exception v0

    .line 509
    const-string v1, "Micloud"

    .line 511
    const-string v2, "IllegalBlockSizeException in updateMiCloudHosts"

    .line 513
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 518
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    .line 521
    throw v1

    .line 522
    :catch_209
    move-exception v0

    .line 523
    const-string v1, "Micloud"

    .line 525
    const-string v2, "JSONException in updateMiCloudHosts"

    .line 527
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 532
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    .line 535
    throw v1

    .line 536
    :cond_217
    new-instance v0, Ljava/lang/InterruptedException;

    .line 538
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 541
    throw v0
    :try_end_21d
    .catchall {:try_start_187 .. :try_end_21d} :catchall_21d

    .line 542
    :catchall_21d
    move-exception v0

    .line 543
    :try_start_21e
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 545
    monitor-enter v1
    :try_end_221
    .catch Ljava/lang/InterruptedException; {:try_start_21e .. :try_end_221} :catch_233

    .line 546
    :try_start_221
    sget-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;->FAILED:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 548
    sput-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils$UpdateStatus;

    .line 550
    sget-object v2, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 552
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 555
    monitor-exit v1
    :try_end_22b
    .catchall {:try_start_221 .. :try_end_22b} :catchall_22c

    .line 556
    :try_start_22b
    throw v0
    :try_end_22c
    .catch Ljava/lang/InterruptedException; {:try_start_22b .. :try_end_22c} :catch_233

    .line 557
    :catchall_22c
    move-exception v0

    .line 558
    :try_start_22d
    monitor-exit v1
    :try_end_22e
    .catchall {:try_start_22d .. :try_end_22e} :catchall_22c

    .line 559
    :try_start_22e
    throw v0
    :try_end_22f
    .catch Ljava/lang/InterruptedException; {:try_start_22e .. :try_end_22f} :catch_233

    .line 560
    :cond_22f
    :goto_22f
    return-void

    .line 561
    :catchall_230
    move-exception v1

    .line 562
    :try_start_231
    monitor-exit v0
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_230

    .line 563
    :try_start_232
    throw v1
    :try_end_233
    .catch Ljava/lang/InterruptedException; {:try_start_232 .. :try_end_233} :catch_233

    .line 564
    :catch_233
    move-exception v0

    .line 565
    const-string v1, "Micloud"

    .line 567
    const-string v2, "InterruptedException in updateMiCloudHosts"

    .line 569
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 574
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    .line 577
    throw v1
.end method

.method public static updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    .line 1
    const-string v0, ". "

    .line 3
    const-string v1, "Micloud"

    .line 5
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateMiCloudHosts(Z)V

    .line 8
    const/4 p1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_a
    new-array v4, p1, [Ljava/lang/Object;

    .line 13
    aput-object v1, v4, v3

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v6, "Original URL: "

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    aput-object v5, v4, v2

    .line 37
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 40
    new-instance v4, Ljava/net/URL;

    .line 42
    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_7c

    .line 59
    new-array v6, p1, [Ljava/lang/Object;

    .line 61
    aput-object v1, v6, v3

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v8, "New URL: "

    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v7

    .line 83
    aput-object v7, v6, v2

    .line 85
    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 88
    new-instance v6, Ljava/net/URL;

    .line 90
    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v5, Ljava/net/URL;

    .line 95
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    invoke-direct {v5, v7, v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0
    :try_end_71
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_71} :catch_72

    .line 114
    goto :goto_7c

    .line 115
    :catch_72
    move-exception v4

    .line 116
    new-array v5, v2, [Ljava/lang/Object;

    .line 118
    aput-object v4, v5, v3

    .line 120
    const-string v4, "MalformedURLException in updateHost %s"

    .line 122
    invoke-static {v1, v4, v5}, Lmiui/cloud/common/XLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_7c
    :goto_7c
    new-array p1, p1, [Ljava/lang/Object;

    .line 127
    aput-object v1, p1, v3

    .line 129
    const-string v1, "Final URL: "

    .line 131
    invoke-static {v1, p0, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    aput-object v0, p1, v2

    .line 137
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 140
    return-object p0
.end method
