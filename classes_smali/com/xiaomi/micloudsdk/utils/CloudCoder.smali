.class public Lcom/xiaomi/micloudsdk/utils/CloudCoder;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/CloudCoder$CIPHER_MODE;
    }
.end annotation


# static fields
.field public static final BASE64_FLAG_FOR_APACHE_URL_SAFE_STRING:I = 0xb

.field private static final RC4_ALGORITHM_NAME:Ljava/lang/String; = "RC4"

.field private static sServerDateOffset:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->decodeString(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeString(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p2, :cond_4

    const-string p2, "UTF-8"

    .line 3
    :cond_4
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_17

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :catch_17
    move-exception p0

    .line 5
    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newMD5AESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    .line 5
    move-result-object p0

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->decodeString(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static encodeStream(Ljava/lang/String;[B)[B
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->randomRc4Key128(Ljava/lang/String;)[B

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newRC4Cipher([BI)Ljavax/crypto/Cipher;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 13
    move-result-object p0

    .line 14
    array-length p1, p1

    .line 15
    array-length v0, p0

    .line 16
    if-ne p1, v0, :cond_12

    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance p0, Ljava/io/IOException;

    .line 21
    const-string p1, "The encoded data length is not the same with original data"

    .line 23
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    .line 27
    :catchall_1a
    move-exception p0

    .line 28
    throw p0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, ""

    return-object p0

    .line 2
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p2, :cond_4

    const-string p2, "UTF-8"

    .line 3
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newMD5AESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    .line 5
    move-result-object p0

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static encodeUpperHex([B)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v3, v1, :cond_21

    .line 11
    aget-byte v4, p0, v3

    .line 13
    const/4 v5, 0x1

    .line 14
    new-array v5, v5, [Ljava/lang/Object;

    .line 16
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 19
    move-result-object v4

    .line 20
    aput-object v4, v5, v2

    .line 22
    const-string v4, "%02X"

    .line 24
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_8

    .line 34
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static generateNonce()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->sServerDateOffset:J

    add-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateNonce(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateNonce(J)Ljava/lang/String;
    .registers 2

    .line 3
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/Coder;->generateNonce(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generatePseudoDeviceId()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    const/16 v1, 0x8

    .line 8
    new-array v1, v1, [B

    .line 10
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 13
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeUpperHex([B)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/Coder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getDataMd5Digest([B)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/Coder;->getDataMd5Digest([B)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getDataSha1Digest([B)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1d

    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_7

    .line 7
    goto :goto_1d

    .line 8
    :cond_7
    :try_start_7
    const-string v1, "SHA1"

    .line 10
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getHexString([B)Ljava/lang/String;

    .line 24
    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    .line 25
    return-object p0

    .line 26
    :catch_19
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static getFileSha1Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "SHA1"

    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_3f
    .catchall {:try_start_1 .. :try_end_7} :catchall_3c

    .line 8
    :try_start_7
    new-instance v2, Ljava/io/File;

    .line 10
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/io/FileInputStream;

    .line 15
    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_39
    .catchall {:try_start_7 .. :try_end_11} :catchall_37

    .line 18
    const/16 v2, 0x1000

    .line 20
    :try_start_13
    new-array v2, v2, [B

    .line 22
    :goto_15
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 25
    move-result v3

    .line 26
    const/4 v4, -0x1

    .line 27
    if-eq v3, v4, :cond_21

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_35
    .catchall {:try_start_13 .. :try_end_20} :catchall_50

    .line 33
    goto :goto_15

    .line 34
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 37
    goto :goto_29

    .line 38
    :catch_25
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :goto_29
    if-eqz v1, :cond_34

    .line 44
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getHexString([B)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_34
    return-object v0

    .line 54
    :catch_35
    move-exception v2

    .line 55
    goto :goto_42

    .line 56
    :catchall_37
    move-object p0, v0

    .line 57
    goto :goto_50

    .line 58
    :catch_39
    move-exception v2

    .line 59
    move-object p0, v0

    .line 60
    goto :goto_42

    .line 61
    :catchall_3c
    move-object p0, v0

    .line 62
    move-object v1, p0

    .line 63
    goto :goto_50

    .line 64
    :catch_3f
    move-exception v2

    .line 65
    move-object p0, v0

    .line 66
    move-object v1, p0

    .line 67
    :goto_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    .line 70
    if-eqz p0, :cond_4f

    .line 72
    :try_start_47
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 75
    goto :goto_4f

    .line 76
    :catch_4b
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_4f
    :goto_4f
    return-object v0

    .line 81
    :catchall_50
    :goto_50
    if-eqz p0, :cond_5a

    .line 83
    :try_start_52
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 86
    goto :goto_5a

    .line 87
    :catch_56
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :cond_5a
    :goto_5a
    if-eqz v1, :cond_65

    .line 93
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getHexString([B)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_65
    return-object v0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/Coder;->getHexString([B)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/Coder;->getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static hash4SHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/Coder;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static hashAndJoin(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1a

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 2
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashAndJoin(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hashAndJoin(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_3a

    .line 3
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 4
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_31

    aget-object v4, p1, v3

    .line 6
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    goto :goto_2e

    :cond_1a
    if-lez p2, :cond_2b

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le p2, v5, :cond_23

    goto :goto_2b

    .line 8
    :cond_23
    invoke-virtual {v4, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 9
    :cond_2b
    :goto_2b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_31
    if-nez p0, :cond_35

    const-string p0, ""

    .line 10
    :cond_35
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x8

    .line 1
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/DeviceIdHasher;->hashDeviceInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hashDeviceInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/DeviceIdHasher;->hashDeviceInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 3

    const-string v0, "0102030405060708"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipherWithIV(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static newAESCipher([BI)Ljavax/crypto/Cipher;
    .registers 4

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    :try_start_7
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_e} :catch_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_e} :catch_14
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    :catch_14
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init AES cipher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newAESCipherWithIV(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    move-result-object p0

    .line 6
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    const-string v1, "AES"

    .line 10
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    :try_start_c
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 15
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 18
    move-result-object p0

    .line 19
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 21
    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 24
    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1a} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_1a} :catch_25
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_1a} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_1a} :catch_1b

    .line 27
    return-object p0

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    goto :goto_2e

    .line 33
    :catch_20
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    goto :goto_2e

    .line 38
    :catch_25
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    goto :goto_2e

    .line 43
    :catch_2a
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :goto_2e
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static newMD5AESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    goto :goto_8

    .line 8
    :catch_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-eqz v0, :cond_17

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipher([BI)Ljavax/crypto/Cipher;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string p1, "failed to init MD5"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method

.method public static newRC4Cipher([BI)Ljavax/crypto/Cipher;
    .registers 4

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 3
    const-string v1, "RC4"

    .line 5
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 8
    :try_start_7
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_e} :catch_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_e} :catch_14
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_e} :catch_f

    .line 15
    return-object p0

    .line 16
    :catch_f
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    goto :goto_1d

    .line 21
    :catch_14
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    goto :goto_1d

    .line 26
    :catch_19
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :goto_1d
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private static randomRc4Key128(Ljava/lang/String;)[B
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 18
    return-object p0

    .line 19
    :catch_12
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static setServerDateOffset(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->sServerDateOffset:J

    .line 3
    return-void
.end method
