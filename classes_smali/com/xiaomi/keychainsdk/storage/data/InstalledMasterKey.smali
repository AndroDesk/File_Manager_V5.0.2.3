.class public Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;
.super Ljava/lang/Object;
.source "InstalledMasterKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;
    }
.end annotation


# instance fields
.field public final installedMasterKeyInfo:Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

.field private final mKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;Ljavax/crypto/SecretKey;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->installedMasterKeyInfo:Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->mKey:Ljavax/crypto/SecretKey;

    .line 8
    return-void
.end method


# virtual methods
.method public getCipherForDecryption([B)Ljavax/crypto/Cipher;
    .registers 6

    .line 1
    const-string v0, "AES/CBC/PKCS7Padding not supported"

    .line 3
    :try_start_2
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_28
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_22

    .line 9
    const/4 v1, 0x2

    .line 10
    :try_start_9
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->mKey:Ljavax/crypto/SecretKey;

    .line 12
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_13} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_13} :catch_14

    .line 20
    return-object v0

    .line 21
    :catch_14
    move-exception p1

    .line 22
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 24
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw v0

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 31
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw v0

    .line 35
    :catch_22
    new-instance p1, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :catch_28
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method

.method public getCipherForEncryption()Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;
    .registers 4

    .line 1
    const-string v0, "AES/CBC/PKCS7Padding not supported"

    .line 3
    :try_start_2
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_1f

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_9
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->mKey:Ljavax/crypto/SecretKey;

    .line 12
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_e
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_e} :catch_18

    .line 15
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;

    .line 21
    invoke-direct {v2, v0, v1}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;-><init>(Ljavax/crypto/Cipher;[B)V

    .line 24
    return-object v2

    .line 25
    :catch_18
    move-exception v0

    .line 26
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 28
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    throw v1

    .line 32
    :catch_1f
    new-instance v1, Ljava/lang/RuntimeException;

    .line 34
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v1

    .line 38
    :catch_25
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v1
.end method
