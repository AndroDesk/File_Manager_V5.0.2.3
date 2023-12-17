.class public Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;
.super Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;
.source "CloudAESWithIVCoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudAESWithIVCoder"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static encryptHMACSha1([B[B)[B
    .registers 6

    .line 1
    const-string v0, "encryptHMACSha1 error"

    .line 3
    const-string v1, "CloudAESWithIVCoder"

    .line 5
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 7
    const-string v3, "HmacSHA1"

    .line 9
    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    :try_start_b
    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 19
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 22
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 25
    move-result-object p0
    :try_end_19
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_19} :catch_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_19} :catch_1a

    .line 26
    return-object p0

    .line 27
    :catch_1a
    move-exception p0

    .line 28
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_23

    .line 32
    :catch_1f
    move-exception p0

    .line 33
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_23
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "CloudAESWithIVCoder"

    .line 3
    const-string v1, "decrypt error"

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->checkThreadIdThrow()V

    .line 8
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    .line 10
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    const-string p1, "D"

    .line 15
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v3, "S"

    .line 21
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, ":"

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    array-length v3, v2

    .line 32
    const/4 v4, 0x2

    .line 33
    if-ne v3, v4, :cond_7e

    .line 35
    const/4 v3, 0x0

    .line 36
    aget-object v5, v2, v3

    .line 38
    const/4 v6, 0x1

    .line 39
    aget-object v2, v2, v6

    .line 41
    const-string v7, "%s:%s"

    .line 43
    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    aput-object v5, v4, v3

    .line 47
    new-instance v5, Ljava/lang/String;

    .line 49
    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 52
    aput-object v5, v4, v6

    .line 54
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    const-string v5, "UTF-8"

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 63
    move-result-object v4

    .line 64
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->aesKey:Ljava/lang/String;

    .line 66
    invoke-static {v5, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 69
    move-result-object v3

    .line 70
    invoke-static {v4, v3}, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;->encryptHMACSha1([B[B)[B

    .line 73
    move-result-object v3

    .line 74
    const/16 v4, 0xb

    .line 76
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5a

    .line 86
    invoke-super {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_5a
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v5, "server hash "

    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, " and local hash "

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, " dismatch"

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-direct {p1, v2}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p1

    .line 127
    :cond_7e
    new-instance p1, Ljava/lang/SecurityException;

    .line 129
    const-string v2, "not 2 columns in security info"

    .line 131
    invoke-direct {p1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    throw p1
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_86} :catch_a4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_86} :catch_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_86} :catch_90
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_86} :catch_86

    .line 135
    :catch_86
    move-exception p1

    .line 136
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 141
    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    throw v0

    .line 145
    :catch_90
    move-exception p1

    .line 146
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 151
    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    throw v0

    .line 155
    :catch_9a
    move-exception p1

    .line 156
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 161
    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    throw v0

    .line 165
    :catch_a4
    move-exception p1

    .line 166
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CipherException;

    .line 171
    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    throw v0
.end method
