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

    .line 1
    const-string v0, "\u0000\u0000\u0000\u0000\u0000\u0000xiaomi.com"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmiui/cloud/common/EncryptLogSender;->DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

    .line 9
    return-void
.end method

.method public constructor <init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 1
    const-string v0, "Should never happen. "

    .line 3
    const-string v1, "The input publicKey is not valid. "

    .line 5
    const-string v2, "RSA"

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 12
    iput-object p3, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIv:Z

    .line 16
    new-instance p1, Ljava/security/SecureRandom;

    .line 18
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 21
    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIvGenerator:Ljava/security/SecureRandom;

    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-static {p2, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 27
    move-result-object p2

    .line 28
    :try_start_1b
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 31
    move-result-object p3
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_1f} :catch_a0

    .line 32
    :try_start_1f
    new-instance p4, Ljava/security/spec/X509EncodedKeySpec;

    .line 34
    invoke-direct {p4, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 37
    invoke-virtual {p3, p4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p3
    :try_end_30
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1f .. :try_end_30} :catch_99

    .line 49
    const/4 p4, 0x1

    .line 50
    if-eqz p3, :cond_89

    .line 52
    :try_start_33
    const-string p1, "AES"

    .line 54
    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 57
    move-result-object p1
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_39} :catch_82

    .line 58
    const/16 p3, 0x100

    .line 60
    invoke-virtual {p1, p3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 63
    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 69
    :try_start_44
    const-string p1, "RSA/ECB/PKCS1Padding"

    .line 71
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_4d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_4d} :catch_7b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_44 .. :try_end_4d} :catch_74
    .catch Ljava/security/InvalidKeyException; {:try_start_44 .. :try_end_4d} :catch_6d

    .line 78
    :try_start_4d
    iget-object p2, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 80
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 87
    move-result-object p1

    .line 88
    const/4 p2, 0x2

    .line 89
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;
    :try_end_5e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4d .. :try_end_5e} :catch_66
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4d .. :try_end_5e} :catch_5f

    .line 95
    return-void

    .line 96
    :catch_5f
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/RuntimeException;

    .line 99
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    throw p2

    .line 103
    :catch_66
    move-exception p1

    .line 104
    new-instance p2, Ljava/lang/RuntimeException;

    .line 106
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    throw p2

    .line 110
    :catch_6d
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 113
    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    throw p2

    .line 117
    :catch_74
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/RuntimeException;

    .line 120
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    throw p2

    .line 124
    :catch_7b
    move-exception p1

    .line 125
    new-instance p2, Ljava/lang/RuntimeException;

    .line 127
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    throw p2

    .line 131
    :catch_82
    move-exception p1

    .line 132
    new-instance p2, Ljava/lang/RuntimeException;

    .line 134
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 137
    throw p2

    .line 138
    :cond_89
    :try_start_89
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 140
    const-string p3, "The input publicKey is not a %s public key. "

    .line 142
    new-array p4, p4, [Ljava/lang/Object;

    .line 144
    aput-object v2, p4, p1

    .line 146
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p2
    :try_end_99
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_89 .. :try_end_99} :catch_99

    .line 154
    :catch_99
    move-exception p1

    .line 155
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 157
    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    throw p2

    .line 161
    :catch_a0
    move-exception p1

    .line 162
    new-instance p2, Ljava/lang/RuntimeException;

    .line 164
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 167
    throw p2
.end method

.method private encryptString(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "Should never happen. "

    .line 3
    :try_start_2
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    move-result-object v1
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8} :catch_44
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8} :catch_3d

    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_9
    iget-object v3, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 12
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    invoke-direct {v4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 17
    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_13} :catch_36
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_13} :catch_2f

    .line 20
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 32
    move-result-object p1
    :try_end_20
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_20} :catch_28
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_20} :catch_21

    .line 33
    return-object p1

    .line 34
    :catch_21
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    throw p2

    .line 41
    :catch_28
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/RuntimeException;

    .line 44
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    throw p2

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/RuntimeException;

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    throw p2

    .line 55
    :catch_36
    move-exception p1

    .line 56
    new-instance p2, Ljava/lang/RuntimeException;

    .line 58
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    throw p2

    .line 62
    :catch_3d
    move-exception p1

    .line 63
    new-instance p2, Ljava/lang/RuntimeException;

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    throw p2

    .line 69
    :catch_44
    move-exception p1

    .line 70
    new-instance p2, Ljava/lang/RuntimeException;

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    throw p2
.end method

.method private generateRandomIv()[B
    .registers 3

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [B

    .line 5
    iget-object v1, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIvGenerator:Ljava/security/SecureRandom;

    .line 7
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    return-object v0
.end method

.method public static getWithDefaultPublicKey(Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/EncryptLogSender;
    .registers 5

    .line 1
    new-instance v0, Lmiui/cloud/common/EncryptLogSender;

    .line 3
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCV2gFH5NQcd1hRT5vRTGweHQZhYEtQgF821nVymHNaeSVSTEecTPpAP71djJlR7Fv9Hfaiy3ubkbre0VwFm7gbWkl4RXrEnTcOClXWUSb+lHfpPK0TmVoooYzL9ySVls8Y9U9PfF1RhgaEU0zjyewdYfGolgS/s9VK/TuLCP+YQwIDAQAB"

    .line 5
    const-string v2, ""

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, p0, v1, v2, v3}, Lmiui/cloud/common/EncryptLogSender;-><init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    return-object v0
.end method


# virtual methods
.method public sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_2
    iget-boolean v2, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIv:Z

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    if-eqz v2, :cond_2a

    .line 9
    invoke-direct {p0}, Lmiui/cloud/common/EncryptLogSender;->generateRandomIv()[B

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    const-string v6, "#&^%s@%s!%s!%s^&#"

    .line 19
    const/4 v7, 0x4

    .line 20
    new-array v7, v7, [Ljava/lang/Object;

    .line 22
    iget-object v8, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;

    .line 24
    aput-object v8, v7, v0

    .line 26
    aput-object v5, v7, v1

    .line 28
    iget-object v5, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    .line 30
    aput-object v5, v7, v4

    .line 32
    invoke-direct {p0, p3, v2}, Lmiui/cloud/common/EncryptLogSender;->encryptString(Ljava/lang/String;[B)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    aput-object v2, v7, v3

    .line 38
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    goto :goto_5c

    .line 43
    :cond_2a
    sget-object v2, Lmiui/cloud/common/EncryptLogSender;->DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

    .line 45
    const-string v5, "#&^%s!%s!%s^&#"

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    iget-object v6, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;

    .line 51
    aput-object v6, v3, v0

    .line 53
    iget-object v6, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    .line 55
    aput-object v6, v3, v1

    .line 57
    invoke-direct {p0, p3, v2}, Lmiui/cloud/common/EncryptLogSender;->encryptString(Ljava/lang/String;[B)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    aput-object v2, v3, v4

    .line 63
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43

    .line 67
    goto :goto_5c

    .line 68
    :catch_43
    move-exception v2

    .line 69
    iget-object v3, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 71
    const/4 v4, 0x6

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    aput-object v2, v1, v0

    .line 84
    const-string v0, "Failed to encrypt the message: %s. "

    .line 86
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v3, v4, v5, v0}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_5c
    iget-object v0, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
