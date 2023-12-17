.class final Lcom/bumptech/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    }
.end annotation


# instance fields
.field public final activeEngineResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

.field private final isActiveResourceRetentionAllowed:Z

.field private volatile isShutdown:Z

.field private listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

.field private final resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$1;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/Executor;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 7
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    .line 9
    new-instance p1, Lcom/bumptech/glide/load/engine/ActiveResources$2;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/engine/ActiveResources$2;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 6
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    .line 8
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 11
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 13
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 19
    if-eqz p1, :cond_17

    .line 21
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 24
    :cond_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public cleanReferenceQueue()V
    .registers 2

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    .line 3
    if-nez v0, :cond_1f

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 13
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;->onResourceDequeued()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_16} :catch_17

    .line 23
    goto :goto_0

    .line 24
    :catch_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 31
    goto :goto_0

    .line 32
    :cond_1f
    return-void
.end method

.method public cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 4
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    .line 11
    if-eqz v0, :cond_26

    .line 13
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 15
    if-nez v2, :cond_11

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    iget-object v5, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 25
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 33
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 35
    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 38
    return-void

    .line 39
    :cond_26
    :goto_26
    :try_start_26
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    .line 43
    throw p1
.end method

.method public declared-synchronized deactivate(Lcom/bumptech/glide/load/Key;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 10
    if-eqz p1, :cond_e

    .line 12
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 15
    :cond_e
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized get(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    .line 10
    if-nez p1, :cond_e

    .line 12
    const/4 p1, 0x0

    .line 13
    monitor-exit p0

    .line 14
    return-object p1

    .line 15
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 21
    if-nez v0, :cond_19

    .line 23
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1b

    .line 26
    :cond_19
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public setDequeuedResourceCallback(Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    .line 3
    return-void
.end method

.method public setListener(Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .registers 3

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_a

    .line 3
    :try_start_2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 6
    :try_start_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_a

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception v0

    .line 9
    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    .line 10
    :try_start_9
    throw v0

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_a

    .line 13
    throw v0
.end method

.method public shutdown()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    .line 6
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    if-eqz v1, :cond_e

    .line 10
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 12
    invoke-static {v0}, Lcom/bumptech/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 15
    :cond_e
    return-void
.end method
