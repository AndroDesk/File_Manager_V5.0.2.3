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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    iput-short p2, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    iput-wide p3, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    iput-object p5, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    return-void
.end method

.method private ensureOperationSuccess(Lorg/json/JSONObject;)V
    .registers 9

    :try_start_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5a

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_28

    move-object v5, v1

    goto :goto_2a

    :cond_28
    const-string v5, "null"

    :goto_2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4c

    const-string v4, "retryLimitTime"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_4b

    const-string v4, "resetLimitTime"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_4c

    :cond_4b
    move-wide v2, v4

    :cond_4c
    :goto_4c
    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;

    const-string v4, "message"

    const-string v5, "N/A"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;-><init>(ILjava/lang/String;J)V

    throw v1
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_5b

    :cond_5a
    return-void

    :catch_5b
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getCertificateServerHash(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hash"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->joinFields([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;
    .registers 14

    const-class v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    const/4 v2, 0x0

    sget-object v3, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    :cond_19
    if-nez v2, :cond_32

    new-instance v2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v3, v2

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;-><init>(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)V

    sget-object p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    sget-object p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->sInstanceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    :cond_52
    iget-object p0, v2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    if-ne p0, p4, :cond_58

    monitor-exit v0

    return-object v2

    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "must use same requestor for same hsid&huser"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw p0
.end method

.method private static declared-synchronized getOrCreateFixedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    monitor-enter v0

    :try_start_3
    const-string v1, "miuikeybag.pref.protocol"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "fixed_device_id"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "fixed_device_id"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit v0

    return-object v1

    :catchall_2a
    move-exception p0

    monitor-exit v0

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

    monitor-enter p0

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "deviceId"

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getOrCreateFixedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hsid"

    iget-short v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "nonce"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "clientTicket"

    invoke-virtual {v5, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p6}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->getEncoded()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    array-length p5, p7

    const/4 p6, 0x0

    :goto_30
    if-ge p6, p5, :cond_50

    aget-object v0, p7, p6

    invoke-interface {p8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getCertificateServerHash(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4d

    :cond_42
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_4d
    add-int/lit8 p6, p6, 0x1

    goto :goto_30

    :cond_50
    const-string p5, "wrapCA"

    invoke-virtual {v5, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_55} :catch_8f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_55} :catch_87
    .catchall {:try_start_1 .. :try_end_55} :catchall_85

    :try_start_55
    invoke-direct {p0, v5}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->putSha256DigestAlgorithmParamIfNeeded(Lorg/json/JSONObject;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_85

    :try_start_58
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->requestUrl:Ljava/lang/String;

    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;->requestPost(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->ensureOperationSuccess(Lorg/json/JSONObject;)V

    const-string p3, "result"

    invoke-virtual {p5, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p5, "resultId"

    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->requestOperateAndDownloadResult(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/security/PublicKey;Ljava/lang/String;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object p1
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_7c} :catch_7e
    .catchall {:try_start_58 .. :try_end_7c} :catchall_85

    monitor-exit p0

    return-object p1

    :catch_7e
    move-exception p1

    :try_start_7f
    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_85
    move-exception p1

    goto :goto_96

    :catch_87
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "never reach here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_8f
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_96
    .catchall {:try_start_7f .. :try_end_96} :catchall_85

    :goto_96
    monitor-exit p0

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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_d

    const-string v0, "shaType"

    const-string v1, "SHA-256"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private putSha256DigestAlgorithmParamIfNeeded(Lorg/json/JSONObject;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_16

    :try_start_6
    const-string v0, "shaType"

    const-string v1, "SHA-256"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_16

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

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_80

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v1, "resultId"

    invoke-virtual {v7, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->putSha256DigestAlgorithmParamIfNeeded(Ljava/util/Map;)V

    const/4 p4, 0x0

    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    iget-object v2, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->resultUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;->requestGet(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->ensureOperationSuccess(Lorg/json/JSONObject;)V

    const-string v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "finish"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {v1, p2}, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->fromServerJSON(Lorg/json/JSONObject;S)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object p1

    const-string p2, "serverSign"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->verifyMasterKeySignature(Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;[BLjava/security/PublicKey;)V

    return-object p1

    :cond_4f
    add-int/lit8 v1, p4, 0x1

    aget-wide v2, v0, p4
    :try_end_53
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_14 .. :try_end_53} :catch_78
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_53} :catch_71

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-ltz p4, :cond_6b

    :try_start_59
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5e
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_59 .. :try_end_5c} :catch_78
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5c} :catch_71

    move p4, v1

    goto :goto_14

    :catch_5e
    :try_start_5e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationInterruptedException;

    invoke-direct {p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationInterruptedException;-><init>()V

    throw p1

    :cond_6b
    new-instance p1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationTimeoutException;

    invoke-direct {p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationTimeoutException;-><init>()V

    throw p1
    :try_end_71
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_5e .. :try_end_71} :catch_78
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_71} :catch_71

    :catch_71
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_78
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

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

    if-eqz p1, :cond_d

    if-eqz p2, :cond_5

    goto :goto_d

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tpub != null && attestationCAs == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_d
    if-nez p1, :cond_1a

    if-nez p2, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tpub == null && attestationCAs != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "never happen"

    if-eqz p1, :cond_4d

    if-eqz p2, :cond_4d

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->getEncoded()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    array-length p1, p2

    const/4 v2, 0x0

    :goto_33
    if-ge v2, p1, :cond_41

    aget-object v3, p2, v2

    invoke-direct {p0, v3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getCertificateServerHash(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_41
    :try_start_41
    const-string p1, "wrapCA"

    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    :goto_4d
    :try_start_4d
    const-string p1, "hsid"

    iget-short p2, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_54} :catch_7b

    invoke-direct {p0, v5}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->putSha256DigestAlgorithmParamIfNeeded(Lorg/json/JSONObject;)V

    :try_start_57
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mRequestor:Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->GET_VERSION:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    iget-object v2, p1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->requestUrl:Ljava/lang/String;

    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;->requestPost(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->ensureOperationSuccess(Lorg/json/JSONObject;)V

    const-string p1, "result"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_73} :catch_74

    return-object p1

    :catch_74
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyMasterKeySignature(Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;[BLjava/security/PublicKey;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    iget-object v1, v1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    iget-object p1, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->mixData([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    move-result-object p1

    :try_start_25
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2b} :catch_52

    :try_start_2b
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2e
    .catch Ljava/security/InvalidKeyException; {:try_start_2b .. :try_end_2e} :catch_4b

    :try_start_2e
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    :cond_38
    new-instance p1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadMasterKeyServerSignatureException;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadMasterKeyServerSignatureException;-><init>(Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$1;)V

    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_44
    .catch Ljava/security/SignatureException; {:try_start_2e .. :try_end_44} :catch_44

    :catch_44
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4b
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SHA256withRSA not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v0, v1}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->setNewPassword(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    move-result-object v0

    move-object/from16 v4, p12

    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

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

    move-object/from16 v9, p0

    new-instance v0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    iget-short v11, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    iget-wide v12, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    move-object v10, v0

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    invoke-direct/range {v10 .. v20}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;-><init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V

    move-object/from16 v4, p10

    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->CREATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

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

    move-object/from16 v9, p0

    new-instance v0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    iget-short v11, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    iget-wide v12, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    move-object v10, v0

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    invoke-direct/range {v10 .. v20}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;-><init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V

    move-object/from16 v4, p11

    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESTORE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareServerMasterKeyContext(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;
    .registers 3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->requestXServerMasterKeyInfo(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_4} :catch_25

    :try_start_4
    invoke-static {p2, p1}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    move-result-object p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_8} :catch_1e
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_4 .. :try_end_8} :catch_17
    .catch Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo$ResponseCACountNotMatchException; {:try_start_4 .. :try_end_8} :catch_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_10
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_17
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1e
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_25
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->requestXServerMasterKeyInfo(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_5} :catch_1f

    :try_start_5
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9} :catch_18
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_5 .. :try_end_9} :catch_11
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_11
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_18
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    move-object/from16 v9, p0

    new-instance v0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;

    iget-short v11, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHSid:S

    iget-wide v12, v9, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->mHUser:J

    move-object v10, v0

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    invoke-direct/range {v10 .. v20}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;-><init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V

    move-object/from16 v4, p11

    invoke-virtual {v0, v4}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculate(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESET:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->operateAndDownload(Lcom/xiaomi/keychainsdk/request/RequestAPI;SLjava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

    return-object v0
.end method
