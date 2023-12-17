.class public Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;
.super Ljava/lang/Object;
.source "WrappedMasterKey.java"


# instance fields
.field public final aad:[B

.field public final encryptedMasterKey:[B

.field public final encryptedSymKey:[B

.field public final iv:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([B[B[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    iput-object p3, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->iv:[B

    iput-object p4, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->aad:[B

    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;
    .registers 5

    const-string v0, "eMasterKey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "tEphemeralKey"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "iv"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "aad"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v3, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;-><init>([B[B[B[B)V

    return-object v3
.end method
