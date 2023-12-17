.class public Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;
.super Ljava/lang/Object;
.source "KeyBagProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadMasterKeyServerSignatureException;,
        Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationInterruptedException;,
        Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationTimeoutException;,
        Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException;,
        Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;,
        Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;
    }
.end annotation


# static fields
.field private static final FIXED_DEVICE_ID_SP_KEY:Ljava/lang/String; = "fixed_device_id"

.field private static final KEY_BAG_PROTOCOL_SP_NAME:Ljava/lang/String; = "miuikeybag.pref.protocol"

.field private static sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHSid:S

.field private final mHUser:J

.field private mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    .line 6
    iput-short p2, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    .line 8
    iput-wide p3, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    .line 10
    iput-object p5, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    .line 12
    return-void
.end method

.method private ensureOperationSuccess(Lorg/json/JSONObject;)V
    .registers 9

    .line 1
    :try_start_0
    const-string v0, "code"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5a

    .line 9
    const-string v1, "result"

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    const/4 v3, 0x0

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v5, "code: "

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v5, " extra: "

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    if-eqz v1, :cond_28

    .line 39
    move-object v5, v1

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const-string v5, "null"

    .line 43
    :goto_2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    aput-object v4, v2, v3

    .line 52
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 55
    const-wide/16 v2, -0x1

    .line 57
    if-eqz v1, :cond_4c

    .line 59
    const-string v4, "retryLimitTime"

    .line 61
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 64
    move-result-wide v4

    .line 65
    cmp-long v6, v4, v2

    .line 67
    if-nez v6, :cond_4b

    .line 69
    const-string v4, "resetLimitTime"

    .line 71
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 74
    move-result-wide v2

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move-wide v2, v4

    .line 77
    :cond_4c
    :goto_4c
    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;

    .line 79
    const-string v4, "message"

    .line 81
    const-string v5, "N/A"

    .line 83
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v1, v0, p1, v2, v3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;-><init>(ILjava/lang/String;J)V

    .line 90
    throw v1
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 91
    :cond_5a
    return-void

    .line 92
    :catch_5b
    move-exception p1

    .line 93
    new-instance v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 95
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    throw v0
.end method

.method private getCertificateServerHash(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    .line 25
    const-string v2, "hash"

    .line 27
    aput-object v2, v0, v1

    .line 29
    const/4 v1, 0x1

    .line 30
    aput-object p1, v0, v1

    .line 32
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->joinFields([Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;
    .registers 14

    .line 1
    const-class v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 6
    invoke-direct {v1, p1, p2, p3}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    .line 9
    const/4 v2, 0x0

    .line 10
    sget-object v3, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    .line 12
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 18
    if-eqz v3, :cond_19

    .line 20
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 26
    :cond_19
    if-nez v2, :cond_32

    .line 28
    new-instance v2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object v4

    .line 34
    move-object v3, v2

    .line 35
    move v5, p1

    .line 36
    move-wide v6, p2

    .line 37
    move-object v8, p4

    .line 38
    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;-><init>(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)V

    .line 41
    sget-object p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    .line 43
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 45
    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_32
    sget-object p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p0

    .line 61
    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_52

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 73
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    if-nez p1, :cond_3c

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 82
    goto :goto_3c

    .line 83
    :cond_52
    iget-object p0, v2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    .line 85
    if-ne p0, p4, :cond_58

    .line 87
    monitor-exit v0

    .line 88
    return-object v2

    .line 89
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    const-string p1, "must use same requestor for same hsid&huser"

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0

    .line 97
    :catchall_60
    move-exception p0

    .line 98
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    .line 99
    throw p0
.end method

.method private static declared-synchronized getOrCreateFixedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const-class v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    const-string v1, "miuikeybag.pref.protocol"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    move-result-object p0

    .line 11
    const-string v1, "fixed_device_id"

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_28

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    move-result-object p0

    .line 32
    const-string v2, "fixed_device_id"

    .line 34
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    .line 41
    :cond_28
    monitor-exit v0

    .line 42
    return-object v1

    .line 43
    :catchall_2a
    move-exception p0

    .line 44
    monitor-exit v0

    .line 45
    throw p0
.end method

.method private declared-synchronized operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/keychainsdk/request/RequestAPI;",
            "S",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 4
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 7
    const-string v0, "deviceId"

    .line 9
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getOrCreateFixedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v0, "hsid"

    .line 20
    iget-short v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    .line 22
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v0, "nonce"

    .line 27
    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string p3, "clientTicket"

    .line 32
    invoke-virtual {v5, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    new-instance p3, Lorg/json/JSONArray;

    .line 37
    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 40
    invoke-virtual {p6}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->getEncoded()Ljava/lang/String;

    .line 43
    move-result-object p5

    .line 44
    invoke-virtual {p3, p5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    array-length p5, p7

    .line 48
    const/4 p6, 0x0

    .line 49
    :goto_30
    if-ge p6, p5, :cond_50

    .line 51
    aget-object v0, p7, p6

    .line 53
    invoke-interface {p8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_42

    .line 59
    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getCertificateServerHash(Ljava/security/cert/Certificate;)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    goto :goto_4d

    .line 67
    :cond_42
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    :goto_4d
    add-int/lit8 p6, p6, 0x1

    .line 80
    goto :goto_30

    .line 81
    :cond_50
    const-string p5, "wrapCA"

    .line 83
    invoke-virtual {v5, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_55} :catch_8f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_55} :catch_87
    .catchall {:try_start_1 .. :try_end_55} :catchall_85

    .line 86
    :try_start_55
    invoke-direct {p0, v5}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->putSha256DigestAlgorithmParamIfNeeded(Lorg/json/JSONObject;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_85

    .line 89
    :try_start_58
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    .line 91
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    .line 93
    iget-object v2, p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->requestUrl:Ljava/lang/String;

    .line 95
    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;->requestPost(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;)Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 101
    new-instance p5, Lorg/json/JSONObject;

    .line 103
    invoke-direct {p5, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p5}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->ensureOperationSuccess(Lorg/json/JSONObject;)V

    .line 109
    const-string p3, "result"

    .line 111
    invoke-virtual {p5, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 114
    move-result-object p3

    .line 115
    const-string p5, "resultId"

    .line 117
    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object p3

    .line 121
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->requestOperateAndDownloadResult(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/security/PublicKey;Ljava/lang/String;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 124
    move-result-object p1
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_7c} :catch_7e
    .catchall {:try_start_58 .. :try_end_7c} :catchall_85

    .line 125
    monitor-exit p0

    .line 126
    return-object p1

    .line 127
    :catch_7e
    move-exception p1

    .line 128
    :try_start_7f
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 130
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 133
    throw p2

    .line 134
    :catchall_85
    move-exception p1

    .line 135
    goto :goto_96

    .line 136
    :catch_87
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 138
    const-string p2, "never reach here"

    .line 140
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p1

    .line 144
    :catch_8f
    move-exception p1

    .line 145
    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 147
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    throw p2
    :try_end_96
    .catchall {:try_start_7f .. :try_end_96} :catchall_85

    .line 151
    :goto_96
    monitor-exit p0

    .line 152
    throw p1
.end method

.method private putSha256DigestAlgorithmParamIfNeeded(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_d

    const-string v0, "shaType"

    const-string v1, "SHA-256"

    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private putSha256DigestAlgorithmParamIfNeeded(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_16

    :try_start_6
    const-string v0, "shaType"

    const-string v1, "SHA-256"

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_16

    .line 3
    :catch_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "never happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    return-void
.end method

.method private requestOperateAndDownloadResult(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/security/PublicKey;Ljava/lang/String;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 13

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [J

    .line 4
    fill-array-data v0, :array_80

    .line 7
    new-instance v7, Ljava/util/HashMap;

    .line 9
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v1, "resultId"

    .line 14
    invoke-virtual {v7, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-direct {p0, v7}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->putSha256DigestAlgorithmParamIfNeeded(Ljava/util/Map;)V

    .line 20
    const/4 p4, 0x0

    .line 21
    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    .line 23
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    .line 25
    iget-object v3, p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->resultUrl:Ljava/lang/String;

    .line 27
    iget-wide v4, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    .line 29
    move-object v6, v7

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;->requestGet(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    .line 36
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->ensureOperationSuccess(Lorg/json/JSONObject;)V

    .line 42
    const-string v1, "result"

    .line 44
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "status"

    .line 50
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    const-string v3, "finish"

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_4f

    .line 62
    invoke-static {v1, p2}, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->fromServerJSON(Lorg/json/JSONObject;S)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 65
    move-result-object p1

    .line 66
    const-string p2, "serverSign"

    .line 68
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->verifyMasterKeySignature(Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;[BLjava/security/PublicKey;)V

    .line 79
    return-object p1

    .line 80
    :cond_4f
    add-int/lit8 v1, p4, 0x1

    .line 82
    aget-wide v2, v0, p4
    :try_end_53
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_14 .. :try_end_53} :catch_78
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_53} :catch_71

    .line 84
    const-wide/16 v4, 0x0

    .line 86
    cmp-long p4, v2, v4

    .line 88
    if-ltz p4, :cond_6b

    .line 90
    :try_start_59
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5e
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_59 .. :try_end_5c} :catch_78
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5c} :catch_71

    .line 93
    move p4, v1

    .line 94
    goto :goto_14

    .line 95
    :catch_5e
    :try_start_5e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 102
    new-instance p1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationInterruptedException;

    .line 104
    invoke-direct {p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationInterruptedException;-><init>()V

    .line 107
    throw p1

    .line 108
    :cond_6b
    new-instance p1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationTimeoutException;

    .line 110
    invoke-direct {p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationTimeoutException;-><init>()V

    .line 113
    throw p1
    :try_end_71
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_5e .. :try_end_71} :catch_78
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_71} :catch_71

    .line 114
    :catch_71
    move-exception p1

    .line 115
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 117
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    throw p2

    .line 121
    :catch_78
    move-exception p1

    .line 122
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 124
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 127
    throw p2

    .line 128
    nop

    .line 129
    :array_80
    .array-data 8
        0x7d0
        0xfa0
        0x1770
        0x1f40
        0x2710
        -0x1
    .end array-data
.end method

.method private requestXServerMasterKeyInfo(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lorg/json/JSONObject;
    .registers 9

    .line 1
    if-eqz p1, :cond_d

    .line 3
    if-eqz p2, :cond_5

    .line 5
    goto :goto_d

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string p2, "tpub != null && attestationCAs == null"

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1

    .line 14
    :cond_d
    :goto_d
    if-nez p1, :cond_1a

    .line 16
    if-nez p2, :cond_12

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string p2, "tpub == null && attestationCAs != null"

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    :cond_1a
    :goto_1a
    new-instance v5, Lorg/json/JSONObject;

    .line 29
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 32
    const-string v0, "never happen"

    .line 34
    if-eqz p1, :cond_4d

    .line 36
    if-eqz p2, :cond_4d

    .line 38
    new-instance v1, Lorg/json/JSONArray;

    .line 40
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->getEncoded()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    array-length p1, p2

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_33
    if-ge v2, p1, :cond_41

    .line 54
    aget-object v3, p2, v2

    .line 56
    invoke-direct {p0, v3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getCertificateServerHash(Ljava/security/cert/Certificate;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_33

    .line 66
    :cond_41
    :try_start_41
    const-string p1, "wrapCA"

    .line 68
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_46} :catch_47

    .line 71
    goto :goto_4d

    .line 72
    :catch_47
    new-instance p1, Ljava/lang/RuntimeException;

    .line 74
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_4d
    :goto_4d
    :try_start_4d
    const-string p1, "hsid"

    .line 80
    iget-short p2, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    .line 82
    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_54} :catch_7b

    .line 85
    invoke-direct {p0, v5}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->putSha256DigestAlgorithmParamIfNeeded(Lorg/json/JSONObject;)V

    .line 88
    :try_start_57
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    .line 90
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    .line 92
    sget-object p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->GET_VERSION:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 94
    iget-object v2, p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->requestUrl:Ljava/lang/String;

    .line 96
    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;->requestPost(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Lorg/json/JSONObject;

    .line 104
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->ensureOperationSuccess(Lorg/json/JSONObject;)V

    .line 110
    const-string p1, "result"

    .line 112
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 115
    move-result-object p1
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_73} :catch_74

    .line 116
    return-object p1

    .line 117
    :catch_74
    move-exception p1

    .line 118
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 120
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    throw p2

    .line 124
    :catch_7b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 126
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1
.end method

.method private verifyMasterKeySignature(Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;[BLjava/security/PublicKey;)V
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 6
    iget-object v1, v1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    .line 8
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    iget-object p1, p1, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 17
    iget-object p1, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    .line 19
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const/4 v1, 0x1

    .line 24
    aput-object p1, v0, v1

    .line 26
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->mixData([Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    .line 37
    move-result-object p1

    .line 38
    :try_start_25
    const-string v0, "SHA256withRSA"

    .line 40
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 43
    move-result-object v0
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2b} :catch_52

    .line 44
    :try_start_2b
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2e
    .catch Ljava/security/InvalidKeyException; {:try_start_2b .. :try_end_2e} :catch_4b

    .line 47
    :try_start_2e
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 50
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_38

    .line 56
    return-void

    .line 57
    :cond_38
    new-instance p1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 59
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadMasterKeyServerSignatureException;

    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-direct {p2, p3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadMasterKeyServerSignatureException;-><init>(Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$1;)V

    .line 65
    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    throw p1
    :try_end_44
    .catch Ljava/security/SignatureException; {:try_start_2e .. :try_end_44} :catch_44

    .line 69
    :catch_44
    move-exception p1

    .line 70
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 72
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    throw p2

    .line 76
    :catch_4b
    move-exception p1

    .line 77
    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 79
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    throw p2

    .line 83
    :catch_52
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    const-string p2, "SHA256withRSA not support"

    .line 87
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1
.end method


# virtual methods
.method public changeMasterKeyPassword(ISLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/cert/Certificate;",
            ">;I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/PublicKey;",
            "Ljava/security/PublicKey;",
            ")",
            "Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    iget-short v11, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    iget-wide v12, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    move-object v10, v0

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p5

    move/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    invoke-direct/range {v10 .. v20}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;-><init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V

    move-object/from16 v1, p4

    .line 2
    invoke-virtual {v0, v1}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->setNewPassword(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    move-result-object v0

    move-object/from16 v4, p12

    .line 3
    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    .line 4
    sget-object v1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->UPDATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

    return-object v0
.end method

.method public createMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Ljava/lang/String;",
            "Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/cert/Certificate;",
            ">;I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/PublicKey;",
            "Ljava/security/PublicKey;",
            ")",
            "Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 3
    new-instance v0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    .line 5
    iget-short v11, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    .line 7
    iget-wide v12, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    .line 9
    move-object v10, v0

    .line 10
    move/from16 v14, p1

    .line 12
    move/from16 v15, p2

    .line 14
    move-object/from16 v16, p3

    .line 16
    move-object/from16 v17, p4

    .line 18
    move/from16 v18, p7

    .line 20
    move-object/from16 v19, p8

    .line 22
    move-object/from16 v20, p9

    .line 24
    invoke-direct/range {v10 .. v20}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;-><init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V

    .line 27
    move-object/from16 v4, p10

    .line 29
    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    sget-object v1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->CREATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 35
    move-object/from16 v0, p0

    .line 37
    move/from16 v2, p2

    .line 39
    move-object/from16 v3, p8

    .line 41
    move-object/from16 v6, p4

    .line 43
    move-object/from16 v7, p5

    .line 45
    move-object/from16 v8, p6

    .line 47
    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public downloadMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Ljava/lang/String;",
            "Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/cert/Certificate;",
            ">;I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/PublicKey;",
            "Ljava/security/PublicKey;",
            ")",
            "Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 3
    new-instance v0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    .line 5
    iget-short v11, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    .line 7
    iget-wide v12, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    .line 9
    move-object v10, v0

    .line 10
    move/from16 v14, p1

    .line 12
    move/from16 v15, p2

    .line 14
    move-object/from16 v16, p3

    .line 16
    move-object/from16 v17, p4

    .line 18
    move/from16 v18, p7

    .line 20
    move-object/from16 v19, p8

    .line 22
    move-object/from16 v20, p9

    .line 24
    invoke-direct/range {v10 .. v20}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;-><init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V

    .line 27
    move-object/from16 v4, p11

    .line 29
    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    sget-object v1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESTORE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 35
    move-object/from16 v0, p0

    .line 37
    move/from16 v2, p2

    .line 39
    move-object/from16 v3, p8

    .line 41
    move-object/from16 v6, p4

    .line 43
    move-object/from16 v7, p5

    .line 45
    move-object/from16 v8, p6

    .line 47
    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public getHardwareServerMasterKeyContext(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->requestXServerMasterKeyInfo(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lorg/json/JSONObject;

    .line 4
    move-result-object p1
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_4} :catch_25

    .line 5
    :try_start_4
    invoke-static {p2, p1}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 8
    move-result-object p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_8} :catch_1e
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_4 .. :try_end_8} :catch_17
    .catch Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo$ResponseCACountNotMatchException; {:try_start_4 .. :try_end_8} :catch_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    return-object p1

    .line 10
    :catch_9
    move-exception p1

    .line 11
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 13
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    throw p2

    .line 17
    :catch_10
    move-exception p1

    .line 18
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 20
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    throw p2

    .line 24
    :catch_17
    move-exception p1

    .line 25
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 27
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw p2

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 34
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    throw p2

    .line 38
    :catch_25
    move-exception p1

    .line 39
    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 41
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    throw p2
.end method

.method public getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-direct {p0, v0, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->requestXServerMasterKeyInfo(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lorg/json/JSONObject;

    .line 5
    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_5} :catch_1f

    .line 6
    :try_start_5
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    .line 9
    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9} :catch_18
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_5 .. :try_end_9} :catch_11
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_9} :catch_a

    .line 10
    return-object v0

    .line 11
    :catch_a
    move-exception v0

    .line 12
    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 14
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    throw v1

    .line 18
    :catch_11
    move-exception v0

    .line 19
    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 21
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    throw v1

    .line 25
    :catch_18
    move-exception v0

    .line 26
    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    .line 28
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    throw v1

    .line 32
    :catch_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    const-string v1, "should not reach here"

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public resetMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Ljava/lang/String;",
            "Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/cert/Certificate;",
            ">;I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/PublicKey;",
            "Ljava/security/PublicKey;",
            ")",
            "Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 3
    new-instance v0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    .line 5
    iget-short v11, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    .line 7
    iget-wide v12, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    .line 9
    move-object v10, v0

    .line 10
    move/from16 v14, p1

    .line 12
    move/from16 v15, p2

    .line 14
    move-object/from16 v16, p3

    .line 16
    move-object/from16 v17, p4

    .line 18
    move/from16 v18, p7

    .line 20
    move-object/from16 v19, p8

    .line 22
    move-object/from16 v20, p9

    .line 24
    invoke-direct/range {v10 .. v20}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;-><init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V

    .line 27
    move-object/from16 v4, p11

    .line 29
    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    sget-object v1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESET:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 35
    move-object/from16 v0, p0

    .line 37
    move/from16 v2, p2

    .line 39
    move-object/from16 v3, p8

    .line 41
    move-object/from16 v6, p4

    .line 43
    move-object/from16 v7, p5

    .line 45
    move-object/from16 v8, p6

    .line 47
    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
