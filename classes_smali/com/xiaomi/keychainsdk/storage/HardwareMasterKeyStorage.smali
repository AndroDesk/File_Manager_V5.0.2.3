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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_e

    new-instance v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    invoke-direct {v0}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;-><init>()V

    sput-object v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    goto :goto_11

    :cond_e
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    :goto_11
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->mTransferKeyLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstanceIfSupport()Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;
    .registers 1

    sget-object v0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;

    return-object v0
.end method

.method private static getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "miuikeybag.key.hardstore.mk."

    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateTransferKeyInAndroidKeyStore(Landroid/content/Context;)I
    .registers 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    rem-long v4, v0, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-gez v4, :cond_12

    div-long/2addr v0, v2

    goto :goto_16

    :cond_12
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_16
    const-wide/16 v2, 0x2

    rem-long v2, v0, v2

    long-to-int v2, v2

    const-string v3, "miuikeybag.pref.hardkeystore.transferkeyinfo"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeySlotStartSPKey(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->mTransferKeyLock:Ljava/lang/Object;

    monitor-enter v6

    const-wide/16 v7, -0x1

    :try_start_2b
    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1f

    const/4 v11, 0x1

    if-lt v9, v10, :cond_40

    const-string v12, "digest_algorithm_sha1_upgrade_to_sha256"

    invoke-interface {v3, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_40

    move v12, v11

    goto :goto_41

    :cond_40
    move v12, v4

    :goto_41
    cmp-long v7, v7, v0

    if-nez v7, :cond_4a

    if-eqz v12, :cond_48

    goto :goto_4a

    :cond_48
    move v7, v4

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v7, v11

    :goto_4b
    invoke-direct {p0, p1, v2, v7}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->updateTransferKeyInAndroidKeyStoreLockedTK(Landroid/content/Context;IZ)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "digest_algorithm_sha1_upgrade_to_sha256"

    if-lt v9, v10, :cond_5b

    move v4, v11

    :cond_5b
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v6

    return v2

    :catchall_64
    move-exception p1

    monitor-exit v6
    :try_end_66
    .catchall {:try_start_2b .. :try_end_66} :catchall_64

    throw p1
.end method

.method private static getTransferKeyAlias(I)Ljava/lang/String;
    .registers 2

    const-string v0, "miuikeybag.key.hardstore.tk."

    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTransferKeySlotStartSPKey(I)Ljava/lang/String;
    .registers 2

    const-string v0, "slot_start_"

    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isMasterKeyAlias(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "miuikeybag.key.hardstore.mk."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static removeMasterKeyAliasPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toANS1WrappedMasterKey(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    array-length v1, v0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_6e

    add-int/lit8 v2, v1, -0x10

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v2, Landroid/micloud/asn1/Asn1Sequence;

    invoke-direct {v2}, Landroid/micloud/asn1/Asn1Sequence;-><init>()V

    iget-object v4, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    new-instance v5, Landroid/micloud/asn1/Asn1Field;

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    new-instance v4, Landroid/micloud/asn1/Asn1Field;

    iget-object v5, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    const/4 v6, 0x2

    invoke-direct {v4, v6, v5}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    new-instance v4, Landroid/micloud/asn1/Asn1Field;

    iget-object v5, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->iv:[B

    invoke-direct {v4, v6, v5}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    new-instance v4, Landroid/micloud/asn1/Asn1Field;

    const/4 v5, 0x4

    iget-object p0, p0, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->aad:[B

    invoke-direct {v4, v5, p0}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    new-instance v3, Landroid/micloud/asn1/Asn1Field;

    invoke-direct {v3, v6, v1}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v2, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    new-instance v1, Landroid/micloud/asn1/Asn1Field;

    invoke-direct {v1, v6, v0}, Landroid/micloud/asn1/Asn1Field;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_62
    invoke-virtual {v2}, Landroid/micloud/asn1/Asn1Sequence;->getDerEncode()[B

    move-result-object p0
    :try_end_66
    .catch Landroid/micloud/asn1/exception/Asn1EncodingException; {:try_start_62 .. :try_end_66} :catch_67

    return-object p0

    :catch_67
    move-exception p0

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6e
    new-instance p0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    new-instance v0, Ljavax/crypto/AEADBadTagException;

    const-string v1, "Input too short - need tag"

    invoke-direct {v0, v1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private updateTransferKeyInAndroidKeyStoreLockedTK(Landroid/content/Context;IZ)V
    .registers 8

    const-string p1, "Android keystore RSA not supported"

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeyAlias(I)Ljava/lang/String;

    move-result-object p2

    :try_start_6
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p3, :cond_13

    return-void

    :cond_13
    invoke-virtual {v0, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    const-string p3, "KeyBag.MasterKeyStorage"

    const-string v0, "delete transferKey failed, ignore"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    :try_start_1e
    const-string p3, "RSA"

    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->getKeyGeneratorProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p1
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_28} :catch_b1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1e .. :try_end_28} :catch_ab

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/16 v0, 0x801

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    const/16 v2, 0xb

    invoke-virtual {p3, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    const/16 v2, 0x1f

    invoke-virtual {p3, v0, v2}, Ljava/util/Calendar;->set(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_45

    const-string v0, "SHA-256"

    goto :goto_47

    :cond_45
    const-string v0, "SHA-1"

    :goto_47
    new-instance v2, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    const/16 v3, 0x24

    invoke-direct {v2, p2, v3}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;-><init>(Ljava/lang/String;I)V

    const/16 p2, 0x800

    invoke-virtual {v2, p2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setKeySize(I)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setDigests([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object p2

    const-string v0, "ECB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setBlockModes([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object p2

    const-string v0, "OAEPPadding"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setEncryptionPaddings([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object p2

    new-array v0, v2, [B

    invoke-virtual {p2, v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setAttestationChallenge([B)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object p2

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setCertificateNotAfter(Ljava/util/Date;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->build()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    :try_start_83
    invoke-virtual {p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_86
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_83 .. :try_end_86} :catch_a4

    :try_start_86
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_89} :catch_8a

    return-void

    :catch_8a
    move-exception p1

    const-string p2, "android.security.keystore.SecureKeyImportUnavailableException"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a3

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    const-string p2, "Generate attestation chain not supported"

    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a3
    throw p1

    :catch_a4
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_ab
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_b1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string p1, "clearMasterKey: failed to clear master key "

    const-string v0, "KeyBag.MasterKeyStorage"

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_8
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_f
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_8 .. :try_end_f} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_37

    :catch_10
    move-exception v1

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :catch_24
    move-exception v1

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-void
.end method

.method public generateTransferContext(Landroid/content/Context;)Lcom/xiaomi/keychainsdk/storage/TransferContext;
    .registers 4

    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getOrCreateTransferKeyInAndroidKeyStore(Landroid/content/Context;)I

    move-result p1

    :try_start_4
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeyAlias(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_10
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_10} :catch_20

    if-eqz v0, :cond_18

    new-instance v1, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;-><init>(I[Ljava/security/cert/Certificate;)V

    return-object v1

    :cond_18
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    const-string v0, "Attestation info is null. retry. "

    invoke-direct {p1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_20
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 7

    const-string p1, "getMasterKey: failed to get key "

    const-string v0, "KeyBag.MasterKeyStorage"

    const/4 v1, 0x0

    :try_start_5
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SecretKey;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_13} :catch_50
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_5 .. :try_end_13} :catch_3c
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_13} :catch_28
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_5 .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v2

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_28
    move-exception v2

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_3c
    move-exception v2

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_50
    move-exception v2

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public importMasterKey(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V
    .registers 9

    check-cast p3, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;

    iget p1, p3, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->transferKeySlot:I

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getTransferKeyAlias(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object p3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_15

    const-string v0, "SHA-256"

    goto :goto_17

    :cond_15
    const-string v0, "SHA-1"

    :goto_17
    new-instance v1, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    const/16 v2, 0x20

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->setDigests([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/keychainsdk/compat/KeyGenParameterSpecCompat;->build()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;

    invoke-static {p4}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->toANS1WrappedMasterKey(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B

    move-result-object p4

    const-string v2, "RSA/ECB/OAEPPadding"

    invoke-direct {v1, p4, p1, v2, v0}, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Lcom/xiaomi/keychainsdk/compat/WrappedKeyEntryCompat;->build()Ljava/security/KeyStore$Entry;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    :try_start_40
    invoke-virtual {p3, p2, p1, p4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_43
    .catch Ljava/security/KeyStoreException; {:try_start_40 .. :try_end_43} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p1

    const-string p2, "android.security.keystore.SecureKeyImportUnavailableException"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    const-string p2, "Set wrapped key entry not supported"

    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    throw p1

    :catch_5e
    move-exception p1

    new-instance p2, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p2, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public importMasterKey(Landroid/content/Context;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .registers 6

    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object p1

    new-instance v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v0, p3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance p3, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;

    const/4 v1, 0x3

    invoke-direct {p3, v1}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;-><init>(I)V

    const-string v1, "CBC"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->setBlockModes([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;

    move-result-object p3

    const-string v1, "PKCS7Padding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->setEncryptionPaddings([Ljava/lang/String;)Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/keychainsdk/compat/KeyProtectionCompat;->build()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p3

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->getMasterKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_2b
    invoke-virtual {p1, p2, v0, p3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_2e
    .catch Ljava/security/KeyStoreException; {:try_start_2b .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p1

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

    const-string p1, "listMasterKey: failed to get master key alias list"

    const-string v0, "KeyBag.MasterKeyStorage"

    :try_start_4
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1
    :try_end_c
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_4 .. :try_end_c} :catch_12
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_12
    move-exception v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 p1, 0x0

    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_38

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->isMasterKeyAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;->removeMasterKeyAliasPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_38
    return-object v0
.end method
