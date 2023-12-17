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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;Ljavax/crypto/SecretKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->installedMasterKeyInfo:Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    iput-object p2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->mKey:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public getCipherForDecryption([B)Ljavax/crypto/Cipher;
    .registers 6

    const-string v0, "AES/CBC/PKCS7Padding not supported"

    :try_start_2
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_28
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_22

    const/4 v1, 0x2

    :try_start_9
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->mKey:Ljavax/crypto/SecretKey;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_13} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1b
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_22
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_28
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCipherForEncryption()Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;
    .registers 4

    const-string v0, "AES/CBC/PKCS7Padding not supported"

    :try_start_2
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_1f

    const/4 v1, 0x1

    :try_start_9
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;->mKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_e
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_e} :catch_18

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    new-instance v2, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;-><init>(Ljavax/crypto/Cipher;[B)V

    return-object v2

    :catch_18
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_25
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
