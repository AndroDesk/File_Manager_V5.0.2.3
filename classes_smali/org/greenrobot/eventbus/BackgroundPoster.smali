.class final Lorg/greenrobot/eventbus/BackgroundPoster;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/greenrobot/eventbus/Poster;


# instance fields
.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private volatile executorRunning:Z

.field private final queue:Lorg/greenrobot/eventbus/PendingPostQueue;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 6
    new-instance p1, Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 8
    invoke-direct {p1}, Lorg/greenrobot/eventbus/PendingPostQueue;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 13
    return-void
.end method


# virtual methods
.method public enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lorg/greenrobot/eventbus/PendingPost;->obtainPendingPost(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)Lorg/greenrobot/eventbus/PendingPost;

    .line 4
    move-result-object p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    iget-object p2, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 8
    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/PendingPostQueue;->enqueue(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 11
    iget-boolean p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 13
    if-nez p1, :cond_1a

    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 18
    iget-object p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 20
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    :cond_1a
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1
.end method

.method public run()V
    .registers 7

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 4
    const/16 v2, 0x3e8

    .line 6
    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/PendingPostQueue;->poll(I)Lorg/greenrobot/eventbus/PendingPost;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_1f

    .line 12
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_27
    .catchall {:try_start_1 .. :try_end_c} :catchall_25

    .line 13
    :try_start_c
    iget-object v1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 15
    invoke-virtual {v1}, Lorg/greenrobot/eventbus/PendingPostQueue;->poll()Lorg/greenrobot/eventbus/PendingPost;

    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1a

    .line 21
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 23
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1c

    .line 24
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 26
    return-void

    .line 27
    :cond_1a
    :try_start_1a
    monitor-exit p0

    .line 28
    goto :goto_1f

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    .line 31
    :try_start_1e
    throw v1

    .line 32
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 34
    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/PendingPost;)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_24} :catch_27
    .catchall {:try_start_1e .. :try_end_24} :catchall_25

    .line 37
    goto :goto_0

    .line 38
    :catchall_25
    move-exception v1

    .line 39
    goto :goto_4f

    .line 40
    :catch_27
    move-exception v1

    .line 41
    :try_start_28
    iget-object v2, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 43
    invoke-virtual {v2}, Lorg/greenrobot/eventbus/EventBus;->getLogger()Lorg/greenrobot/eventbus/Logger;

    .line 46
    move-result-object v2

    .line 47
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v5, " was interruppted"

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v2, v3, v4, v1}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_25

    .line 77
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 79
    return-void

    .line 80
    :goto_4f
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 82
    throw v1
.end method
