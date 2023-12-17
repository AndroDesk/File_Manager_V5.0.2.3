.class public interface abstract Lcom/xiaomi/keychainsdk/storage/TransferContext;
.super Ljava/lang/Object;
.source "TransferContext.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getAttestationCA()[Ljava/security/cert/Certificate;
.end method

.method public abstract getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
.end method
