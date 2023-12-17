.class public Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;
.super Ljava/lang/Object;
.source "WrappedMasterKey.java"


# instance fields
.field public final aad:[B

.field public final encryptedMasterKey:[B

.field public final encryptedSymKey:[B

.field public final iv:[B


# direct methods
.method public constructor <init>([B[B[B[B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    .line 6
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    .line 8
    iput-object p3, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->iv:[B

    .line 10
    iput-object p4, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->aad:[B

    .line 12
    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;
    .registers 5

    .line 1
    const-string v0, "eMasterKey"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "tEphemeralKey"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 20
    move-result-object v1

    .line 21
    const-string v2, "iv"

    .line 23
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "aad"

    .line 33
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 40
    move-result-object p0

    .line 41
    new-instance v3, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 43
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;-><init>([B[B[B[B)V

    .line 46
    return-object v3
.end method
