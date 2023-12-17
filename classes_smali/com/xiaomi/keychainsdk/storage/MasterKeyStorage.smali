.class public interface abstract Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;
.super Ljava/lang/Object;
.source "MasterKeyStorage.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract generateTransferContext(Landroid/content/Context;)Lcom/xiaomi/keychainsdk/storage/TransferContext;
.end method

.method public abstract getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;
.end method

.method public abstract importMasterKey(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V
.end method

.method public abstract listMasterKey(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
