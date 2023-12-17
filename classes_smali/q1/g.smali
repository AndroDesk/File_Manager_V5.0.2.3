.class public final Lq1/g;
.super Ljava/lang/Object;
.source "KssFileAccessor.java"

# interfaces
.implements Lq1/c;


# instance fields
.field public a:Ljava/io/RandomAccessFile;

.field public b:Z

.field public c:Ljava/nio/channels/FileLock;

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lq1/g;->b:Z

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 12
    iput-object v0, p0, Lq1/g;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 16
    const-string v1, "rws"

    .line 18
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    iput-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 23
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lq1/g;->c:Ljava/nio/channels/FileLock;

    .line 33
    if-eqz v0, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    new-instance v0, Ljava/io/IOException;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v2, "Failed Lock the target file: "

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method


# virtual methods
.method public final a([BILcn/kuaipan/android/kss/download/b;)I
    .registers 11

    .line 1
    iget-boolean v0, p0, Lq1/g;->b:Z

    .line 3
    if-nez v0, :cond_65

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_5f

    .line 15
    invoke-virtual {p0}, Lq1/g;->lock()V

    .line 18
    :try_start_11
    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 20
    iget-object v1, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 22
    iget-wide v1, v1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 27
    int-to-long v0, p2

    .line 28
    iget-object p2, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 30
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    .line 33
    move-result-wide v2

    .line 34
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 37
    move-result-wide v0

    .line 38
    long-to-int p2, v0

    .line 39
    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 45
    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 47
    if-eqz p1, :cond_52

    .line 49
    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 51
    iget-object v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 53
    monitor-enter v0
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_5a

    .line 54
    :try_start_35
    iget-wide v1, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 56
    int-to-long v3, p2

    .line 57
    add-long/2addr v1, v3

    .line 58
    iget-wide v5, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 60
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 63
    move-result-wide v1

    .line 64
    iput-wide v1, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 66
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_4f

    .line 67
    :try_start_42
    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 69
    iget-object p1, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 71
    if-eqz p1, :cond_4b

    .line 73
    invoke-interface {p1, v3, v4}, Lm1/c;->received(J)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_5a

    .line 76
    :cond_4b
    invoke-virtual {p0}, Lq1/g;->unlock()V

    .line 79
    return p2

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    .line 82
    :try_start_51
    throw p1

    .line 83
    :cond_52
    new-instance p1, Ljava/io/IOException;

    .line 85
    const-string p2, "The recoder has been recycled"

    .line 87
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5a

    .line 91
    :catchall_5a
    move-exception p1

    .line 92
    invoke-virtual {p0}, Lq1/g;->unlock()V

    .line 95
    throw p1

    .line 96
    :cond_5f
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 98
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 101
    throw p1

    .line 102
    :cond_65
    new-instance p1, Ljava/io/IOException;

    .line 104
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 107
    throw p1
.end method

.method public final b(J)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lq1/g;->b:Z

    .line 3
    if-nez v0, :cond_1e

    .line 5
    invoke-virtual {p0}, Lq1/g;->lock()V

    .line 8
    :try_start_7
    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 10
    const-wide/16 v1, 0x1

    .line 12
    sub-long/2addr p1, v1

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 16
    iget-object p1, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 22
    invoke-virtual {p0}, Lq1/g;->unlock()V

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    invoke-virtual {p0}, Lq1/g;->unlock()V

    .line 30
    throw p1

    .line 31
    :cond_1e
    new-instance p1, Ljava/io/IOException;

    .line 33
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 36
    throw p1
.end method

.method public final c(JJ)Ljava/lang/String;
    .registers 15

    .line 1
    iget-boolean v0, p0, Lq1/g;->b:Z

    .line 3
    if-nez v0, :cond_54

    .line 5
    invoke-virtual {p0}, Lq1/g;->lock()V

    .line 8
    :try_start_7
    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 10
    const-string v1, "Encode"
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_4f

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_c
    const-string v3, "sha1"

    .line 15
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 18
    move-result-object v3

    .line 19
    const/16 v4, 0x2000

    .line 21
    new-array v5, v4, [B

    .line 23
    add-long/2addr p3, p1

    .line 24
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 27
    :cond_1a
    int-to-long v6, v4

    .line 28
    sub-long v8, p3, p1

    .line 30
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 33
    move-result-wide v6

    .line 34
    long-to-int v6, v6

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-virtual {v0, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 39
    move-result v6

    .line 40
    if-ltz v6, :cond_32

    .line 42
    invoke-virtual {v3, v5, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 45
    int-to-long v6, v6

    .line 46
    add-long/2addr p1, v6

    .line 47
    cmp-long v6, p1, p3

    .line 49
    if-ltz v6, :cond_1a

    .line 51
    :cond_32
    cmp-long p1, p1, p3

    .line 53
    if-gez p1, :cond_3c

    .line 55
    const-string p1, "File size may not enough for sha1."

    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_4b

    .line 61
    :cond_3c
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, La/b;->l([B)Ljava/lang/String;

    .line 68
    move-result-object v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45
    .catchall {:try_start_c .. :try_end_44} :catchall_4f

    .line 69
    goto :goto_4b

    .line 70
    :catch_45
    move-exception p1

    .line 71
    :try_start_46
    const-string p2, "SHA1Encode failed."

    .line 73
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4f

    .line 76
    :goto_4b
    invoke-virtual {p0}, Lq1/g;->unlock()V

    .line 79
    return-object v2

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    invoke-virtual {p0}, Lq1/g;->unlock()V

    .line 84
    throw p1

    .line 85
    :cond_54
    new-instance p1, Ljava/io/IOException;

    .line 87
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 90
    throw p1
.end method

.method public final close()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lq1/g;->b:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lq1/g;->b:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_9
    iget-object v1, p0, Lq1/g;->c:Ljava/nio/channels/FileLock;

    .line 12
    if-eqz v1, :cond_12

    .line 14
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 17
    iput-object v0, p0, Lq1/g;->c:Ljava/nio/channels/FileLock;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1c

    .line 19
    :cond_12
    :try_start_12
    iget-object v1, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 21
    if-eqz v1, :cond_1b

    .line 23
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 26
    iput-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1b

    .line 28
    :catch_1b
    :cond_1b
    return-void

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    :try_start_1d
    iget-object v2, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    .line 32
    if-eqz v2, :cond_26

    .line 34
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 37
    iput-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_26

    .line 39
    :catch_26
    :cond_26
    throw v1
.end method

.method public final finalize()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq1/g;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    throw v0
.end method

.method public final lock()V
    .registers 2

    .line 1
    iget-object v0, p0, Lq1/g;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    return-void
.end method

.method public final unlock()V
    .registers 2

    .line 1
    iget-object v0, p0, Lq1/g;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    return-void
.end method
