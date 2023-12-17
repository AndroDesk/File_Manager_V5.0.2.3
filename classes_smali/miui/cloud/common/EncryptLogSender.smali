.class public Lmiui/cloud/common/EncryptLogSender;
.super Ljava/lang/Object;
.source "EncryptLogSender.java"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# static fields
.field private static final ASYM_ENCRYPT_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final ASYM_ENCRYPT_ALGORITHM_USAGE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final DEFAULT_ASYM_ENCRYPT_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCV2gFH5NQcd1hRT5vRTGweHQZhYEtQgF821nVymHNaeSVSTEecTPpAP71djJlR7Fv9Hfaiy3ubkbre0VwFm7gbWkl4RXrEnTcOClXWUSb+lHfpPK0TmVoooYzL9ySVls8Y9U9PfF1RhgaEU0zjyewdYfGolgS/s9VK/TuLCP+YQwIDAQAB"

.field private static final DEFAULT_ASYM_ENCRYPT_PUBLIC_KEY_LABEL:Ljava/lang/String; = ""

.field private static final DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

.field private static final SYM_ENCRYPT_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final SYM_ENCRYPT_ALGORITHM_IV_LEN:I = 0x10

.field private static final SYM_ENCRYPT_ALGORITHM_USAGE:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final SYM_ENCRYPT_KEY_LEN_IN_BITS:I = 0x100


# instance fields
.field private mEncryptedSecrectKey:Ljava/lang/String;

.field private mKeyLabel:Ljava/lang/String;

.field private mRandomIv:Z

.field private mRandomIvGenerator:Ljava/security/SecureRandom;

.field private mSecretKey:Ljavax/crypto/SecretKey;

.field private mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\u0000\u0000\u0000\u0000\u0000\u0000xiaomi.com"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/cloud/common/EncryptLogSender;->DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    const-string v0, "Should never happen. "

    const-string v1, "The input publicKey is not valid. "

    const-string v2, "RSA"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    iput-object p3, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    iput-boolean p4, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIv:Z

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIvGenerator:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    :try_start_1b
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p3
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_1f} :catch_a0

    :try_start_1f
    new-instance p4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p4, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p3, p4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_30
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1f .. :try_end_30} :catch_99

    const/4 p4, 0x1

    if-eqz p3, :cond_89

    :try_start_33
    const-string p1, "AES"

    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_39} :catch_82

    const/16 p3, 0x100

    invoke-virtual {p1, p3}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    :try_start_44
    const-string p1, "RSA/ECB/PKCS1Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p1, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_4d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_4d} :catch_7b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_44 .. :try_end_4d} :catch_74
    .catch Ljava/security/InvalidKeyException; {:try_start_44 .. :try_end_4d} :catch_6d

    :try_start_4d
    iget-object p2, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;
    :try_end_5e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4d .. :try_end_5e} :catch_66
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4d .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_66
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6d
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_74
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7b
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_82
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_89
    :try_start_89
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "The input publicKey is not a %s public key. "

    new-array p4, p4, [Ljava/lang/Object;

    aput-object v2, p4, p1

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_99
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_89 .. :try_end_99} :catch_99

    :catch_99
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_a0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private encryptString(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8

    const-string v0, "Should never happen. "

    :try_start_2
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_44
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_3d

    const/4 v2, 0x1

    :try_start_9
    iget-object v3, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_13} :catch_36
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_13} :catch_2f

    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_20} :catch_28
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_28
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2f
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_36
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3d
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_44
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private generateRandomIv()[B
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIvGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public static getWithDefaultPublicKey(Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/EncryptLogSender;
    .registers 5

    new-instance v0, Lmiui/cloud/common/EncryptLogSender;

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCV2gFH5NQcd1hRT5vRTGweHQZhYEtQgF821nVymHNaeSVSTEecTPpAP71djJlR7Fv9Hfaiy3ubkbre0VwFm7gbWkl4RXrEnTcOClXWUSb+lHfpPK0TmVoooYzL9ySVls8Y9U9PfF1RhgaEU0zjyewdYfGolgS/s9VK/TuLCP+YQwIDAQAB"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lmiui/cloud/common/EncryptLogSender;-><init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-boolean v2, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIv:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_2a

    invoke-direct {p0}, Lmiui/cloud/common/EncryptLogSender;->generateRandomIv()[B

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#&^%s@%s!%s!%s^&#"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;

    aput-object v8, v7, v0

    aput-object v5, v7, v1

    iget-object v5, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    aput-object v5, v7, v4

    invoke-direct {p0, p3, v2}, Lmiui/cloud/common/EncryptLogSender;->encryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_5c

    :cond_2a
    sget-object v2, Lmiui/cloud/common/EncryptLogSender;->DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

    const-string v5, "#&^%s!%s!%s^&#"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;

    aput-object v6, v3, v0

    iget-object v6, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    aput-object v6, v3, v1

    invoke-direct {p0, p3, v2}, Lmiui/cloud/common/EncryptLogSender;->encryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43

    goto :goto_5c

    :catch_43
    move-exception v2

    iget-object v3, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    const/4 v4, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "Failed to encrypt the message: %s. "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v5, v0}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5c
    iget-object v0, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    invoke-interface {v0, p1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
