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

.field public static final SECURE_LEVEL_HARDWARE:I = 0xdbba0

.field public static final SECURE_LEVEL_SOFTWARE:I = 0x30d40

.field public static final TAG:Ljava/lang/String; = "KeyBagMasterKeyManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHSid:S

.field private final mHUser:J

.field private final mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

.field private final mSecurityLevel:I

.field private final mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;SJILcom/xiaomi/keychainsdk/request/KeyBagRequestor;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x30d40

    .line 7
    if-eq p5, v0, :cond_16

    .line 9
    const v0, 0xdbba0

    .line 12
    if-ne p5, v0, :cond_e

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string p2, "secureLevel != SECURE_LEVEL_SOFTWARE && secureLevel != SECURE_LEVEL_HARDWARE"

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1

    .line 23
    :cond_16
    :goto_16
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    .line 25
    iput-short p2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    .line 27
    iput-wide p3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    .line 29
    iput p5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 31
    invoke-static {p1, p2, p3, p4, p6}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getInstance(Landroid/content/Context;SJLcom/xiaomi/keychainsdk/request/KeyBagRequestor;)Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 37
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getInstance()Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 43
    return-void
.end method

.method private static ensureCallOnWorkerThread()V
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    .line 14
    const-string v1, "Must be called on worker thread"

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method private getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;
    .registers 9

    .line 1
    iget v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 3
    const v1, 0xdbba0

    .line 6
    if-ne v0, v1, :cond_1f

    .line 8
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 10
    iget-object v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    .line 12
    iget-short v4, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    .line 14
    iget-wide v5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getHardwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    const-string v1, "hki should not be null"

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0

    .line 32
    :cond_1f
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 34
    iget-object v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    .line 36
    iget-short v4, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    .line 38
    iget-wide v5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getSoftwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method private getServerKeyInfoInner()Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;
    .registers 12

    .line 1
    const-string v0, "getServerKeyInfo: test import failed"

    .line 3
    const-string v1, "KeyBagMasterKeyManager"

    .line 5
    const v2, 0xdbba0

    .line 8
    :try_start_7
    iget v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne v2, v3, :cond_73

    .line 13
    iget-object v5, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 15
    iget-object v6, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    .line 17
    iget-short v7, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    .line 19
    iget-wide v8, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    .line 21
    const/4 v10, 0x1

    .line 22
    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->getHardwareImporter(Landroid/content/Context;SJZ)Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_26

    .line 29
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V
    :try_end_25
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_7 .. :try_end_25} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_7 .. :try_end_25} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_7 .. :try_end_25} :catch_84
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_7 .. :try_end_25} :catch_7d

    .line 38
    return-object v0

    .line 39
    :cond_26
    :try_start_26
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    .line 42
    move-result-object v5
    :try_end_2a
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_26 .. :try_end_2a} :catch_65
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_26 .. :try_end_2a} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_26 .. :try_end_2a} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_26 .. :try_end_2a} :catch_84

    .line 43
    :try_start_2a
    iget-object v6, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 45
    invoke-interface {v5}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 48
    move-result-object v7

    .line 49
    invoke-interface {v5}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getHardwareServerMasterKeyContext(Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 56
    move-result-object v6

    .line 57
    iget-object v7, v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    .line 59
    iget-boolean v8, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->isRootAttestationCATrust:Z

    .line 61
    if-nez v8, :cond_49

    .line 63
    const-string v0, "getServerKeyInfo: root not trusted"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 70
    invoke-direct {v0, v6, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V
    :try_end_48
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_2a .. :try_end_48} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_2a .. :try_end_48} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_2a .. :try_end_48} :catch_84
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_2a .. :try_end_48} :catch_7d

    .line 73
    return-object v0

    .line 74
    :cond_49
    :try_start_49
    new-instance v8, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 76
    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->testKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 78
    const-wide/16 v9, 0x0

    .line 80
    invoke-direct {v8, v7, v9, v10, v3}, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;-><init>(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;JS)V

    .line 83
    invoke-interface {v2, v5, v8}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    :try_end_55
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_49 .. :try_end_55} :catch_5b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_49 .. :try_end_55} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_49 .. :try_end_55} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_49 .. :try_end_55} :catch_84

    .line 86
    :try_start_55
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 88
    invoke-direct {v0, v6, v4}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V

    .line 91
    return-object v0

    .line 92
    :catch_5b
    move-exception v2

    .line 93
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 98
    invoke-direct {v0, v6, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V

    .line 101
    return-object v0

    .line 102
    :catch_65
    move-exception v2

    .line 103
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 108
    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1, v3}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V

    .line 115
    return-object v0

    .line 116
    :cond_73
    new-instance v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 118
    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1, v4}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V
    :try_end_7c
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_55 .. :try_end_7c} :catch_94
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_55 .. :try_end_7c} :catch_8b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_55 .. :try_end_7c} :catch_84
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_55 .. :try_end_7c} :catch_7d

    .line 125
    return-object v0

    .line 126
    :catch_7d
    move-exception v0

    .line 127
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 129
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    throw v1

    .line 133
    :catch_84
    move-exception v0

    .line 134
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 136
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    throw v1

    .line 140
    :catch_8b
    move-exception v0

    .line 141
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 143
    iget v2, v0, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException;->errCode:I

    .line 145
    invoke-direct {v1, v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(ILjava/lang/Throwable;)V

    .line 148
    throw v1

    .line 149
    :catch_94
    move-exception v0

    .line 150
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 152
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 155
    throw v1
.end method

.method private getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->getSoftwareServerMasterKeyContext()Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    .line 6
    move-result-object v0
    :try_end_6
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_0 .. :try_end_6} :catch_15
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_0 .. :try_end_6} :catch_e
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-object v0

    .line 8
    :catch_7
    move-exception v0

    .line 9
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 11
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    throw v1

    .line 15
    :catch_e
    move-exception v0

    .line 16
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 18
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    throw v1

    .line 22
    :catch_15
    move-exception v0

    .line 23
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 25
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    throw v1
.end method

.method private installFromServer(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;S)V
    .registers 20

    move-object/from16 v1, p0

    .line 2
    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->canInstallToDevice()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 5
    :try_start_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 6
    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    move-result-object v3

    .line 9
    iget-object v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    iget v5, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 10
    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object v8

    .line 11
    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    move-result-object v9

    .line 12
    instance-of v6, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    if-eqz v6, :cond_37

    .line 13
    move-object v6, v0

    check-cast v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    iget-object v6, v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    iget-object v6, v6, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    goto :goto_3c

    .line 14
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

    .line 15
    invoke-virtual/range {v4 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->downloadMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    move-result-object v0

    .line 16
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

    .line 17
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5c
    move-exception v0

    .line 18
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_63
    move-exception v0

    .line 19
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_6a
    move-exception v0

    .line 20
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_71
    move-exception v0

    .line 21
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 22
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t install"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "not created yet"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeServerKeyPassword(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_6f

    .line 12
    :try_start_b
    move-object/from16 v0, p1

    .line 14
    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 16
    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 28
    iget v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 30
    const/4 v5, 0x1

    .line 31
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 34
    move-result-object v8

    .line 35
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    .line 38
    move-result-object v9

    .line 39
    instance-of v2, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 41
    if-eqz v2, :cond_32

    .line 43
    move-object v2, v0

    .line 44
    check-cast v2, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 46
    iget-object v2, v2, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    .line 48
    iget-object v2, v2, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    .line 50
    goto :goto_37

    .line 51
    :cond_32
    new-instance v2, Ljava/util/HashSet;

    .line 53
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 56
    :goto_37
    move-object v10, v2

    .line 57
    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    .line 59
    iget v11, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    .line 61
    iget-object v12, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    .line 63
    iget-object v13, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    .line 65
    iget-object v14, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    .line 67
    iget-object v15, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    .line 69
    move-object/from16 v6, p2

    .line 71
    move-object/from16 v7, p3

    .line 73
    invoke-virtual/range {v3 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->changeMasterKeyPassword(ISLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    :try_end_4b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException; {:try_start_b .. :try_end_4b} :catch_68
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_b .. :try_end_4b} :catch_61
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_b .. :try_end_4b} :catch_5a
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_b .. :try_end_4b} :catch_53
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_b .. :try_end_4b} :catch_4c

    .line 76
    return-void

    .line 77
    :catch_4c
    move-exception v0

    .line 78
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 80
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 83
    throw v2

    .line 84
    :catch_53
    move-exception v0

    .line 85
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 87
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 90
    throw v2

    .line 91
    :catch_5a
    move-exception v0

    .line 92
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 94
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    throw v2

    .line 98
    :catch_61
    move-exception v0

    .line 99
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 101
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 104
    throw v2

    .line 105
    :catch_68
    move-exception v0

    .line 106
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 108
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    throw v2

    .line 112
    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    const-string v2, "not create yet"

    .line 116
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    throw v0
.end method

.method public createServerKeyAndInstall(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;)V
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_7f

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->canInstallToDevice()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_77

    .line 18
    :try_start_11
    move-object/from16 v0, p1

    .line 20
    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 22
    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    .line 31
    move-result-object v3

    .line 32
    iget-object v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 34
    iget v5, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 40
    move-result-object v8

    .line 41
    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    .line 44
    move-result-object v9

    .line 45
    instance-of v7, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 47
    if-eqz v7, :cond_38

    .line 49
    move-object v7, v0

    .line 50
    check-cast v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 52
    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    .line 54
    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    new-instance v7, Ljava/util/HashSet;

    .line 59
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 62
    :goto_3d
    move-object v10, v7

    .line 63
    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    .line 65
    iget v11, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    .line 67
    iget-object v12, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    .line 69
    iget-object v13, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    .line 71
    iget-object v14, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    .line 73
    iget-object v15, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    .line 75
    move-object/from16 v7, p2

    .line 77
    invoke-virtual/range {v4 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->createMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v2, v3, v0}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    :try_end_53
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException; {:try_start_11 .. :try_end_53} :catch_70
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_11 .. :try_end_53} :catch_69
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_11 .. :try_end_53} :catch_62
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_11 .. :try_end_53} :catch_5b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_11 .. :try_end_53} :catch_54

    .line 84
    return-void

    .line 85
    :catch_54
    move-exception v0

    .line 86
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 88
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    throw v2

    .line 92
    :catch_5b
    move-exception v0

    .line 93
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 95
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    throw v2

    .line 99
    :catch_62
    move-exception v0

    .line 100
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 102
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 105
    throw v2

    .line 106
    :catch_69
    move-exception v0

    .line 107
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 109
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    throw v2

    .line 113
    :catch_70
    move-exception v0

    .line 114
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 116
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    throw v2

    .line 120
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    const-string v2, "can\'t install"

    .line 124
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    throw v0

    .line 128
    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 130
    const-string v2, "already created"

    .line 132
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0
.end method

.method public getInstalledKeyInfo()Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mContext:Landroid/content/Context;

    .line 5
    iget-short v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHSid:S

    .line 7
    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mHUser:J

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->get(Landroid/content/Context;SJ)Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getServerKeyInfo()Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getServerKeyInfoInner()Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    .line 10
    iget-object v1, v1, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    .line 12
    iget v1, v1, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->secureLevel:I

    .line 14
    iget v2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 16
    if-ne v1, v2, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    const-string v2, "wrong security level, should be "

    .line 23
    invoke-static {v2, v1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method public installFromServer(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->installFromServer(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;S)V

    return-void
.end method

.method public isInstalled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getInstalledKeyInfo()Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public resetServerKeyAndInstall(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;Ljava/lang/String;)V
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-static {}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->ensureCallOnWorkerThread()V

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->hasRemoteKey()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_7f

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;->canInstallToDevice()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_77

    .line 18
    :try_start_11
    move-object/from16 v0, p1

    .line 20
    check-cast v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;

    .line 22
    iget-object v0, v0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->getKeyImporter()Lcom/xiaomi/keychainsdk/storage/KeyImporter;

    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;

    .line 31
    move-result-object v3

    .line 32
    iget-object v4, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mProtocol:Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;

    .line 34
    iget v5, v1, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;->mSecurityLevel:I

    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 40
    move-result-object v8

    .line 41
    invoke-interface {v3}, Lcom/xiaomi/keychainsdk/storage/TransferContext;->getAttestationCA()[Ljava/security/cert/Certificate;

    .line 44
    move-result-object v9

    .line 45
    instance-of v7, v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 47
    if-eqz v7, :cond_38

    .line 49
    move-object v7, v0

    .line 50
    check-cast v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 52
    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    .line 54
    iget-object v7, v7, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    new-instance v7, Ljava/util/HashSet;

    .line 59
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 62
    :goto_3d
    move-object v10, v7

    .line 63
    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    .line 65
    iget v11, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmZone:I

    .line 67
    iget-object v12, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->nonce:Ljava/lang/String;

    .line 69
    iget-object v13, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmAAD:[B

    .line 71
    iget-object v14, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub1:Ljava/security/PublicKey;

    .line 73
    iget-object v15, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hsmPub2:Ljava/security/PublicKey;

    .line 75
    move-object/from16 v7, p2

    .line 77
    invoke-virtual/range {v4 .. v15}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;->resetMasterKey(ISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;[Ljava/security/cert/Certificate;Ljava/util/Set;ILjava/lang/String;[BLjava/security/PublicKey;Ljava/security/PublicKey;)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v2, v3, v0}, Lcom/xiaomi/keychainsdk/storage/KeyImporter;->importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    :try_end_53
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException; {:try_start_11 .. :try_end_53} :catch_70
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException; {:try_start_11 .. :try_end_53} :catch_69
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$BadResponseException; {:try_start_11 .. :try_end_53} :catch_62
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_11 .. :try_end_53} :catch_5b
    .catch Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$OperationFailedException; {:try_start_11 .. :try_end_53} :catch_54

    .line 84
    return-void

    .line 85
    :catch_54
    move-exception v0

    .line 86
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 88
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    throw v2

    .line 92
    :catch_5b
    move-exception v0

    .line 93
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 95
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    throw v2

    .line 99
    :catch_62
    move-exception v0

    .line 100
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 102
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 105
    throw v2

    .line 106
    :catch_69
    move-exception v0

    .line 107
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 109
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    throw v2

    .line 113
    :catch_70
    move-exception v0

    .line 114
    new-instance v2, Lcom/xiaomi/keychainsdk/exception/KeyBagException;

    .line 116
    invoke-direct {v2, v0}, Lcom/xiaomi/keychainsdk/exception/KeyBagException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    throw v2

    .line 120
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    const-string v2, "can\'t install"

    .line 124
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    throw v0

    .line 128
    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 130
    const-string v2, "not created yet"

    .line 132
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0
.end method
