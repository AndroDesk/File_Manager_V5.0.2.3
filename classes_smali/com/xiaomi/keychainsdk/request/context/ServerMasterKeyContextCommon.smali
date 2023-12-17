.class public Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;
.super Ljava/lang/Object;
.source "ServerMasterKeyContextCommon.java"


# instance fields
.field public final hsmAAD:[B

.field public final hsmPub1:Ljava/security/PublicKey;

.field public final hsmPub2:Ljava/security/PublicKey;

.field public final hsmZone:I

.field public final masterKeyVersion:J

.field public final nonce:Ljava/lang/String;

.field public final secureLevel:I


# direct methods
.method public constructor <init>(IJILjava/lang/String;Ljava/security/PublicKey;Ljava/security/PublicKey;[B)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->secureLevel:I

    .line 6
    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->masterKeyVersion:J

    .line 8
    iput p4, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    .line 10
    iput-object p5, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    .line 14
    iput-object p7, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    .line 16
    iput-object p8, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    .line 18
    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;
    .registers 11

    .line 1
    const-string v0, "clientSecureLevel"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    move-result v2

    .line 7
    const-string v0, "masterKeyVersion"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v3

    .line 13
    const-string v0, "zone"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 18
    move-result v5

    .line 19
    const-string v0, "nonce"

    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v6

    .line 25
    const-string v0, "createHsmPublicKey"

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->toPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    .line 34
    move-result-object v7

    .line 35
    const-string v0, "hsmPublicKey"

    .line 37
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->toPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    .line 44
    move-result-object v8

    .line 45
    const-string v0, "hsmAAD"

    .line 47
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 54
    move-result-object v9

    .line 55
    new-instance p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    .line 57
    move-object v1, p0

    .line 58
    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;-><init>(IJILjava/lang/String;Ljava/security/PublicKey;Ljava/security/PublicKey;[B)V

    .line 61
    return-object p0
.end method

.method private static toPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 2

    .line 1
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 3
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 10
    :try_start_9
    const-string p0, "RSA"

    .line 12
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 19
    move-result-object p0
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_13} :catch_14

    .line 20
    return-object p0

    .line 21
    :catch_14
    new-instance p0, Ljava/lang/RuntimeException;

    .line 23
    const-string v0, "RSA not supported"

    .line 25
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
.end method


# virtual methods
.method public hasRemoteKey()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->masterKeyVersion:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-lez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
