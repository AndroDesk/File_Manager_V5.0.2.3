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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq1/g;->b:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lq1/g;->d:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lq1/g;->c:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_23

    return-void

    :cond_23
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed Lock the target file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a([BILcn/kuaipan/android/kss/download/b;)I
    .registers 11

    iget-boolean v0, p0, Lq1/g;->b:Z

    if-nez v0, :cond_65

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Lq1/g;->lock()V

    :try_start_11
    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    iget-wide v1, v1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    int-to-long v0, p2

    iget-object p2, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    invoke-virtual {p2}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    if-eqz p1, :cond_52

    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    iget-object v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    monitor-enter v0
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_5a

    :try_start_35
    iget-wide v1, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    int-to-long v3, p2

    add-long/2addr v1, v3

    iget-wide v5, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_4f

    :try_start_42
    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-object p1, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    if-eqz p1, :cond_4b

    invoke-interface {p1, v3, v4}, Lm1/c;->received(J)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_5a

    :cond_4b
    invoke-virtual {p0}, Lq1/g;->unlock()V

    return p2

    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw p1

    :cond_52
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The recoder has been recycled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    invoke-virtual {p0}, Lq1/g;->unlock()V

    throw p1

    :cond_5f
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_65
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public final b(J)V
    .registers 6

    iget-boolean v0, p0, Lq1/g;->b:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lq1/g;->lock()V

    :try_start_7
    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    invoke-virtual {p0}, Lq1/g;->unlock()V

    return-void

    :catchall_19
    move-exception p1

    invoke-virtual {p0}, Lq1/g;->unlock()V

    throw p1

    :cond_1e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public final c(JJ)Ljava/lang/String;
    .registers 15

    iget-boolean v0, p0, Lq1/g;->b:Z

    if-nez v0, :cond_54

    invoke-virtual {p0}, Lq1/g;->lock()V

    :try_start_7
    iget-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    const-string v1, "Encode"
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_4f

    const/4 v2, 0x0

    :try_start_c
    const-string v3, "sha1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/16 v4, 0x2000

    new-array v5, v4, [B

    add-long/2addr p3, p1

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1a
    int-to-long v6, v4

    sub-long v8, p3, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-ltz v6, :cond_32

    invoke-virtual {v3, v5, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v6, v6

    add-long/2addr p1, v6

    cmp-long v6, p1, p3

    if-ltz v6, :cond_1a

    :cond_32
    cmp-long p1, p1, p3

    if-gez p1, :cond_3c

    const-string p1, "File size may not enough for sha1."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_3c
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, La/b;->l([B)Ljava/lang/String;

    move-result-object v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45
    .catchall {:try_start_c .. :try_end_44} :catchall_4f

    goto :goto_4b

    :catch_45
    move-exception p1

    :try_start_46
    const-string p2, "SHA1Encode failed."

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4f

    :goto_4b
    invoke-virtual {p0}, Lq1/g;->unlock()V

    return-object v2

    :catchall_4f
    move-exception p1

    invoke-virtual {p0}, Lq1/g;->unlock()V

    throw p1

    :cond_54
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public final close()V
    .registers 4

    iget-boolean v0, p0, Lq1/g;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/g;->b:Z

    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lq1/g;->c:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    iput-object v0, p0, Lq1/g;->c:Ljava/nio/channels/FileLock;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1c

    :cond_12
    :try_start_12
    iget-object v1, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    iput-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void

    :catchall_1c
    move-exception v1

    :try_start_1d
    iget-object v2, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    iput-object v0, p0, Lq1/g;->a:Ljava/io/RandomAccessFile;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    throw v1
.end method

.method public final finalize()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lq1/g;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final lock()V
    .registers 2

    iget-object v0, p0, Lq1/g;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public final unlock()V
    .registers 2

    iget-object v0, p0, Lq1/g;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
