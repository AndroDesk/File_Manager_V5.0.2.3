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
.method public constructor <init>(SJISLjava/lang/String;Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;ILjava/lang/String;[B)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-short p1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHSid:S

    .line 6
    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHUser:J

    .line 8
    iput p4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mSecureLevel:I

    .line 10
    iput-short p5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTag:S

    .line 12
    iput-object p6, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mPassword:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTPub:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 16
    iput p8, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmZone:I

    .line 18
    iput-object p9, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNonce:Ljava/lang/String;

    .line 20
    iput-object p10, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmAAD:[B

    .line 22
    return-void
.end method

.method private calculateStrongPasswordHashBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "Encrypt"

    .line 9
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x3e8

    .line 15
    const/16 v3, 0x60

    .line 17
    invoke-direct {v0, p1, v1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 20
    :try_start_13
    const-string p1, "PBKDF2WithHmacSHA1"

    .line 22
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 37
    move-result-object p1
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_25} :catch_2e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_13 .. :try_end_25} :catch_26

    .line 38
    return-object p1

    .line 39
    :catch_26
    new-instance p1, Ljava/lang/RuntimeException;

    .line 41
    const-string v0, "PBKDF2WithHmacSHA1 error"

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    :catch_2e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    const-string v0, "PBKDF2WithHmacSHA1 not supported"

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1
.end method

.method private getEncryptionUnit()[B
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mPassword:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculateStrongPasswordHashBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNewPassword:Ljava/lang/String;

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-direct {p0, v1}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->calculateStrongPasswordHashBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :goto_10
    const/16 v2, 0x8

    .line 19
    :try_start_12
    new-array v2, v2, [Ljava/lang/String;

    .line 21
    const/4 v3, 0x0

    .line 22
    iget-short v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHSid:S

    .line 24
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v2, v3

    .line 30
    const/4 v3, 0x1

    .line 31
    iget-wide v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHUser:J

    .line 33
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    aput-object v4, v2, v3

    .line 39
    const/4 v3, 0x2

    .line 40
    iget v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mSecureLevel:I

    .line 42
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    aput-object v4, v2, v3

    .line 48
    const/4 v3, 0x3

    .line 49
    aput-object v0, v2, v3

    .line 51
    const/4 v3, 0x4

    .line 52
    iget-short v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTag:S

    .line 54
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    aput-object v4, v2, v3

    .line 60
    const/4 v3, 0x5

    .line 61
    iget-object v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTPub:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 63
    invoke-virtual {v4}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->getEncoded()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    aput-object v4, v2, v3

    .line 69
    const/4 v3, 0x6

    .line 70
    iget-object v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNonce:Ljava/lang/String;

    .line 72
    aput-object v4, v2, v3

    .line 74
    const/4 v3, 0x7

    .line 75
    if-eqz v1, :cond_4e

    .line 77
    move-object v4, v1

    .line 78
    goto :goto_50

    .line 79
    :cond_4e
    const-string v4, ""

    .line 81
    :goto_50
    aput-object v4, v2, v3

    .line 83
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->mixData([Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v2
    :try_end_56
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12 .. :try_end_56} :catch_b0

    .line 87
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    :try_start_62
    new-instance v3, Lorg/json/JSONObject;

    .line 101
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 104
    const-string v4, "hsid"

    .line 106
    iget-short v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHSid:S

    .line 108
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v4, "userId"

    .line 113
    iget-wide v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHUser:J

    .line 115
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v4, "clientSecureLevel"

    .line 124
    iget v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mSecureLevel:I

    .line 126
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v4, "userpasscodeKey"

    .line 131
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "tag"

    .line 136
    iget-short v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mTag:S

    .line 138
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    const-string v0, "nonce"

    .line 143
    iget-object v4, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNonce:Ljava/lang/String;

    .line 145
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v0, "clientSign"

    .line 150
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    if-eqz v1, :cond_9f

    .line 155
    const-string v0, "newUserpasscodeKey"

    .line 157
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_9f} :catch_a8

    .line 160
    :cond_9f
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    .line 167
    move-result-object v0

    .line 168
    return-object v0

    .line 169
    :catch_a8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 171
    const-string v1, "never reach here"

    .line 173
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    throw v0

    .line 177
    :catch_b0
    move-exception v0

    .line 178
    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 180
    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 183
    throw v1
.end method


# virtual methods
.method public calculate(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "AES/GCM/NoPadding or RSA/ECB/OAEPPadding not supported"

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->getEncryptionUnit()[B

    .line 6
    move-result-object v1

    .line 7
    :try_start_6
    const-string v2, "AES/GCM/NoPadding"

    .line 9
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 12
    move-result-object v2

    .line 13
    const-string v3, "RSA/ECB/OAEPPadding"

    .line 15
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 18
    move-result-object v0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_12} :catch_a6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_12} :catch_a0

    .line 19
    :try_start_12
    const-string v3, "AES"

    .line 21
    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x100

    .line 27
    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 30
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 33
    move-result-object v3

    .line 34
    const/16 v4, 0xc

    .line 36
    new-array v4, v4, [B

    .line 38
    new-instance v5, Ljava/security/SecureRandom;

    .line 40
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 43
    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_2d} :catch_98

    .line 46
    :try_start_2d
    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    .line 48
    const/16 v6, 0x80

    .line 50
    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 53
    const/4 v6, 0x1

    .line 54
    invoke-virtual {v2, v6, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 57
    iget-object v5, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmAAD:[B

    .line 59
    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 62
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v6, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 69
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 76
    move-result-object p1
    :try_end_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_2d .. :try_end_4c} :catch_91
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2d .. :try_end_4c} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2d .. :try_end_4c} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2d .. :try_end_4c} :catch_7a

    .line 77
    const/4 v0, 0x5

    .line 78
    new-array v0, v0, [Ljava/lang/String;

    .line 80
    const/4 v2, 0x0

    .line 81
    iget v3, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmZone:I

    .line 83
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    aput-object v3, v0, v2

    .line 89
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    aput-object p1, v0, v6

    .line 95
    const/4 p1, 0x2

    .line 96
    invoke-static {v4}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    aput-object v2, v0, p1

    .line 102
    const/4 p1, 0x3

    .line 103
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    aput-object v1, v0, p1

    .line 109
    const/4 p1, 0x4

    .line 110
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mHsmAAD:[B

    .line 112
    invoke-static {v1}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    aput-object v1, v0, p1

    .line 118
    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->joinFields([Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :catch_7a
    move-exception p1

    .line 124
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 126
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 129
    throw v0

    .line 130
    :catch_81
    move-exception p1

    .line 131
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 133
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 136
    throw v0

    .line 137
    :catch_88
    move-exception p1

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 140
    const-string v1, "should not happen"

    .line 142
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    throw v0

    .line 146
    :catch_91
    move-exception p1

    .line 147
    new-instance v0, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    .line 149
    invoke-direct {v0, p1}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    .line 152
    throw v0

    .line 153
    :catch_98
    new-instance p1, Ljava/lang/RuntimeException;

    .line 155
    const-string v0, "AES not supported"

    .line 157
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p1

    .line 161
    :catch_a0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 163
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p1

    .line 167
    :catch_a6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 169
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p1
.end method

.method public setNewPassword(Ljava/lang/String;)Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/data/EncryptedClientTicketCalculator;->mNewPassword:Ljava/lang/String;

    .line 3
    return-object p0
.end method
