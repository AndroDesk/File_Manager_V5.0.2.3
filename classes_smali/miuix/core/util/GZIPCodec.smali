.class public final Lmiuix/core/util/GZIPCodec;
.super Ljava/lang/Object;
.source "GZIPCodec.java"


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

.method public static decode([B)[B
    .registers 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6
    const/4 p0, 0x0

    .line 7
    :try_start_6
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    .line 9
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_15

    .line 12
    :try_start_b
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    .line 15
    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 16
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 19
    return-object p0

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    goto :goto_18

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    move-object v1, p0

    .line 24
    move-object p0, v0

    .line 25
    :goto_18
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 28
    throw p0
.end method

.method public static encode([B)[B
    .registers 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 9
    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_19

    .line 12
    :try_start_b
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_16

    .line 15
    invoke-static {v2}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :catchall_16
    move-exception p0

    .line 24
    move-object v1, v2

    .line 25
    goto :goto_1a

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    :goto_1a
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 30
    throw p0
.end method

.method public static getID()Ljava/lang/String;
    .registers 1

    const-string v0, "gzip"

    return-object v0
.end method
