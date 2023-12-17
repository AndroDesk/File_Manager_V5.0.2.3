.class final Lorg/greenrobot/eventbus/PendingPostQueue;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"


# instance fields
.field private head:Lorg/greenrobot/eventbus/PendingPost;

.field private tail:Lorg/greenrobot/eventbus/PendingPost;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized enqueue(Lorg/greenrobot/eventbus/PendingPost;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_23

    .line 4
    :try_start_3
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    iput-object p1, v0, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    .line 10
    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    .line 15
    if-nez v0, :cond_19

    .line 17
    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;

    .line 19
    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    .line 21
    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_19
    :try_start_19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    const-string v0, "Head present, but no tail"

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    .line 38
    const-string v0, "null cannot be enqueued"

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_21

    .line 44
    :goto_2b
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public declared-synchronized poll()Lorg/greenrobot/eventbus/PendingPost;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    if-eqz v0, :cond_e

    .line 2
    iget-object v1, v0, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    iput-object v1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 4
    :cond_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll(I)Lorg/greenrobot/eventbus/PendingPost;
    .registers 4

    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    if-nez v0, :cond_9

    int-to-long v0, p1

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 7
    :cond_9
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/PendingPostQueue;->poll()Lorg/greenrobot/eventbus/PendingPost;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
