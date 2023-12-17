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

    .line 1
    const/16 v0, 0x2000

    .line 3
    new-array v0, v0, [B

    .line 5
    sput-object v0, Lm1/a;->d:[B

    .line 7
    return-void
.end method

.method public constructor <init>(Lm1/p;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lm1/a;->b:I

    .line 7
    iput-object p1, p0, Lm1/a;->a:Lm1/p;

    .line 9
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 5

    .line 1
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    .line 3
    if-eqz v0, :cond_27

    .line 5
    iget v1, p0, Lm1/a;->c:I

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v2, v0, Lm1/p;->a:Ljava/io/InputStream;

    .line 10
    if-eqz v2, :cond_1c

    .line 12
    iget-boolean v3, v0, Lm1/p;->c:Z

    .line 14
    if-nez v3, :cond_17

    .line 16
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 19
    move-result v2

    .line 20
    iget v3, v0, Lm1/p;->b:I

    .line 22
    add-int/2addr v2, v3

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iget v2, v0, Lm1/p;->b:I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    .line 26
    :goto_19
    sub-int/2addr v2, v1

    .line 27
    monitor-exit v0

    .line 28
    return v2

    .line 29
    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/io/IOException;

    .line 31
    const-string v2, "RandomInputBuffer has been closed."

    .line 33
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 37
    :catchall_24
    move-exception v1

    .line 38
    monitor-exit v0

    .line 39
    throw v1

    .line 40
    :cond_27
    new-instance v0, Ljava/io/IOException;

    .line 42
    const-string v1, "BufferedInputStream is closed"

    .line 44
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0
.end method

.method public final close()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm1/a;->a:Lm1/p;

    .line 4
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget p1, p0, Lm1/a;->c:I

    .line 4
    iput p1, p0, Lm1/a;->b:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
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

    .line 1
    :try_start_1
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    if-eqz v0, :cond_1e

    .line 2
    iget v1, p0, Lm1/a;->c:I

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v4, v2}, Lm1/p;->c(I[BII)I

    move-result v0

    if-lez v0, :cond_14

    aget-byte v0, v3, v4

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    if-ltz v0, :cond_1c

    .line 4
    iget v1, p0, Lm1/a;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lm1/a;->c:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    .line 5
    :cond_1c
    monitor-exit p0

    return v0

    .line 6
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

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .registers 6

    monitor-enter p0

    .line 8
    :try_start_1
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    if-eqz v0, :cond_14

    .line 9
    iget v1, p0, Lm1/a;->c:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lm1/p;->c(I[BII)I

    move-result p1

    if-lez p1, :cond_12

    .line 10
    iget p2, p0, Lm1/a;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lm1/a;->c:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    .line 11
    :cond_12
    monitor-exit p0

    return p1

    .line 12
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

    .line 13
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    .line 4
    if-eqz v0, :cond_16

    .line 6
    const/4 v0, -0x1

    .line 7
    iget v1, p0, Lm1/a;->b:I

    .line 9
    if-eq v0, v1, :cond_e

    .line 11
    iput v1, p0, Lm1/a;->c:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1e

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    .line 17
    const-string v1, "Mark has been invalidated."

    .line 19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0

    .line 23
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 25
    const-string v1, "Stream is closed"

    .line 27
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1e

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .registers 12

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x1

    .line 4
    cmp-long v0, p1, v0

    .line 6
    if-gez v0, :cond_b

    .line 8
    const-wide/16 p1, 0x0

    .line 10
    monitor-exit p0

    .line 11
    return-wide p1

    .line 12
    :cond_b
    :try_start_b
    iget-object v0, p0, Lm1/a;->a:Lm1/p;

    .line 14
    if-eqz v0, :cond_38

    .line 16
    iget v1, p0, Lm1/a;->c:I

    .line 18
    int-to-long v1, v1

    .line 19
    add-long/2addr v1, p1

    .line 20
    const/4 p1, 0x0

    .line 21
    move p2, p1

    .line 22
    :goto_15
    iget v3, p0, Lm1/a;->c:I

    .line 24
    int-to-long v4, v3

    .line 25
    cmp-long v6, v1, v4

    .line 27
    if-lez v6, :cond_35

    .line 29
    sget-object v6, Lm1/a;->d:[B

    .line 31
    const/16 v7, 0x2000

    .line 33
    int-to-long v7, v7

    .line 34
    sub-long v4, v1, v4

    .line 36
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 39
    move-result-wide v4

    .line 40
    long-to-int v4, v4

    .line 41
    invoke-virtual {v0, v3, v6, p1, v4}, Lm1/p;->c(I[BII)I

    .line 44
    move-result v3

    .line 45
    if-ltz v3, :cond_35

    .line 47
    iget v4, p0, Lm1/a;->c:I

    .line 49
    add-int/2addr v4, v3

    .line 50
    iput v4, p0, Lm1/a;->c:I
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_40

    .line 52
    add-int/2addr p2, v3

    .line 53
    goto :goto_15

    .line 54
    :cond_35
    int-to-long p1, p2

    .line 55
    monitor-exit p0

    .line 56
    return-wide p1

    .line 57
    :cond_38
    :try_start_38
    new-instance p1, Ljava/io/IOException;

    .line 59
    const-string p2, "BufferedInputStream is closed"

    .line 61
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_40

    .line 65
    :catchall_40
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
.end method
