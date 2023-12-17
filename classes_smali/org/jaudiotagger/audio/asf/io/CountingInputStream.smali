.class Lorg/jaudiotagger/audio/asf/io/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# instance fields
.field private markPos:J

.field private readCount:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->markPos:J

    .line 8
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    .line 10
    return-void
.end method

.method private declared-synchronized bytesRead(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    cmp-long v0, p1, v0

    .line 6
    if-ltz v0, :cond_10

    .line 8
    :try_start_7
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    .line 10
    add-long/2addr v0, p1

    .line 11
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    .line 13
    goto :goto_10

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1

    .line 17
    :cond_10
    :goto_10
    monitor-exit p0

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized getReadCount()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 5
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    .line 7
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->markPos:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public read()I
    .registers 4

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const-wide/16 v1, 0x1

    .line 2
    invoke-direct {p0, v1, v2}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->bytesRead(J)V

    return v0
.end method

.method public read([BII)I
    .registers 4

    .line 3
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    .line 4
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->bytesRead(J)V

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 6
    :try_start_5
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->markPos:J

    .line 8
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->readCount:J

    .line 10
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    .line 15
    :try_start_e
    throw v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public skip(J)J
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    .line 4
    move-result-wide p1

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->bytesRead(J)V

    .line 8
    return-wide p1
.end method
