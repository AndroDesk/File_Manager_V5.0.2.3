.class public Lmiuix/security/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field public static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGORITHM_SHA_1:Ljava/lang/String; = "SHA-1"

.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static get(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 5

    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_18

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 6
    :goto_8
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_8

    .line 8
    :cond_13
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_18
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NoSuchAlgorithmException"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/lang/String;)[B
    .registers 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lmiuix/security/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static get([BLjava/lang/String;)[B
    .registers 3

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    :try_start_5
    invoke-static {v0, p1}, Lmiuix/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "IO exception happend in ByteArrayInputStream"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
