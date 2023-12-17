.class public Lcom/xiaomi/micloudsdk/utils/Coder;
.super Ljava/lang/Object;
.source "Coder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountCoder"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce(J)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-instance v1, Ljava/io/DataOutputStream;

    .line 8
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 11
    new-instance v2, Ljava/util/Random;

    .line 13
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 16
    :try_start_f
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 23
    const-wide/32 v2, 0xea60

    .line 26
    div-long/2addr p0, v2

    .line 27
    long-to-int p0, p0

    .line 28
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_22

    .line 34
    goto :goto_26

    .line 35
    :catch_22
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :goto_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 42
    move-result-object p0

    .line 43
    const/4 p1, 0x2

    .line 44
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
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
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8a

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    if-eqz p0, :cond_14

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_14
    if-eqz p1, :cond_21

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_21
    const/4 p0, 0x0

    .line 35
    const/4 p1, 0x1

    .line 36
    if-eqz p2, :cond_5d

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_5d

    .line 44
    new-instance v1, Ljava/util/TreeMap;

    .line 46
    invoke-direct {v1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 49
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p2

    .line 57
    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_5d

    .line 63
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    const/4 v2, 0x2

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    aput-object v3, v2, p0

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    aput-object v1, v2, p1

    .line 84
    const-string v1, "%s=%s"

    .line 86
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_38

    .line 94
    :cond_5d
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p3

    .line 106
    :goto_69
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_81

    .line 112
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 118
    if-nez p1, :cond_7c

    .line 120
    const/16 p1, 0x26

    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :cond_7c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    move p1, p0

    .line 129
    goto :goto_69

    .line 130
    :cond_81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/Coder;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_8a
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 141
    const-string p1, "security is not nullable"

    .line 143
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0
.end method

.method public static getDataMd5Digest([B)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_21

    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_7

    .line 7
    goto :goto_21

    .line 8
    :cond_7
    :try_start_7
    const-string v1, "MD5"

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
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/Coder;->getHexString([B)Ljava/lang/String;

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
    const-string v1, "AccountCoder"

    .line 29
    const-string v2, "getDataMd5Digest"

    .line 31
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_21
    :goto_21
    return-object v0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_36

    .line 10
    aget-byte v2, p0, v1

    .line 12
    and-int/lit16 v2, v2, 0xf0

    .line 14
    shr-int/lit8 v2, v2, 0x4

    .line 16
    const/16 v3, 0x9

    .line 18
    if-ltz v2, :cond_18

    .line 20
    if-gt v2, v3, :cond_18

    .line 22
    add-int/lit8 v2, v2, 0x30

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    add-int/lit8 v2, v2, 0x61

    .line 27
    add-int/lit8 v2, v2, -0xa

    .line 29
    :goto_1c
    int-to-char v2, v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    aget-byte v2, p0, v1

    .line 35
    and-int/lit8 v2, v2, 0xf

    .line 37
    if-ltz v2, :cond_2b

    .line 39
    if-gt v2, v3, :cond_2b

    .line 41
    add-int/lit8 v2, v2, 0x30

    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    add-int/lit8 v2, v2, 0x61

    .line 46
    add-int/lit8 v2, v2, -0xa

    .line 48
    :goto_2f
    int-to-char v2, v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_6

    .line 55
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/Coder;->getDataMd5Digest([B)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static hash4SHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/Coder;->hash4SHA1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hash4SHA1(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :try_start_4
    const-string v0, "SHA1"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_18} :catch_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to SHA1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
