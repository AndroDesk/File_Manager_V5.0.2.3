.class public final Lq1/h;
.super Ljava/lang/Object;
.source "KssFileDescriptorAccessor.java"

# interfaces
.implements Lq1/c;


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lq1/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq1/h;->a:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lq1/h;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a([BILcn/kuaipan/android/kss/download/b;)I
    .registers 6

    iget-boolean p1, p0, Lq1/h;->a:Z

    if-nez p1, :cond_2a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lq1/h;->lock()V

    :try_start_11
    iget-object p1, p3, Lcn/kuaipan/android/kss/download/b;->b:Lcn/kuaipan/android/kss/download/LoadMap$b;

    iget-wide v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    int-to-long p2, p2

    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    const/4 p1, 0x0

    throw p1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    invoke-virtual {p0}, Lq1/h;->unlock()V

    throw p1

    :cond_24
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_2a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public final b(J)V
    .registers 3

    return-void
.end method

.method public final c(JJ)Ljava/lang/String;
    .registers 5

    iget-boolean p1, p0, Lq1/h;->a:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_a
    invoke-virtual {p0}, Lq1/h;->lock()V

    const/4 p1, 0x0

    :try_start_e
    throw p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lq1/h;->unlock()V

    throw p1
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lq1/h;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/h;->a:Z

    return-void
.end method

.method public final finalize()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lq1/h;->close()V
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

    iget-object v0, p0, Lq1/h;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public final unlock()V
    .registers 2

    iget-object v0, p0, Lq1/h;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
