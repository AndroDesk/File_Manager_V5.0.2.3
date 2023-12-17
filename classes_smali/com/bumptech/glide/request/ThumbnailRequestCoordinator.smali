.class public Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestCoordinator;
.implements Lcom/bumptech/glide/request/Request;


# instance fields
.field private volatile full:Lcom/bumptech/glide/request/Request;

.field private fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field private isRunningDuringBegin:Z

.field private final parent:Lcom/bumptech/glide/request/RequestCoordinator;

.field private final requestLock:Ljava/lang/Object;

.field private volatile thumb:Lcom/bumptech/glide/request/Request;

.field private thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 14
    return-void
.end method

.method private parentCanNotifyCleared()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method private parentCanNotifyStatusChanged()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method private parentCanSetImage()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method


# virtual methods
.method public begin()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_4
    iput-boolean v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunningDuringBegin:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_33

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_7
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 10
    sget-object v3, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 12
    if-eq v2, v3, :cond_1a

    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 16
    sget-object v3, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 18
    if-eq v2, v3, :cond_1a

    .line 20
    iput-object v3, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 22
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 24
    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 27
    :cond_1a
    iget-boolean v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunningDuringBegin:Z

    .line 29
    if-eqz v2, :cond_2b

    .line 31
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 33
    sget-object v3, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 35
    if-eq v2, v3, :cond_2b

    .line 37
    iput-object v3, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 41
    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->begin()V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2f

    .line 44
    :cond_2b
    :try_start_2b
    iput-boolean v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunningDuringBegin:Z

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_2f
    move-exception v2

    .line 49
    iput-boolean v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunningDuringBegin:Z

    .line 51
    throw v2

    .line 52
    :catchall_33
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    .line 54
    throw v1
.end method

.method public canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanNotifyCleared()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_19

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_19

    .line 18
    iget-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 20
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 22
    if-eq p1, v1, :cond_19

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    monitor-exit v0

    .line 28
    return p1

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1
.end method

.method public canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanNotifyStatusChanged()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_19

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_19

    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isAnyResourceSet()Z

    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_19

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    monitor-exit v0

    .line 28
    return p1

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1
.end method

.method public canSetImage(Lcom/bumptech/glide/request/Request;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanSetImage()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_19

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_17

    .line 18
    iget-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 20
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 22
    if-eq p1, v1, :cond_19

    .line 24
    :cond_17
    const/4 p1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    monitor-exit v0

    .line 28
    return p1

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1
.end method

.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    iput-boolean v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunningDuringBegin:Z

    .line 7
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 9
    iput-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 11
    iput-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 15
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 20
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    .line 27
    throw v1
.end method

.method public getRoot()Lcom/bumptech/glide/request/RequestCoordinator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 6
    if-eqz v1, :cond_c

    .line 8
    invoke-interface {v1}, Lcom/bumptech/glide/request/RequestCoordinator;->getRoot()Lcom/bumptech/glide/request/RequestCoordinator;

    .line 11
    move-result-object v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v1, p0

    .line 14
    :goto_d
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    .line 18
    throw v1
.end method

.method public isAnyResourceSet()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 6
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isAnyResourceSet()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_16

    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 14
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isAnyResourceSet()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_14

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    const/4 v1, 0x1

    .line 24
    :goto_17
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    .line 28
    throw v1
.end method

.method public isCleared()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 8
    if-ne v1, v2, :cond_b

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .line 17
    throw v1
.end method

.method public isComplete()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 8
    if-ne v1, v2, :cond_b

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .line 17
    throw v1
.end method

.method public isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2e

    .line 6
    check-cast p1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 10
    if-nez v0, :cond_10

    .line 12
    iget-object v0, p1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 14
    if-nez v0, :cond_2e

    .line 16
    goto :goto_1a

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 19
    iget-object v2, p1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 21
    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2e

    .line 27
    :goto_1a
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 29
    if-nez v0, :cond_23

    .line 31
    iget-object p1, p1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 33
    if-nez p1, :cond_2e

    .line 35
    goto :goto_2d

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 38
    iget-object p1, p1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 40
    invoke-interface {v0, p1}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2e

    .line 46
    :goto_2d
    const/4 v1, 0x1

    .line 47
    :cond_2e
    return v1
.end method

.method public isRunning()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 8
    if-ne v1, v2, :cond_b

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .line 17
    throw v1
.end method

.method public onRequestFailed(Lcom/bumptech/glide/request/Request;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_11

    .line 12
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_11
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 22
    iget-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestFailed(Lcom/bumptech/glide/request/Request;)V

    .line 29
    :cond_1c
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    .line 33
    throw p1
.end method

.method public onRequestSuccess(Lcom/bumptech/glide/request/Request;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_11

    .line 12
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_11
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 22
    iget-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 31
    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->isComplete()Z

    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_29

    .line 37
    iget-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 39
    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 42
    :cond_29
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    .line 46
    throw p1
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 6
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->isComplete()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_14

    .line 12
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 14
    iput-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumbState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 16
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 18
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 23
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->isComplete()Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_25

    .line 29
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 31
    iput-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->fullState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 33
    iget-object v1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 35
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 38
    :cond_25
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    .line 42
    throw v1
.end method

.method public setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 5
    return-void
.end method
