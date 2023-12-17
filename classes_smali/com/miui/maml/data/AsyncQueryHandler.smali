.class public abstract Lcom/miui/maml/data/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;,
        Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z = false

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field public final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 3
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 4
    :try_start_d
    sget-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_21

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 8
    :cond_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2b

    .line 9
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_2b
    move-exception v0

    .line 10
    :try_start_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 13
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 14
    :try_start_d
    sget-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez p2, :cond_21

    .line 15
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "AsyncQueryWorker"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 17
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    sput-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 18
    :cond_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2b

    .line 19
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_2b
    move-exception p2

    .line 20
    :try_start_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p2
.end method


# virtual methods
.method public final cancelOperation(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    return-void
.end method

.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 6
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_3b

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq p1, v2, :cond_31

    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq p1, v2, :cond_23

    .line 18
    const/4 v2, 0x4

    .line 19
    if-eq p1, v2, :cond_15

    .line 21
    goto :goto_44

    .line 22
    :cond_15
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 24
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 35
    goto :goto_44

    .line 36
    :cond_23
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 38
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 49
    goto :goto_44

    .line 50
    :cond_31
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 52
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 54
    check-cast v0, Landroid/net/Uri;

    .line 56
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 59
    goto :goto_44

    .line 60
    :cond_3b
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 62
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 64
    check-cast v0, Landroid/database/Cursor;

    .line 66
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 69
    :goto_44
    return-void
.end method

.method public onDeleteComplete(ILjava/lang/Object;I)V
    .registers 4

    return-void
.end method

.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 4

    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4

    return-void
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4

    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x4

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 10
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 12
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 15
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 17
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 19
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 21
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 23
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 25
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 29
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 10
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 12
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 15
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 17
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 19
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 21
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 23
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 27
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 10
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 12
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 15
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 17
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 19
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 21
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 23
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 25
    iput-object p7, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 29
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 10
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 12
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 15
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 17
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 19
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 21
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 23
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 25
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 27
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 31
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    return-void
.end method
