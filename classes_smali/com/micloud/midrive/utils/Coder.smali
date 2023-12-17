.class public Lcom/micloud/midrive/utils/Coder;
.super Ljava/lang/Object;
.source "Coder.java"


# static fields
.field private static final STRING_ENCODE_NOISE_SUFFIX:Ljava/lang/String; = "CLOUD-BACKUP@"

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    const-string v0, "0"

    .line 3
    const-string v1, "1"

    .line 5
    const-string v2, "2"

    .line 7
    const-string v3, "3"

    .line 9
    const-string v4, "4"

    .line 11
    const-string v5, "5"

    .line 13
    const-string v6, "6"

    .line 15
    const-string v7, "7"

    .line 17
    const-string v8, "8"

    .line 19
    const-string v9, "9"

    .line 21
    const-string v10, "a"

    .line 23
    const-string v11, "b"

    .line 25
    const-string v12, "c"

    .line 27
    const-string v13, "d"

    .line 29
    const-string v14, "e"

    .line 31
    const-string v15, "f"

    .line 33
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/micloud/midrive/utils/Coder;->hexDigits:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "private constructor of Coder"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 1
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteArrayToString([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2
    array-length v0, p0

    if-nez v0, :cond_6

    const-string p0, ""

    return-object p0

    .line 3
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_20

    if-lez v1, :cond_14

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_14
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/micloud/midrive/utils/Coder;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 7
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .registers 4

    .line 1
    if-gez p0, :cond_4

    .line 3
    add-int/lit16 p0, p0, 0x100

    .line 5
    :cond_4
    div-int/lit8 v0, p0, 0x10

    .line 7
    rem-int/lit8 p0, p0, 0x10

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    sget-object v2, Lcom/micloud/midrive/utils/Coder;->hexDigits:[Ljava/lang/String;

    .line 16
    aget-object v0, v2, v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    aget-object p0, v2, p0

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static encodeFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/Coder;->encodeFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_15

    .line 4
    invoke-virtual {p1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    move v1, v2

    goto :goto_a

    :cond_15
    if-eqz v1, :cond_1d

    const-string p1, ""
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_19} :catch_2b
    .catchall {:try_start_0 .. :try_end_19} :catchall_29

    .line 5
    invoke-static {p0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    .line 6
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/utils/Coder;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_25} :catch_2b
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 7
    invoke-static {p0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_29
    move-exception p1

    goto :goto_32

    :catch_2b
    move-exception p1

    .line 8
    :try_start_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 9
    :goto_32
    invoke-static {p0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 10
    throw p1
.end method

.method public static encodeMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    const-string v0, "MD5"

    .line 4
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    const-string v0, "MD5"

    .line 5
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeMD5(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeMD5(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const-string v0, "MD5"

    if-eqz p1, :cond_1a

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLOUD-BACKUP@"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1a
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeSHA1(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA1"

    .line 2
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeSHA1(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA1"

    .line 3
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA1"

    .line 1
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/Coder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string p0, ""

    .line 9
    return-object p0

    .line 10
    :cond_9
    :try_start_9
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 13
    move-result-object p1
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_d} :catch_1d

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 21
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/micloud/midrive/utils/Coder;->byteArrayToString([B)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :catch_1d
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw p1
.end method
