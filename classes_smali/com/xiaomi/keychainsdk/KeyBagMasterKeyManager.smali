.class public Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;
.super Ljava/lang/Object;
.source "KeyBagMasterKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;
    }
.end annotation


# static fields
.field private static final FIRST_MASTER_KEY_TAG:S = 0x1s

.field public static final SECURE_LEVEL_HARDWARE:I

.field public static final SECURE_LEVEL_SOFTWARE:I

.field public static final TAG:Ljava/lang/String; = "KeyBagMasterKeyManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHSid:S

.field private final mHUser:J

.field private final mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

.field private final mSecurityLevel:I

.field private final mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x49636

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->SECURE_LEVEL_HARDWARE:I

    const v0, 0xa20d6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->SECURE_LEVEL_SOFTWARE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;SJILcom/xiaomi/keychainsdk/request/KeyBagRequestor;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x30d40

    if-eq p5, v0, :cond_16

    const v0, 0xdbba0

    if-ne p5, v0, :cond_e

    goto :goto_16

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "secureLevel != SECURE_LEVEL_SOFTWARE && secureLevel != SECURE_LEVEL_HARDWARE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    iput-short p2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    iput-wide p3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    iput p5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    invoke-static {p1, p2, p3, p4, p6}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getInstance(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getInstance()Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    return-void
.end method

.method private static ensureCallOnWorkerThread()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must be called on worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;
    .registers 9

    iget v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    const v1, 0xdbba0

    if-ne v0, v1, :cond_1f

    iget-object v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    iget-object v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    iget-short v4, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    iget-wide v5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getHardwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v0

    if-eqz v0, :cond_17

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "hki should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    iget-object v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    iget-short v4, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    iget-wide v5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getSoftwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v0

    return-object v0
.end method

.method private getServerKeyInfoInner()Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;
    .registers 12

    const-string v0, "getServerKeyInfo: test import failed"

    const-string v1, "KeyBagMasterKeyManager"

    const v2, 0xdbba0

    :try_start_7
    iget v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_73

    iget-object v5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    iget-object v6, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    iget-short v7, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    iget-wide v8, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getHardwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V
    :try_end_25
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_7 .. :try_end_25} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_7 .. :try_end_25} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_7 .. :try_end_25} :catch_84
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_7 .. :try_end_25} :catch_7d

    return-object v0

    :cond_26
    :try_start_26
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    move-result-object v5
    :try_end_2a
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_26 .. :try_end_2a} :catch_65
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_26 .. :try_end_2a} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_26 .. :try_end_2a} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_26 .. :try_end_2a} :catch_84

    :try_start_2a
    iget-object v6, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    invoke-interface {v5}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object v7

    invoke-interface {v5}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getHardwareServerMasterKeyContext(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    move-result-object v6

    iget-object v7, v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    iget-boolean v8, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->isRootAttestationCATrust:Z

    if-nez v8, :cond_49

    const-string v0, "getServerKeyInfo: root not trusted"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    invoke-direct {v0, v6, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V
    :try_end_48
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_2a .. :try_end_48} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_2a .. :try_end_48} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_2a .. :try_end_48} :catch_84
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_2a .. :try_end_48} :catch_7d

    return-object v0

    :cond_49
    :try_start_49
    new-instance v8, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->testKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    const-wide/16 v9, 0x0

    invoke-direct {v8, v7, v9, v10, v3}, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;-><init>(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;JS)V

    invoke-interface {v2, v5, v8}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    :try_end_55
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_49 .. :try_end_55} :catch_5b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_49 .. :try_end_55} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_49 .. :try_end_55} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_49 .. :try_end_55} :catch_84

    :try_start_55
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    invoke-direct {v0, v6, v4}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V

    return-object v0

    :catch_5b
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    invoke-direct {v0, v6, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V

    return-object v0

    :catch_65
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V

    return-object v0

    :cond_73
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V
    :try_end_7c
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_55 .. :try_end_7c} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_55 .. :try_end_7c} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_55 .. :try_end_7c} :catch_84
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_55 .. :try_end_7c} :catch_7d

    return-object v0

    :catch_7d
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_84
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_8b
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    iget v2, v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->errCode:I

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_94
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    invoke-virtual {v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    move-result-object v0
    :try_end_6
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_0 .. :try_end_6} :catch_15
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_0 .. :try_end_6} :catch_e
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_e
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_15
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private installFromServer(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;S)V
    .registers 20

    move-object/from16 v1, p0

    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->canInstallToDevice()Z

    move-result v0

    if-eqz v0, :cond_78

    :try_start_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    iget v5, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object v8

    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    move-result-object v9

    instance-of v6, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    if-eqz v6, :cond_37

    move-object v6, v0

    check-cast v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    iget-object v6, v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    iget-object v6, v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    goto :goto_3c

    :cond_37
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :goto_3c
    move-object v10, v6

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    iget v11, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    iget-object v12, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    iget-object v14, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    iget-object v15, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    move/from16 v6, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->downloadMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    :try_end_54
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException; {:try_start_11 .. :try_end_54} :catch_71
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_11 .. :try_end_54} :catch_6a
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_11 .. :try_end_54} :catch_63
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_11 .. :try_end_54} :catch_5c
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_11 .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5c
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_63
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_6a
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_71
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t install"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "not created yet"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeServerKeyPassword(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    move-result v0

    if-eqz v0, :cond_6f

    :try_start_b
    move-object/from16 v0, p1

    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    iget v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    const/4 v5, 0x1

    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object v8

    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    move-result-object v9

    instance-of v2, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    if-eqz v2, :cond_32

    move-object v2, v0

    check-cast v2, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    iget-object v2, v2, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    iget-object v2, v2, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    goto :goto_37

    :cond_32
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_37
    move-object v10, v2

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    iget v11, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    iget-object v12, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    iget-object v14, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    iget-object v15, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->changeMasterKeyPassword(ISLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    :try_end_4b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException; {:try_start_b .. :try_end_4b} :catch_68
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_b .. :try_end_4b} :catch_61
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_b .. :try_end_4b} :catch_5a
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_b .. :try_end_4b} :catch_53
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_b .. :try_end_4b} :catch_4c

    return-void

    :catch_4c
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_53
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5a
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_61
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_68
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "not create yet"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createServerKeyAndInstall(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->canInstallToDevice()Z

    move-result v0

    if-eqz v0, :cond_77

    :try_start_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    iget v5, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    const/4 v6, 0x1

    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object v8

    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    move-result-object v9

    instance-of v7, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    if-eqz v7, :cond_38

    move-object v7, v0

    check-cast v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    goto :goto_3d

    :cond_38
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :goto_3d
    move-object v10, v7

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    iget v11, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    iget-object v12, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    iget-object v14, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    iget-object v15, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->createMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    :try_end_53
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException; {:try_start_11 .. :try_end_53} :catch_70
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_11 .. :try_end_53} :catch_69
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_11 .. :try_end_53} :catch_62
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_11 .. :try_end_53} :catch_5b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_11 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5b
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_62
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_69
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_70
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t install"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstalledKeyInfo()Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    iget-short v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->get(Landroid/content/Context;SJ)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerKeyInfo()Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;
    .registers 4

    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getServerKeyInfoInner()Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    move-result-object v0

    iget-object v1, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    iget-object v1, v1, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    iget v1, v1, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->secureLevel:I

    iget v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    if-ne v1, v2, :cond_12

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "wrong security level, should be "

    invoke-static {v2, v1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public installFromServer(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->installFromServer(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;S)V

    return-void
.end method

.method public isInstalled()Z
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getInstalledKeyInfo()Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public resetServerKeyAndInstall(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->canInstallToDevice()Z

    move-result v0

    if-eqz v0, :cond_77

    :try_start_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    iget v5, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    const/4 v6, 0x1

    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object v8

    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    move-result-object v9

    instance-of v7, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    if-eqz v7, :cond_38

    move-object v7, v0

    check-cast v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    goto :goto_3d

    :cond_38
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :goto_3d
    move-object v10, v7

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    iget v11, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    iget-object v12, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    iget-object v14, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    iget-object v15, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->resetMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    :try_end_53
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException; {:try_start_11 .. :try_end_53} :catch_70
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_11 .. :try_end_53} :catch_69
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_11 .. :try_end_53} :catch_62
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_11 .. :try_end_53} :catch_5b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_11 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5b
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_62
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_69
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_70
    move-exception v0

    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t install"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "not created yet"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
