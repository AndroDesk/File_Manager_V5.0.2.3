.class public final Lm1/a;
.super Ljava/io/InputStream;
.source "BufferInputStream.java"


# static fields
.field public static final d:[B


# instance fields
.field public a:Lm1/p;

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lm1/a;->d:[B

    return-void
.end method

.method public constructor <init>(Lm1/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lm1/a;->b:I

    iput-object p1, p0, Lm1/a;->a:Lm1/p;

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 5

    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    if-eqz v0, :cond_27

    iget v1, p0, Lm1/a;->c:I

    monitor-enter v0

    :try_start_7
    iget-object v2, v0, Lm1/p;->a:Ljava/io/InputStream;

    if-eqz v2, :cond_1c

    iget-boolean v3, v0, Lm1/p;->c:Z

    if-nez v3, :cond_17

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    iget v3, v0, Lm1/p;->b:I

    add-int/2addr v2, v3

    goto :goto_19

    :cond_17
    iget v2, v0, Lm1/p;->b:I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    :goto_19
    sub-int/2addr v2, v1

    monitor-exit v0

    return v2

    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RandomInputBuffer has been closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lm1/a;->a:Lm1/p;

    return-void
.end method

.method public final declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget p1, p0, Lm1/a;->c:I

    iput p1, p0, Lm1/a;->b:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    if-eqz v0, :cond_1e

    iget v1, p0, Lm1/a;->c:I

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lm1/p;->c(I[BII)I

    move-result v0

    if-lez v0, :cond_14

    aget-byte v0, v3, v4

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    if-ltz v0, :cond_1c

    iget v1, p0, Lm1/a;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lm1/a;->c:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    :cond_1c
    monitor-exit p0

    return v0

    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    if-eqz v0, :cond_14

    iget v1, p0, Lm1/a;->c:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lm1/p;->c(I[BII)I

    move-result p1

    if-lez p1, :cond_12

    iget p2, p0, Lm1/a;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lm1/a;->c:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    :cond_12
    monitor-exit p0

    return p1

    :cond_14
    :try_start_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BufferedInputStream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    iget v1, p0, Lm1/a;->b:I

    if-eq v0, v1, :cond_e

    iput v1, p0, Lm1/a;->c:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1e

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .registers 12

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    const-wide/16 p1, 0x0

    monitor-exit p0

    return-wide p1

    :cond_b
    :try_start_b
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    if-eqz v0, :cond_38

    iget v1, p0, Lm1/a;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    const/4 p1, 0x0

    move p2, p1

    :goto_15
    iget v3, p0, Lm1/a;->c:I

    int-to-long v4, v3

    cmp-long v6, v1, v4

    if-lez v6, :cond_35

    sget-object v6, Lm1/a;->d:[B

    const/16 v7, 0x2000

    int-to-long v7, v7

    sub-long v4, v1, v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v3, v6, p1, v4}, Lm1/p;->c(I[BII)I

    move-result v3

    if-ltz v3, :cond_35

    iget v4, p0, Lm1/a;->c:I

    add-int/2addr v4, v3

    iput v4, p0, Lm1/a;->c:I
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_40

    add-int/2addr p2, v3

    goto :goto_15

    :cond_35
    int-to-long p1, p2

    monitor-exit p0

    return-wide p1

    :cond_38
    :try_start_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BufferedInputStream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method
