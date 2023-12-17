.class Lorg/greenrobot/eventbus/AsyncPoster;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/greenrobot/eventbus/Poster;


# instance fields
.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private final queue:Lorg/greenrobot/eventbus/PendingPostQueue;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/AsyncPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 6
    new-instance p1, Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 8
    invoke-direct {p1}, Lorg/greenrobot/eventbus/PendingPostQueue;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/greenrobot/eventbus/AsyncPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

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
    iget-object p2, p0, Lorg/greenrobot/eventbus/AsyncPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 7
    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/PendingPostQueue;->enqueue(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 10
    iget-object p1, p0, Lorg/greenrobot/eventbus/AsyncPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 12
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/AsyncPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/PendingPostQueue;->poll()Lorg/greenrobot/eventbus/PendingPost;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v1, p0, Lorg/greenrobot/eventbus/AsyncPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 11
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v1, "No pending post available"

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
.end method
