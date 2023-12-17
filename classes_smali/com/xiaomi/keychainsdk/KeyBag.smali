.class public Lcom/xiaomi/keychainsdk/KeyBag;
.super Ljava/lang/Object;
.source "KeyBag.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMasterKeyManager(Landroid/content/Context;SJILcom/xiaomi/keychainsdk/request/KeyBagRequestor;)Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;
    .registers 14

    .line 1
    new-instance v7, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;

    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move v5, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;-><init>(Landroid/content/Context;SJILcom/xiaomi/keychainsdk/request/KeyBagRequestor;)V

    .line 12
    return-object v7
.end method

.method public static listInstalledMasterKey(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getInstance()Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->listInstalledKey(Landroid/content/Context;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static removeInstalledMasterKey(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getInstance()Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->remove(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)V

    .line 8
    return-void
.end method
