.class public Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;
.super Ljava/lang/Object;
.source "MasterKeyStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;
    }
.end annotation


# static fields
.field private static final MASTER_KEY_NAME_PREFIX:Ljava/lang/String; = "m."

.field private static final TAG:Ljava/lang/String; = "KeyBag.MstKeyStorageMgr"

.field private static final sInstance:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;


# instance fields
.field private final mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

.field private final mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    invoke-direct {v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;-><init>()V

    sput-object v0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->sInstance:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getInstance()Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getInstanceIfSupport()Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getTestMasterKeyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private collectInstalledMasterKeyInfoLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->listMasterKey(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->isMasterKeyName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_1f
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getInstalledInfo(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_d

    :catch_27
    const-string v3, "listMasterKeyInfo: badMasterKeyName, clear."

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyBag.MstKeyStorageMgr"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, p1, v2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_41
    return-object v0
.end method

.method private static getInstalledInfo(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->fromMasterKeyName(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;
    .registers 1

    sget-object v0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->sInstance:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    return-object v0
.end method

.method private static getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;
    .registers 2

    const-string v0, "m."

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->getMasterKeyName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTestMasterKeyName()Ljava/lang/String;
    .registers 1

    const-string v0, "t.testkey"

    return-object v0
.end method

.method private static isMasterKeyName(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "m."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;",
            ")",
            "Ljava/util/Map<",
            "Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;",
            "Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->collectInstalledMasterKeyInfoLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->collectInstalledMasterKeyInfoLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    new-instance v5, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    iget-short v6, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    iget-wide v7, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    if-eqz v6, :cond_3a

    iget-wide v6, v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    iget-wide v8, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_15

    :cond_3a
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_3e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    new-instance v5, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    iget-short v6, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    iget-wide v7, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    if-eqz v6, :cond_67

    iget-wide v6, v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    iget-wide v8, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_42

    :cond_67
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_6b
    if-eqz p2, :cond_89

    new-instance v3, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    iget-short v4, p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    iget-wide v5, p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    if-eqz v4, :cond_89

    iget-wide v4, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    iget-wide v6, p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    cmp-long p2, v4, v6

    if-nez p2, :cond_89

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    new-instance v4, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    iget-short v5, v3, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    iget-wide v6, v3, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    iget-object v4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    invoke-static {v3}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_8d

    :cond_b5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b9
    :goto_b9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    new-instance v3, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    iget-short v4, v1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    iget-wide v5, v1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    iget-object v3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_b9

    :cond_e1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->upgradeMasterKeyLocked(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e5

    :cond_f9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private upgradeMasterKeyLocked(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    invoke-virtual {v1, p1, p2, v0}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->importMasterKey(Landroid/content/Context;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_29

    :catch_13
    const-string p1, "upgradeAndGetLocked: failed to move from soft storage to hard storage for "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyBag.MstKeyStorageMgr"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Landroid/content/Context;SJ)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    invoke-direct {v2, p2, p3, p4}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_32

    if-nez p2, :cond_15

    monitor-exit p0

    return-object v0

    :cond_15
    :try_start_15
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p4

    if-nez p4, :cond_27

    iget-object p4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p4
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_32

    :cond_27
    if-nez p4, :cond_2b

    monitor-exit p0

    return-object v0

    :cond_2b
    :try_start_2b
    new-instance p1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;

    invoke-direct {p1, p2, p4}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;-><init>(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;Ljavax/crypto/SecretKey;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getHardwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;
    .registers 15

    iget-object v7, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    if-nez v7, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance v8, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;-><init>(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;SJZLcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)V

    return-object v8
.end method

.method public getSoftwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;
    .registers 15

    new-instance v8, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;

    iget-object v7, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;-><init>(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;SJZLcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)V

    return-object v8
.end method

.method public declared-synchronized listInstalledKey(Landroid/content/Context;)Ljava/util/List;
    .registers 4
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

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
