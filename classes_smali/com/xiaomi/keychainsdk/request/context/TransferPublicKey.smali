.class public abstract Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
.super Ljava/lang/Object;
.source "TransferPublicKey.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRSATransferPublicKey(Ljava/security/interfaces/RSAPublicKey;)Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$1;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 6
    return-object v0
.end method

.method public static makeX509TransferPublicKey(Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$2;

    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$2;-><init>(Ljava/security/cert/Certificate;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getEncoded()Ljava/lang/String;
.end method
