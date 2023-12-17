.class public abstract Lcom/micloud/midrive/helper/ThreadSafeActionHelper;
.super Ljava/lang/Object;
.source "ThreadSafeActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException;
    }
.end annotation


# instance fields
.field private final mLockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->mLockMap:Ljava/util/Map;

    .line 11
    return-void
.end method

.method private containLock(Ljava/util/concurrent/locks/ReentrantLock;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->mLockMap:Ljava/util/Map;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    monitor-exit v0

    .line 13
    return p1

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    .line 16
    throw p1
.end method

.method private getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->mLockMap:Ljava/util/Map;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    if-nez v1, :cond_19

    .line 16
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->mLockMap:Ljava/util/Map;

    .line 23
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_19
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    .line 30
    throw p1
.end method

.method private unlockIfHeldByCurrentThread(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_19

    .line 12
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_19

    .line 21
    iget-object p2, p0, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->mLockMap:Ljava/util/Map;

    .line 23
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_19
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    .line 30
    throw p1
.end method


# virtual methods
.method public doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doAction(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .registers 12

    .line 2
    invoke-direct {p0, p1}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gez v3, :cond_12

    .line 4
    :try_start_e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    goto :goto_21

    :cond_12
    add-long v3, v1, p3

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 6
    :goto_21
    invoke-direct {p0, v0}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->containLock(Ljava/util/concurrent/locks/ReentrantLock;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    invoke-direct {p0, p1}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    goto :goto_8

    .line 9
    :cond_2f
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_32} :catch_51
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_e .. :try_end_32} :catch_4f
    .catchall {:try_start_e .. :try_end_32} :catchall_4d

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->unlockIfHeldByCurrentThread(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)V

    return-void

    .line 11
    :cond_36
    :try_start_36
    new-instance p2, Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "wait lock time out for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_4d} :catch_51
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_36 .. :try_end_4d} :catch_4f
    .catchall {:try_start_36 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p2

    goto :goto_53

    :catch_4f
    move-exception p2

    goto :goto_52

    :catch_51
    move-exception p2

    .line 12
    :goto_52
    :try_start_52
    throw p2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4d

    .line 13
    :goto_53
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->unlockIfHeldByCurrentThread(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 14
    throw p2
.end method
