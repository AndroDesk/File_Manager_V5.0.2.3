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

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->sInstance:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getInstance()Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 10
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getInstanceIfSupport()Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 16
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getTestMasterKeyName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2, p1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->listMasterKey(Landroid/content/Context;)Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_41

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->isMasterKeyName(Ljava/lang/String;)Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_d

    .line 32
    :try_start_1f
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getInstalledInfo(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo$BadMasterKeyNameException; {:try_start_1f .. :try_end_26} :catch_27

    .line 39
    goto :goto_d

    .line 40
    :catch_27
    const-string v3, "listMasterKeyInfo: badMasterKeyName, clear."

    .line 42
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    const-string v4, "KeyBag.MstKeyStorageMgr"

    .line 59
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {p2, p1, v2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    goto :goto_d

    .line 66
    :cond_41
    return-object v0
.end method

.method private static getInstalledInfo(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->fromMasterKeyName(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->sInstance:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 3
    return-object v0
.end method

.method private static getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "m."

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->getMasterKeyName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static getTestMasterKeyName()Ljava/lang/String;
    .registers 1

    const-string v0, "t.testkey"

    return-object v0
.end method

.method private static isMasterKeyName(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "m."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
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

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->collectInstalledMasterKeyInfoLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->collectInstalledMasterKeyInfoLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v3

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_3e

    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 34
    new-instance v5, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 36
    iget-short v6, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    .line 38
    iget-wide v7, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    .line 40
    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    .line 43
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 49
    if-eqz v6, :cond_3a

    .line 51
    iget-wide v6, v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 53
    iget-wide v8, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 55
    cmp-long v6, v6, v8

    .line 57
    if-gez v6, :cond_15

    .line 59
    :cond_3a
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    goto :goto_15

    .line 63
    :cond_3e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v3

    .line 67
    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_6b

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 79
    new-instance v5, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 81
    iget-short v6, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    .line 83
    iget-wide v7, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    .line 85
    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    .line 88
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 94
    if-eqz v6, :cond_67

    .line 96
    iget-wide v6, v6, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 98
    iget-wide v8, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 100
    cmp-long v6, v6, v8

    .line 102
    if-gez v6, :cond_42

    .line 104
    :cond_67
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_42

    .line 108
    :cond_6b
    if-eqz p2, :cond_89

    .line 110
    new-instance v3, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 112
    iget-short v4, p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    .line 114
    iget-wide v5, p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    .line 116
    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    .line 119
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 125
    if-eqz v4, :cond_89

    .line 127
    iget-wide v4, v4, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 129
    iget-wide v6, p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->keyVersion:J

    .line 131
    cmp-long p2, v4, v6

    .line 133
    if-nez p2, :cond_89

    .line 135
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object p2

    .line 142
    :cond_8d
    :goto_8d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_b5

    .line 148
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 154
    new-instance v4, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 156
    iget-short v5, v3, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    .line 158
    iget-wide v6, v3, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    .line 160
    invoke-direct {v4, v5, v6, v7}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    .line 163
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_8d

    .line 169
    iget-object v4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 171
    invoke-static {v3}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v4, p1, v3}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 181
    goto :goto_8d

    .line 182
    :cond_b5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object p2

    .line 186
    :cond_b9
    :goto_b9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_e1

    .line 192
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 198
    new-instance v3, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 200
    iget-short v4, v1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->hsid:S

    .line 202
    iget-wide v5, v1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;->huser:J

    .line 204
    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    .line 207
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 210
    move-result v3

    .line 211
    if-nez v3, :cond_b9

    .line 213
    iget-object v3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 215
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v3, p1, v1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 225
    goto :goto_b9

    .line 226
    :cond_e1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object p2

    .line 230
    :goto_e5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_f9

    .line 236
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 242
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->upgradeMasterKeyLocked(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    goto :goto_e5

    .line 250
    :cond_f9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 253
    move-result-object p1

    .line 254
    return-object p1
.end method

.method private upgradeMasterKeyLocked(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_29

    .line 9
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 11
    invoke-virtual {v1, p1, p2, v0}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->importMasterKey(Landroid/content/Context;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_0 .. :try_end_12} :catch_13

    .line 19
    goto :goto_29

    .line 20
    :catch_13
    const-string p1, "upgradeAndGetLocked: failed to move from soft storage to hard storage for "

    .line 22
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string p2, "KeyBag.MstKeyStorageMgr"

    .line 39
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Landroid/content/Context;SJ)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 9
    invoke-direct {v2, p2, p3, p4}, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;-><init>(SJ)V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_32

    .line 18
    if-nez p2, :cond_15

    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :cond_15
    :try_start_15
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getMasterKeyName(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    iget-object p4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 28
    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 31
    move-result-object p4

    .line 32
    if-nez p4, :cond_27

    .line 34
    iget-object p4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 36
    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 39
    move-result-object p4
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_32

    .line 40
    :cond_27
    if-nez p4, :cond_2b

    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :cond_2b
    :try_start_2b
    new-instance p1, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;

    .line 46
    invoke-direct {p1, p2, p4}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;-><init>(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;Ljavax/crypto/SecretKey;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_32

    .line 49
    monitor-exit p0

    .line 50
    return-object p1

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public getHardwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;
    .registers 15

    .line 1
    iget-object v7, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mHardwareStorage:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 3
    if-nez v7, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_6
    new-instance v8, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;

    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move v3, p2

    .line 13
    move-wide v4, p3

    .line 14
    move v6, p5

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;-><init>(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;SJZLcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)V

    .line 18
    return-object v8
.end method

.method public getSoftwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;
    .registers 15

    .line 1
    new-instance v8, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;

    .line 3
    iget-object v7, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->mSoftwareStorage:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 5
    move-object v0, v8

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move-wide v4, p3

    .line 10
    move v6, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;-><init>(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;SJZLcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)V

    .line 14
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized remove(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->maintenanceLocked(Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method
