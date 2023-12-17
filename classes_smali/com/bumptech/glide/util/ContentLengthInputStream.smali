.class public final Lcom/bumptech/glide/util/ContentLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentLengthStream"

.field private static final UNKNOWN:I


# instance fields
.field private final contentLength:J

.field private readSoFar:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/util/ContentLengthInputStream;->UNKNOWN:I

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    return-void
.end method

.method private checkReadSoFarOrThrow(I)I
    .registers 6

    if-ltz p1, :cond_8

    iget v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    goto :goto_14

    :cond_8
    iget-wide v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    iget v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_15

    :goto_14
    return p1

    :cond_15
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to read all expected data, expected: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", but read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/util/ContentLengthInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/util/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static obtain(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    invoke-static {p1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->parseContentLength(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static parseContentLength(Ljava/lang/String;)I
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_2a

    :catch_b
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "ContentLengthStream"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to parse content length header: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    const/4 p0, -0x1

    :goto_2a
    return p0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->contentLength:J

    iget v2, p0, Lcom/bumptech/glide/util/ContentLengthInputStream;->readSoFar:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    :goto_a
    invoke-direct {p0, v1}, Lcom/bumptech/glide/util/ContentLengthInputStream;->checkReadSoFarOrThrow(I)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/util/ContentLengthInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .registers 4

    monitor-enter p0

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
