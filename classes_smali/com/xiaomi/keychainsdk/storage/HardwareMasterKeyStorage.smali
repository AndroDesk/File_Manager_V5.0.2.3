.class public Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;
.super Ljava/lang/Object;
.source "HardwareMasterKeyStorage.java"

# interfaces
.implements Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;
    }
.end annotation


# static fields
.field private static final MASTER_KEY_PREFIX:Ljava/lang/String; = "miuikeybag.key.hardstore.mk."

.field private static final TAG:Ljava/lang/String; = "KeyBag.MasterKeyStorage"

.field private static final TRANSFER_KEY_DIGEST_ALGORITHM_SHA1_UPGRADE_TO_SHA256_SP_KEY:Ljava/lang/String; = "digest_algorithm_sha1_upgrade_to_sha256"

.field private static final TRANSFER_KEY_INFO_SP_NAME:Ljava/lang/String; = "miuikeybag.pref.hardkeystore.transferkeyinfo"

.field private static final TRANSFER_KEY_LIFE_TIME_IN_MILLIS:J = 0x1b7740L

.field private static final TRANSFER_KEY_PREFIX:Ljava/lang/String; = "miuikeybag.key.hardstore.tk."

.field private static final sInstance:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;


# instance fields
.field private final mTransferKeyLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    new-instance v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 9
    invoke-direct {v0}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;-><init>()V

    .line 12
    sput-object v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 18
    :goto_11
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->mTransferKeyLock:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public static getInstanceIfSupport()Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    .line 3
    return-object v0
.end method

.method private static getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "miuikeybag.key.hardstore.mk."

    .line 3
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getOrCreateTransferKeyInAndroidKeyStore(Landroid/content/Context;)I
    .registers 15

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x36ee80

    .line 8
    rem-long v4, v0, v2

    .line 10
    const-wide/32 v6, 0x1b7740

    .line 13
    cmp-long v4, v4, v6

    .line 15
    if-gez v4, :cond_12

    .line 17
    div-long/2addr v0, v2

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    div-long/2addr v0, v2

    .line 20
    const-wide/16 v2, 0x1

    .line 22
    add-long/2addr v0, v2

    .line 23
    :goto_16
    const-wide/16 v2, 0x2

    .line 25
    rem-long v2, v0, v2

    .line 27
    long-to-int v2, v2

    .line 28
    const-string v3, "miuikeybag.pref.hardkeystore.transferkeyinfo"

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeySlotStartSPKey(I)Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    iget-object v6, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->mTransferKeyLock:Ljava/lang/Object;

    .line 41
    monitor-enter v6

    .line 42
    const-wide/16 v7, -0x1

    .line 44
    :try_start_2b
    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 47
    move-result-wide v7

    .line 48
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    const/16 v10, 0x1f

    .line 52
    const/4 v11, 0x1

    .line 53
    if-lt v9, v10, :cond_40

    .line 55
    const-string v12, "digest_algorithm_sha1_upgrade_to_sha256"

    .line 57
    invoke-interface {v3, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 60
    move-result v12

    .line 61
    if-nez v12, :cond_40

    .line 63
    move v12, v11

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v12, v4

    .line 66
    :goto_41
    cmp-long v7, v7, v0

    .line 68
    if-nez v7, :cond_4a

    .line 70
    if-eqz v12, :cond_48

    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    move v7, v4

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    :goto_4a
    move v7, v11

    .line 76
    :goto_4b
    invoke-direct {p0, p1, v2, v7}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->updateTransferKeyInAndroidKeyStoreLockedTK(Landroid/content/Context;IZ)V

    .line 79
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    move-result-object p1

    .line 87
    const-string v0, "digest_algorithm_sha1_upgrade_to_sha256"

    .line 89
    if-lt v9, v10, :cond_5b

    .line 91
    move v4, v11

    .line 92
    :cond_5b
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    monitor-exit v6

    .line 100
    return v2

    .line 101
    :catchall_64
    move-exception p1

    .line 102
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_2b .. :try_end_66} :catchall_64

    .line 103
    throw p1
.end method

.method private static getTransferKeyAlias(I)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "miuikeybag.key.hardstore.tk."

    .line 3
    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static getTransferKeySlotStartSPKey(I)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "slot_start_"

    .line 3
    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static isMasterKeyAlias(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "miuikeybag.key.hardstore.mk."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static removeMasterKeyAliasPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const/16 v0, 0x1c

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static toANS1WrappedMasterKey(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0x10

    .line 6
    if-lt v1, v2, :cond_6e

    .line 8
    add-int/lit8 v2, v1, -0x10

    .line 10
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Landroid/micloud/asn1/Asn1Sequence;

    .line 23
    invoke-direct {v2}, Landroid/micloud/asn1/Asn1Sequence;-><init>()V

    .line 26
    iget-object v4, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 28
    new-instance v5, Landroid/micloud/asn1/Asn1Field;

    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v5, v6, v3}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    .line 38
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v3, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 43
    new-instance v4, Landroid/micloud/asn1/Asn1Field;

    .line 45
    iget-object v5, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    .line 47
    const/4 v6, 0x2

    .line 48
    invoke-direct {v4, v6, v5}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 56
    new-instance v4, Landroid/micloud/asn1/Asn1Field;

    .line 58
    iget-object v5, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->iv:[B

    .line 60
    invoke-direct {v4, v6, v5}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    .line 63
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v3, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 68
    new-instance v4, Landroid/micloud/asn1/Asn1Field;

    .line 70
    const/4 v5, 0x4

    .line 71
    iget-object p0, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->aad:[B

    .line 73
    invoke-direct {v4, v5, p0}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    .line 76
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p0, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 81
    new-instance v3, Landroid/micloud/asn1/Asn1Field;

    .line 83
    invoke-direct {v3, v6, v1}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    .line 86
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p0, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 91
    new-instance v1, Landroid/micloud/asn1/Asn1Field;

    .line 93
    invoke-direct {v1, v6, v0}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    .line 96
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :try_start_62
    invoke-virtual {v2}, Landroid/micloud/asn1/Asn1Sequence;->getDerEncode()[B

    .line 102
    move-result-object p0
    :try_end_66
    .catch Landroid/micloud/asn1/exception/Asn1EncodingException; {:try_start_62 .. :try_end_66} :catch_67

    .line 103
    return-object p0

    .line 104
    :catch_67
    move-exception p0

    .line 105
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 107
    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    throw v0

    .line 111
    :cond_6e
    new-instance p0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 113
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    .line 115
    const-string v1, "Input too short - need tag"

    .line 117
    invoke-direct {v0, v1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    throw p0
.end method

.method private updateTransferKeyInAndroidKeyStoreLockedTK(Landroid/content/Context;IZ)V
    .registers 8

    .line 1
    const-string p1, "Android keystore RSA not supported"

    .line 3
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeyAlias(I)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    :try_start_6
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_13

    .line 17
    if-nez p3, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {v0, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_16} :catch_17

    .line 23
    goto :goto_1e

    .line 24
    :catch_17
    const-string p3, "KeyBag.MasterKeyStorage"

    .line 26
    const-string v0, "delete transferKey failed, ignore"

    .line 28
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_1e
    :try_start_1e
    const-string p3, "RSA"

    .line 33
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->getKeyGeneratorProvider()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {p3, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 40
    move-result-object p1
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_28} :catch_b1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1e .. :try_end_28} :catch_ab

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 44
    move-result-object p3

    .line 45
    const/16 v0, 0x801

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p3, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/4 v0, 0x2

    .line 52
    const/16 v2, 0xb

    .line 54
    invoke-virtual {p3, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/4 v0, 0x5

    .line 58
    const/16 v2, 0x1f

    .line 60
    invoke-virtual {p3, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    if-lt v0, v2, :cond_45

    .line 67
    const-string v0, "SHA-256"

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    const-string v0, "SHA-1"

    .line 72
    :goto_47
    new-instance v2, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    .line 74
    const/16 v3, 0x24

    .line 76
    invoke-direct {v2, p2, v3}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;-><init>(Ljava/lang/String;I)V

    .line 79
    const/16 p2, 0x800

    .line 81
    invoke-virtual {v2, p2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setKeySize(I)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    .line 84
    move-result-object p2

    .line 85
    new-array v1, v1, [Ljava/lang/String;

    .line 87
    const/4 v2, 0x0

    .line 88
    aput-object v0, v1, v2

    .line 90
    invoke-virtual {p2, v1}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setDigests([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    .line 93
    move-result-object p2

    .line 94
    const-string v0, "ECB"

    .line 96
    filled-new-array {v0}, [Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setBlockModes([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    .line 103
    move-result-object p2

    .line 104
    const-string v0, "OAEPPadding"

    .line 106
    filled-new-array {v0}, [Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p2, v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setEncryptionPaddings([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    .line 113
    move-result-object p2

    .line 114
    new-array v0, v2, [B

    .line 116
    invoke-virtual {p2, v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setAttestationChallenge([B)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p2, p3}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setCertificateNotAfter(Ljava/util/Date;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->build()Ljava/security/spec/AlgorithmParameterSpec;

    .line 131
    move-result-object p2

    .line 132
    :try_start_83
    invoke-virtual {p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_86
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_83 .. :try_end_86} :catch_a4

    .line 135
    :try_start_86
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 138
    return-void

    .line 139
    :catch_8a
    move-exception p1

    .line 140
    const-string p2, "android.security.keystore.SecureKeyImportUnavailableException"

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_a3

    .line 156
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 158
    const-string p2, "Generate attestation chain not supported"

    .line 160
    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1

    .line 164
    :cond_a3
    throw p1

    .line 165
    :catch_a4
    move-exception p1

    .line 166
    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 168
    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 171
    throw p2

    .line 172
    :catch_ab
    new-instance p2, Ljava/lang/RuntimeException;

    .line 174
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p2

    .line 178
    :catch_b1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 180
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p2
.end method


# virtual methods
.method public clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string p1, "clearMasterKey: failed to clear master key "

    .line 3
    const-string v0, "KeyBag.MasterKeyStorage"

    .line 5
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_f
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_8 .. :try_end_f} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_f} :catch_10

    .line 16
    goto :goto_37

    .line 17
    :catch_10
    move-exception v1

    .line 18
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    goto :goto_37

    .line 37
    :catch_24
    move-exception v1

    .line 38
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_37
    return-void
.end method

.method public generateTransferContext(Landroid/content/Context;)Lcom/xiaomi/keychainsdk/storage/TransferContext;
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getOrCreateTransferKeyInAndroidKeyStore(Landroid/content/Context;)I

    .line 4
    move-result p1

    .line 5
    :try_start_4
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeyAlias(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 16
    move-result-object v0
    :try_end_10
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_10} :catch_20

    .line 17
    if-eqz v0, :cond_18

    .line 19
    new-instance v1, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;

    .line 21
    invoke-direct {v1, p1, v0}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;-><init>(I[Ljava/security/cert/Certificate;)V

    .line 24
    return-object v1

    .line 25
    :cond_18
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 27
    const-string v0, "Attestation info is null. retry. "

    .line 29
    invoke-direct {p1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    :catch_20
    move-exception p1

    .line 34
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 36
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    throw v0
.end method

.method public getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 7

    .line 1
    const-string p1, "getMasterKey: failed to get key "

    .line 3
    const-string v0, "KeyBag.MasterKeyStorage"

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljavax/crypto/SecretKey;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_13} :catch_50
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_5 .. :try_end_13} :catch_3c
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_13} :catch_28
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_5 .. :try_end_13} :catch_14

    .line 20
    return-object v2

    .line 21
    :catch_14
    move-exception v2

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
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    return-object v1

    .line 41
    :catch_28
    move-exception v2

    .line 42
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    return-object v1

    .line 61
    :catch_3c
    move-exception v2

    .line 62
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return-object v1

    .line 81
    :catch_50
    move-exception v2

    .line 82
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return-object v1
.end method

.method public importMasterKey(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V
    .registers 9

    .line 1
    check-cast p3, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;

    .line 2
    iget p1, p3, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->transferKeySlot:I

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeyAlias(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object p3

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_15

    const-string v0, "SHA-256"

    goto :goto_17

    :cond_15
    const-string v0, "SHA-1"

    .line 5
    :goto_17
    new-instance v1, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    const/16 v2, 0x20

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 6
    invoke-virtual {v1, v2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setDigests([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->build()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;

    .line 9
    invoke-static {p4}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->toANS1WrappedMasterKey(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B

    move-result-object p4

    const-string v2, "RSA/ECB/OAEPPadding"

    invoke-direct {v1, p4, p1, v2, v0}, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    invoke-virtual {v1}, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;->build()Ljava/security/KeyStore$Entry;

    move-result-object p1

    .line 11
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    .line 12
    :try_start_40
    invoke-virtual {p3, p2, p1, p4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_43
    .catch Ljava/security/KeyStoreException; {:try_start_40 .. :try_end_43} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p1

    const-string p2, "android.security.keystore.SecureKeyImportUnavailableException"

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 14
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    const-string p2, "Set wrapped key entry not supported"

    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5d
    throw p1

    :catch_5e
    move-exception p1

    .line 16
    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public importMasterKey(Landroid/content/Context;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .registers 6

    .line 17
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v0, p3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 19
    new-instance p3, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;

    const/4 v1, 0x3

    invoke-direct {p3, v1}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;-><init>(I)V

    const-string v1, "CBC"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p3, v1}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->setBlockModes([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;

    move-result-object p3

    const-string v1, "PKCS7Padding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p3, v1}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->setEncryptionPaddings([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->build()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p3

    .line 23
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    :try_start_2b
    invoke-virtual {p1, p2, v0, p3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_2e
    .catch Ljava/security/KeyStoreException; {:try_start_2b .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p1

    .line 25
    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public listMasterKey(Landroid/content/Context;)Ljava/util/List;
    .registers 5
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

    .line 1
    const-string p1, "listMasterKey: failed to get master key alias list"

    .line 3
    const-string v0, "KeyBag.MasterKeyStorage"

    .line 5
    :try_start_4
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 12
    move-result-object p1
    :try_end_c
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_4 .. :try_end_c} :catch_12
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_c} :catch_d

    .line 13
    goto :goto_17

    .line 14
    :catch_d
    move-exception v1

    .line 15
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    goto :goto_16

    .line 19
    :catch_12
    move-exception v1

    .line 20
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    if-eqz p1, :cond_38

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_38

    .line 37
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 43
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->isMasterKeyAlias(Ljava/lang/String;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1e

    .line 49
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->removeMasterKeyAliasPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_1e

    .line 57
    :cond_38
    return-object v0
.end method
