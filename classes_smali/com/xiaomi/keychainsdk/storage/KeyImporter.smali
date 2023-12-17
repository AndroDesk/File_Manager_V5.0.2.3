.class public interface abstract Lcom/xiaomi/keychainsdk/storage/KeyImporter;
.super Ljava/lang/Object;
.source "KeyImporter.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;
.end method

.method public abstract importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
.end method
