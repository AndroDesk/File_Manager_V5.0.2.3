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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IJILjava/lang/String;Ljava/security/PublicKey;Ljava/security/PublicKey;[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->secureLevel:I

    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->masterKeyVersion:J

    iput p4, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    iput-object p5, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    iput-object p7, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    iput-object p8, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;
    .registers 11

    const-string v0, "clientSecureLevel"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "masterKeyVersion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "zone"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "createHsmPublicKey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->toPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v7

    const-string v0, "hsmPublicKey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->toPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v8

    const-string v0, "hsmAAD"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v9

    new-instance p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;-><init>(IJILjava/lang/String;Ljava/security/PublicKey;Ljava/security/PublicKey;[B)V

    return-object p0
.end method

.method private static toPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    :try_start_9
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "RSA not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasRemoteKey()Z
    .registers 5

    iget-wide v0, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->masterKeyVersion:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
