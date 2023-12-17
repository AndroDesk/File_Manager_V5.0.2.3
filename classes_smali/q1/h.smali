.class public final Lq1/h;
.super Ljava/lang/Object;
.source "KssFileDescriptorAccessor.java"

# interfaces
.implements Lq1/c;


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lq1/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lq1/h;->a:Z

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 12
    iput-object v0, p0, Lq1/h;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 19
    const/4 p1, 0x0

    .line 20
    throw p1
.end method


# virtual methods
.method public final a([BILcn/kuaipan/android/kss/download/b;)I
    .registers 6

    .line 1
    iget-boolean p1, p0, Lq1/h;->a:Z

    .line 3
    if-nez p1, :cond_2a

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_24

    .line 15
    invoke-virtual {p0}, Lq1/h;->lock()V

    .line 18
    :try_start_11
    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 20
    iget-wide v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 22
    int-to-long p2, p2

    .line 23
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    .line 26
    move-result-wide v0

    .line 27
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1f

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    invoke-virtual {p0}, Lq1/h;->unlock()V

    .line 36
    throw p1

    .line 37
    :cond_24
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 39
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 42
    throw p1

    .line 43
    :cond_2a
    new-instance p1, Ljava/io/IOException;

    .line 45
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 48
    throw p1
.end method

.method public final b(J)V
    .registers 3

    return-void
.end method

.method public final c(JJ)Ljava/lang/String;
    .registers 5

    .line 1
    iget-boolean p1, p0, Lq1/h;->a:Z

    .line 3
    if-eqz p1, :cond_a

    .line 5
    new-instance p1, Ljava/io/IOException;

    .line 7
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 10
    throw p1

    .line 11
    :cond_a
    invoke-virtual {p0}, Lq1/h;->lock()V

    .line 14
    const/4 p1, 0x0

    .line 15
    :try_start_e
    throw p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    invoke-virtual {p0}, Lq1/h;->unlock()V

    .line 20
    throw p1
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lq1/h;->a:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lq1/h;->a:Z

    .line 9
    return-void
.end method

.method public final finalize()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq1/h;->close()V
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
    iget-object v0, p0, Lq1/h;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    return-void
.end method

.method public final unlock()V
    .registers 2

    .line 1
    iget-object v0, p0, Lq1/h;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    return-void
.end method
