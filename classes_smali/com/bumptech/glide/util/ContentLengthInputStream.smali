.class public final Lcom/bumptech/glide/util/ContentLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentLengthStream"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private final contentLength:J

.field private readSoFar:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    iput-wide p2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    .line 6
    return-void
.end method

.method private checkReadSoFarOrThrow(I)I
    .registers 6

    .line 1
    if-ltz p1, :cond_8

    .line 3
    iget v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    .line 5
    add-int/2addr v0, p1

    .line 6
    iput v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    .line 8
    goto :goto_14

    .line 9
    :cond_8
    iget-wide v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    .line 11
    iget v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    .line 13
    int-to-long v2, v2

    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0x0

    .line 17
    cmp-long v0, v0, v2

    .line 19
    if-gtz v0, :cond_15

    .line 21
    :goto_14
    return p1

    .line 22
    :cond_15
    new-instance p1, Ljava/io/IOException;

    .line 24
    const-string v0, "Failed to read all expected data, expected: "

    .line 26
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v0

    .line 30
    iget-wide v1, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", but read: "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v1, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method

.method public static obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .registers 4

    .line 2
    new-instance v0, Lcom/bumptech/glide/util/ContentLengthInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/util/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static obtain(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->parseContentLength(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static parseContentLength(Ljava/lang/String;)I
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_29

    .line 7
    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    move-result p0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    .line 11
    goto :goto_2a

    .line 12
    :catch_b
    move-exception v0

    .line 13
    const/4 v1, 0x3

    .line 14
    const-string v2, "ContentLengthStream"

    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_29

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v3, "failed to parse content length header: "

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v2, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_29
    const/4 p0, -0x1

    .line 43
    :goto_2a
    return p0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    .line 4
    iget v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    .line 6
    int-to-long v2, v2

    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 10
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 13
    move-result v2

    .line 14
    int-to-long v2, v2

    .line 15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 18
    move-result-wide v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    .line 19
    long-to-int v0, v0

    .line 20
    monitor-exit p0

    .line 21
    return v0

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public declared-synchronized read()I
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    .line 2
    :goto_a
    invoke-direct {p0, v1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->checkReadSoFarOrThrow(I)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 3
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .registers 4

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/util/ContentLengthInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .registers 4

    monitor-enter p0

    .line 5
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->checkReadSoFarOrThrow(I)I

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
