.class Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$1;
.super Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
.source "TransferPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->makeRSATransferPublicKey(Ljava/security/interfaces/RSAPublicKey;)Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$1;->val$rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getEncoded()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$1;->val$rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 6
    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v1, v0, v2

    .line 21
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$1;->val$rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 23
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    aput-object v1, v0, v2

    .line 38
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->joinFields([Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
