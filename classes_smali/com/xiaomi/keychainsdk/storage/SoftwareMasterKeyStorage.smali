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

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encryptMasterKeyWithProtectKey(Ljava/security/PublicKey;[B)[B
    .registers 4

    .line 1
    const-string v0, "RSA/ECB/PKCS1Padding not supported"

    .line 3
    :try_start_2
    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_2c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_26

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_9
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 13
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 16
    move-result-object p0
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_10} :catch_1f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_10} :catch_18
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_10} :catch_11

    .line 17
    return-object p0

    .line 18
    :catch_11
    move-exception p0

    .line 19
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 21
    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    throw p1

    .line 25
    :catch_18
    move-exception p0

    .line 26
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 28
    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    throw p1

    .line 32
    :catch_1f
    move-exception p0

    .line 33
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 35
    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    throw p1

    .line 39
    :catch_26
    new-instance p0, Ljava/lang/RuntimeException;

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 45
    :catch_2c
    new-instance p0, Ljava/lang/RuntimeException;

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
.end method

.method private static generateTransferKeyPair()Ljava/security/KeyPair;
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "RSA"

    .line 3
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 6
    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_10

    .line 7
    const/16 v1, 0x800

    .line 9
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 12
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :catch_10
    new-instance v0, Ljava/lang/RuntimeException;

    .line 19
    const-string v1, "RSA not supported"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method public static getInstance()Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->sInstance:Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;

    .line 3
    return-object v0
.end method

.method private static getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    const-string v0, "miuikeybag.pref.softkeystore.key"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private getOrCreateProtectKeyInAndroidKeyStore(Landroid/content/Context;)Ljava/security/PublicKey;
    .registers 8

    .line 1
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    const-string v1, "miuikeybag.key.softstore.protectedkey"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 14
    if-eqz v1, :cond_18

    .line 16
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 23
    move-result-object p1
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_17} :catch_c6
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_4 .. :try_end_17} :catch_bf
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_17} :catch_b8

    .line 24
    return-object p1

    .line 25
    :cond_18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x1

    .line 34
    const/16 v5, 0x64

    .line 36
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 39
    new-instance v4, Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 41
    invoke-direct {v4, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    const-string p1, "miuikeybag.key.softstore.protectedkey"

    .line 46
    invoke-virtual {v4, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 49
    move-result-object p1

    .line 50
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    .line 52
    const-string v5, "CN=miuikeybag.key.softstore.protectedkey"

    .line 54
    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 60
    move-result-object p1

    .line 61
    sget-object v4, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 63
    invoke-virtual {p1, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 66
    move-result-object p1

    .line 67
    const/16 v4, 0x800

    .line 69
    invoke-virtual {p1, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    .line 92
    move-result-object p1

    .line 93
    :try_start_5c
    const-string v1, "RSA"

    .line 95
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->getKeyGeneratorProvider()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-static {v1, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 102
    move-result-object v1
    :try_end_66
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5c .. :try_end_66} :catch_b0
    .catch Ljava/security/NoSuchProviderException; {:try_start_5c .. :try_end_66} :catch_a8

    .line 103
    :try_start_66
    invoke-virtual {v1, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_69
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_66 .. :try_end_69} :catch_a0

    .line 106
    :try_start_69
    monitor-enter p0
    :try_end_6a
    .catch Ljava/security/KeyStoreException; {:try_start_69 .. :try_end_6a} :catch_99
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_69 .. :try_end_6a} :catch_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_69 .. :try_end_6a} :catch_8b

    .line 107
    :try_start_6a
    const-string p1, "miuikeybag.key.softstore.protectedkey"

    .line 109
    invoke-virtual {v0, p1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 115
    if-eqz p1, :cond_7e

    .line 117
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 124
    move-result-object p1

    .line 125
    monitor-exit p0

    .line 126
    return-object p1

    .line 127
    :cond_7e
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 134
    move-result-object p1

    .line 135
    monitor-exit p0

    .line 136
    return-object p1

    .line 137
    :catchall_88
    move-exception p1

    .line 138
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_6a .. :try_end_8a} :catchall_88

    .line 139
    :try_start_8a
    throw p1
    :try_end_8b
    .catch Ljava/security/KeyStoreException; {:try_start_8a .. :try_end_8b} :catch_99
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_8a .. :try_end_8b} :catch_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8a .. :try_end_8b} :catch_8b

    .line 140
    :catch_8b
    move-exception p1

    .line 141
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 143
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 146
    throw v0

    .line 147
    :catch_92
    move-exception p1

    .line 148
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 150
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 153
    throw v0

    .line 154
    :catch_99
    move-exception p1

    .line 155
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 157
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 160
    throw v0

    .line 161
    :catch_a0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 163
    const-string v0, "should not reach here"

    .line 165
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    throw p1

    .line 169
    :catch_a8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 171
    const-string v0, "Android key store RSA generator not supported"

    .line 173
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p1

    .line 177
    :catch_b0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 179
    const-string v0, "Android key store RSA generator not supported"

    .line 181
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 184
    throw p1

    .line 185
    :catch_b8
    move-exception p1

    .line 186
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 188
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 191
    throw v0

    .line 192
    :catch_bf
    move-exception p1

    .line 193
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 195
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 198
    throw v0

    .line 199
    :catch_c6
    move-exception p1

    .line 200
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 202
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 205
    throw v0
.end method

.method private static unwrapMasterKey(Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B
    .registers 7

    .line 1
    const-string v0, "RSA/ECB/OAEPPadding or AES/GCM/NoPadding not supported"

    .line 3
    :try_start_2
    const-string v1, "RSA/ECB/OAEPPadding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "AES/GCM/NoPadding"

    .line 11
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    move-result-object v0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_e} :catch_5b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_e} :catch_55

    .line 15
    :try_start_e
    iget-object p0, p0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;->rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 21
    iget-object p0, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedSymKey:[B

    .line 23
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 26
    move-result-object p0

    .line 27
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 29
    const/16 v3, 0x80

    .line 31
    iget-object v4, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->iv:[B

    .line 33
    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 36
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 38
    const-string v4, "AES"

    .line 40
    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    iget-object p0, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->aad:[B

    .line 48
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 51
    iget-object p0, p1, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->encryptedMasterKey:[B

    .line 53
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 56
    move-result-object p0
    :try_end_38
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_38} :catch_4e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_38} :catch_47
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_38} :catch_40
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_38} :catch_39

    .line 57
    return-object p0

    .line 58
    :catch_39
    move-exception p0

    .line 59
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 61
    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    throw p1

    .line 65
    :catch_40
    move-exception p0

    .line 66
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 68
    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    throw p1

    .line 72
    :catch_47
    move-exception p0

    .line 73
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 75
    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    throw p1

    .line 79
    :catch_4e
    move-exception p0

    .line 80
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 82
    invoke-direct {p1, p0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    throw p1

    .line 86
    :catch_55
    new-instance p0, Ljava/lang/RuntimeException;

    .line 88
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0

    .line 92
    :catch_5b
    new-instance p0, Ljava/lang/RuntimeException;

    .line 94
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
.end method


# virtual methods
.method public clearMasterKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    return-void
.end method

.method public generateTransferContext(Landroid/content/Context;)Lcom/xiaomi/keychainsdk/storage/TransferContext;
    .registers 3

    .line 1
    new-instance p1, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;

    .line 3
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->generateTransferKeyPair()Ljava/security/KeyPair;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;-><init>(Ljava/security/KeyPair;)V

    .line 10
    return-object p1
.end method

.method public getMasterKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 11

    .line 1
    const-string v0, "RSA/ECB/PKCS1Padding not supported"

    .line 3
    const-string v1, "getKey: bad key info "

    .line 5
    const-string v2, "getKey: failed to unprotect key "

    .line 7
    const-string v3, "getKey: bad protect key for "

    .line 9
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    move-result-object p1

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v5, "KeyBag.MasterKeyStorage"

    .line 20
    if-nez p1, :cond_2a

    .line 22
    const-string p1, "getKey: no key "

    .line 24
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v4

    .line 43
    :cond_2a
    :try_start_2a
    new-instance v6, Lorg/json/JSONObject;

    .line 45
    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string p1, "key"

    .line 50
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    const-string v7, "hash"

    .line 56
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v6
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3b} :catch_147

    .line 60
    :try_start_3b
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v6}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->decodeBase64(Ljava/lang/String;)[B

    .line 67
    move-result-object v1
    :try_end_43
    .catch Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException; {:try_start_3b .. :try_end_43} :catch_133

    .line 68
    :try_start_43
    invoke-static {}, Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;->get()Ljava/security/KeyStore;

    .line 71
    move-result-object v6
    :try_end_47
    .catch Lcom/xiaomi/keychainsdk/exception/CryptoException; {:try_start_43 .. :try_end_47} :catch_12c

    .line 72
    :try_start_47
    const-string v7, "miuikeybag.key.softstore.protectedkey"

    .line 74
    invoke-virtual {v6, v7, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 80
    if-nez v6, :cond_6a

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v0, "getKey: no protect key for "

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v4

    .line 107
    :cond_6a
    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 110
    move-result-object v3
    :try_end_6e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_6e} :catch_118
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_47 .. :try_end_6e} :catch_104
    .catch Ljava/security/KeyStoreException; {:try_start_47 .. :try_end_6e} :catch_f0

    .line 111
    :try_start_6e
    const-string v6, "RSA/ECB/PKCS1Padding"

    .line 113
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 116
    move-result-object v0
    :try_end_74
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6e .. :try_end_74} :catch_ea
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6e .. :try_end_74} :catch_e4

    .line 117
    const/4 v6, 0x2

    .line 118
    :try_start_75
    invoke-virtual {v0, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 121
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 124
    move-result-object p1
    :try_end_7c
    .catch Ljava/security/InvalidKeyException; {:try_start_75 .. :try_end_7c} :catch_d0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_75 .. :try_end_7c} :catch_bc
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_75 .. :try_end_7c} :catch_a8

    .line 125
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    .line 128
    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_a0

    .line 135
    const-string p1, "getKey: bad master key "

    .line 137
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object p1

    .line 141
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string p2, ", bad hash"

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v4

    .line 161
    :cond_a0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 163
    const-string v0, "AES"

    .line 165
    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 168
    return-object p2

    .line 169
    :catch_a8
    move-exception p1

    .line 170
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    move-result-object v0

    .line 174
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p2

    .line 185
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return-object v4

    .line 189
    :catch_bc
    move-exception p1

    .line 190
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    move-result-object v0

    .line 194
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p2

    .line 205
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-object v4

    .line 209
    :catch_d0
    move-exception p1

    .line 210
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    move-result-object v0

    .line 214
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-result-object p2

    .line 218
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p2

    .line 225
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    return-object v4

    .line 229
    :catch_e4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 231
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 234
    throw p1

    .line 235
    :catch_ea
    new-instance p1, Ljava/lang/RuntimeException;

    .line 237
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 240
    throw p1

    .line 241
    :catch_f0
    move-exception p1

    .line 242
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    move-result-object v0

    .line 246
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p2

    .line 257
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    return-object v4

    .line 261
    :catch_104
    move-exception p1

    .line 262
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    move-result-object v0

    .line 266
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    move-result-object p2

    .line 270
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object p2

    .line 277
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    return-object v4

    .line 281
    :catch_118
    move-exception p1

    .line 282
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    move-result-object v0

    .line 286
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object p2

    .line 297
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    return-object v4

    .line 301
    :catch_12c
    move-exception p1

    .line 302
    const-string p2, "getKey: Android key store error"

    .line 304
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    return-object v4

    .line 308
    :catch_133
    move-exception p1

    .line 309
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    move-result-object v0

    .line 313
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object p2

    .line 324
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    return-object v4

    .line 328
    :catch_147
    move-exception p1

    .line 329
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    move-result-object v0

    .line 333
    invoke-static {p2}, Lcom/xiaomi/keychainsdk/util/LogUtil;->logHash(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    move-result-object p2

    .line 337
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object p2

    .line 344
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    return-object v4
.end method

.method public importMasterKey(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V
    .registers 7

    .line 1
    check-cast p3, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;

    .line 3
    invoke-static {p3, p4}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->unwrapMasterKey(Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)[B

    .line 6
    move-result-object p3

    .line 7
    invoke-static {p3}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    .line 10
    move-result-object p4

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getOrCreateProtectKeyInAndroidKeyStore(Landroid/content/Context;)Ljava/security/PublicKey;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p3}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->encryptMasterKeyWithProtectKey(Ljava/security/PublicKey;[B)[B

    .line 18
    move-result-object p3

    .line 19
    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    .line 21
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const-string v1, "key"

    .line 26
    invoke-static {p3}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string p3, "hash"

    .line 35
    invoke-static {p4}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 38
    move-result-object p4

    .line 39
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_29} :catch_4f

    .line 42
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 53
    move-result-object p3

    .line 54
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_40

    .line 64
    return-void

    .line 65
    :cond_40
    const-string p1, "KeyBag.MasterKeyStorage"

    .line 67
    const-string p2, "put masterKey to sp return fales"

    .line 69
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 74
    const-string p2, "importMasterKey failed."

    .line 76
    invoke-direct {p1, p2}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1

    .line 80
    :catch_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    const-string p2, "won\'t reach here"

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;->getKeyStoreSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    return-object v0
.end method
