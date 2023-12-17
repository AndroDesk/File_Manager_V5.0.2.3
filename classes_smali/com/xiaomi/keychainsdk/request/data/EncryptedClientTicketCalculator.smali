.class public Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;
.super Ljava/lang/Object;
.source "EncryptedClientTicketCalculator.java"


# instance fields
.field private final mHSid:S

.field private final mHUser:J

.field private final mHsmAAD:[B

.field private final mHsmZone:I

.field private mNewPassword:Ljava/lang/String;

.field private final mNonce:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private final mSecureLevel:I

.field private final mTPub:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

.field private final mTag:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHSid:S

    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHUser:J

    iput p4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mSecureLevel:I

    iput-short p5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTag:S

    iput-object p6, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mPassword:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTPub:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    iput p8, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmZone:I

    iput-object p9, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNonce:Ljava/lang/String;

    iput-object p10, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmAAD:[B

    return-void
.end method

.method private calculateStrongPasswordHashBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v1, "Encrypt"

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    move-result-object v1

    const/16 v2, 0x3e8

    const/16 v3, 0x60

    invoke-direct {v0, p1, v1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_13
    const-string p1, "PBKDF2WithHmacSHA1"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_25} :catch_2e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_13 .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PBKDF2WithHmacSHA1 error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PBKDF2WithHmacSHA1 not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEncryptionUnit()[B
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculateStrongPasswordHashBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNewPassword:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-direct {p0, v1}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculateStrongPasswordHashBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const/16 v2, 0x8

    :try_start_12
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHSid:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHUser:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mSecureLevel:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-short v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTag:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTPub:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    invoke-virtual {v4}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->getEncoded()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNonce:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    if-eqz v1, :cond_4e

    move-object v4, v1

    goto :goto_50

    :cond_4e
    const-string v4, ""

    :goto_50
    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->mixData([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_56
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12 .. :try_end_56} :catch_b0

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    :try_start_62
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "hsid"

    iget-short v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHSid:S

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "userId"

    iget-wide v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHUser:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "clientSecureLevel"

    iget v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mSecureLevel:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "userpasscodeKey"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tag"

    iget-short v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTag:S

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "nonce"

    iget-object v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNonce:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "clientSign"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_9f

    const-string v0, "newUserpasscodeKey"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_9f} :catch_a8

    :cond_9f
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0

    :catch_a8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "never reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_b0
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public calculate(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 9

    const-string v0, "AES/GCM/NoPadding or RSA/ECB/OAEPPadding not supported"

    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->getEncryptionUnit()[B

    move-result-object v1

    :try_start_6
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const-string v3, "RSA/ECB/OAEPPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_12} :catch_a6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_12} :catch_a0

    :try_start_12
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    const/16 v4, 0xc

    new-array v4, v4, [B

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_2d} :catch_98

    :try_start_2d
    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v6, 0x80

    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmAAD:[B

    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0, v6, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_2d .. :try_end_4c} :catch_91
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2d .. :try_end_4c} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2d .. :try_end_4c} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2d .. :try_end_4c} :catch_7a

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmZone:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    const/4 p1, 0x2

    invoke-static {v4}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    const/4 p1, 0x3

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmAAD:[B

    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->joinFields([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_7a
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_81
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_88
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_91
    move-exception p1

    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_98
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "AES not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_a0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_a6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNewPassword(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNewPassword:Ljava/lang/String;

    return-object p0
.end method
