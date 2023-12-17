.class public Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;
.super Ljava/lang/Object;
.source "SoftwareMasterKeyStorage.java"

# interfaces
.implements Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;
    }
.end annotation


# static fields
.field private static final MASTERKEY_JSONKEY_HASH:Ljava/lang/String; = "hash"

.field private static final MASTERKEY_JSONKEY_KEY:Ljava/lang/String; = "key"

.field public static final PROTECTED_KEY_ALIAS:Ljava/lang/String; = "miuikeybag.key.softstore.protectedkey"

.field private static final TAG:Ljava/lang/String; = "KeyBag.MasterKeyStorage"

.field private static final sInstance:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    invoke-direct {v0}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;-><init>()V

    sput-object v0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encryptMasterKeyWithProtectKey(Ljava/security/PublicKey;[B)[B
    .registers 4

    const-string v0, "RSA/ECB/PKCS1Padding not supported"

    :try_start_2
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_2c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_26

    const/4 v1, 0x1

    :try_start_9
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_10} :catch_1f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_10} :catch_18
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_18
    move-exception p0

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1f
    move-exception p0

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_26
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateTransferKeyPair()Ljava/security/KeyPair;
    .registers 2

    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_10

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0

    :catch_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RSA not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;
    .registers 1

    sget-object v0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    return-object v0
.end method

.method private static getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "miuikeybag.pref.softkeystore.key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateProtectKeyInAndroidKeyStore(Landroid/content/Context;)Ljava/security/PublicKey;
    .registers 8

    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object v0

    :try_start_4
    const-string v1, "miuikeybag.key.softstore.protectedkey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_17} :catch_c6
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_4 .. :try_end_17} :catch_bf
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_17} :catch_b8

    return-object p1

    :cond_18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    new-instance v4, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v4, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "miuikeybag.key.softstore.protectedkey"

    invoke-virtual {v4, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    const-string v5, "CN=miuikeybag.key.softstore.protectedkey"

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object v4, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    const/16 v4, 0x800

    invoke-virtual {p1, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    :try_start_5c
    const-string v1, "RSA"

    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->getKeyGeneratorProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1
    :try_end_66
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5c .. :try_end_66} :catch_b0
    .catch Ljava/security/NoSuchProviderException; {:try_start_5c .. :try_end_66} :catch_a8

    :try_start_66
    invoke-virtual {v1, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_69
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_66 .. :try_end_69} :catch_a0

    :try_start_69
    monitor-enter p0
    :try_end_6a
    .catch Ljava/security/KeyStoreException; {:try_start_69 .. :try_end_6a} :catch_99
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_69 .. :try_end_6a} :catch_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_69 .. :try_end_6a} :catch_8b

    :try_start_6a
    const-string p1, "miuikeybag.key.softstore.protectedkey"

    invoke-virtual {v0, p1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_7e
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_88
    move-exception p1

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_6a .. :try_end_8a} :catchall_88

    :try_start_8a
    throw p1
    :try_end_8b
    .catch Ljava/security/KeyStoreException; {:try_start_8a .. :try_end_8b} :catch_99
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_8a .. :try_end_8b} :catch_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8a .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_92
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_99
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_a0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should not reach here"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_a8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Android key store RSA generator not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_b0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Android key store RSA generator not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_b8
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_bf
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_c6
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static unwrapMasterKey(Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B
    .registers 7

    const-string v0, "RSA/ECB/OAEPPadding or AES/GCM/NoPadding not supported"

    :try_start_2
    const-string v1, "RSA/ECB/OAEPPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_e} :catch_5b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_e} :catch_55

    :try_start_e
    iget-object p0, p0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;->rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object p0, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    iget-object v4, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->iv:[B

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object p0, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->aad:[B

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    iget-object p0, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_38
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_38} :catch_4e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_38} :catch_47
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_38} :catch_40
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_40
    move-exception p0

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_47
    move-exception p0

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4e
    move-exception p0

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_55
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public generateTransferContext(Landroid/content/Context;)Lcom/xiaomi/keychainsdk/storage/TransferContext;
    .registers 3

    new-instance p1, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;

    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->generateTransferKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;-><init>(Ljava/security/KeyPair;)V

    return-object p1
.end method

.method public getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 11

    const-string v0, "RSA/ECB/PKCS1Padding not supported"

    const-string v1, "getKey: bad key info "

    const-string v2, "getKey: failed to unprotect key "

    const-string v3, "getKey: bad protect key for "

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v4, 0x0

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "KeyBag.MasterKeyStorage"

    if-nez p1, :cond_2a

    const-string p1, "getKey: no key "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2a
    :try_start_2a
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "key"

    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "hash"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3b} :catch_147

    :try_start_3b
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v6}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_43
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_3b .. :try_end_43} :catch_133

    :try_start_43
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    move-result-object v6
    :try_end_47
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_43 .. :try_end_47} :catch_12c

    :try_start_47
    const-string v7, "miuikeybag.key.softstore.protectedkey"

    invoke-virtual {v6, v7, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v6

    check-cast v6, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v6, :cond_6a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getKey: no protect key for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_6a
    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3
    :try_end_6e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_6e} :catch_118
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_47 .. :try_end_6e} :catch_104
    .catch Ljava/security/KeyStoreException; {:try_start_47 .. :try_end_6e} :catch_f0

    :try_start_6e
    const-string v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_74
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6e .. :try_end_74} :catch_ea
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6e .. :try_end_74} :catch_e4

    const/4 v6, 0x2

    :try_start_75
    invoke-virtual {v0, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_7c
    .catch Ljava/security/InvalidKeyException; {:try_start_75 .. :try_end_7c} :catch_d0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_75 .. :try_end_7c} :catch_bc
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_75 .. :try_end_7c} :catch_a8

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string p1, "getKey: bad master key "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", bad hash"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_a0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2

    :catch_a8
    move-exception p1

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_bc
    move-exception p1

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_d0
    move-exception p1

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_e4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_ea
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_f0
    move-exception p1

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_104
    move-exception p1

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_118
    move-exception p1

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_12c
    move-exception p1

    const-string p2, "getKey: Android key store error"

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_133
    move-exception p1

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_147
    move-exception p1

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public importMasterKey(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V
    .registers 7

    check-cast p3, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;

    invoke-static {p3, p4}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->unwrapMasterKey(Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    move-result-object p4

    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getOrCreateProtectKeyInAndroidKeyStore(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->encryptMasterKeyWithProtectKey(Ljava/security/PublicKey;[B)[B

    move-result-object p3

    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    invoke-static {p3}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "hash"

    invoke-static {p4}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_29} :catch_4f

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_40

    return-void

    :cond_40
    const-string p1, "KeyBag.MasterKeyStorage"

    const-string p2, "put masterKey to sp return fales"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    const-string p2, "importMasterKey failed."

    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "won\'t reach here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listMasterKey(Landroid/content/Context;)Ljava/util/List;
    .registers 3
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
