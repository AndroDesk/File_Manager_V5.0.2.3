.class public Lcom/android/fileexplorer/service/DocSnapShotLoader;
.super Ljava/lang/Object;
.source "DocSnapShotLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;,
        Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;,
        Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;
    }
.end annotation


# static fields
.field private static volatile mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;


# instance fields
.field private volatile isLoading:Z

.field private final mItem:Lmiuix/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$1;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V

    .line 16
    const/16 v1, 0xa

    .line 18
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    .line 24
    new-instance v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V

    .line 29
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Lmiuix/core/util/Pools$SimplePool;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/service/DocSnapShotLoader;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->requestLoading()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/service/DocSnapShotLoader;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 26
    return-object v0
.end method

.method private declared-synchronized requestLoading()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    .line 4
    if-nez v0, :cond_47

    .line 6
    iget-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    .line 8
    if-nez v0, :cond_47

    .line 10
    const/4 v0, 0x0

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_20

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    .line 33
    :cond_20
    if-eqz v0, :cond_47

    .line 35
    iget-object v1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_47

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    .line 45
    if-nez v1, :cond_38

    .line 47
    new-instance v1, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    .line 49
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V

    .line 52
    iput-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 57
    :cond_38
    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 59
    iget-object v2, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    .line 61
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    .line 69
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;->requestLoading(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    .line 72
    :cond_47
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :catchall_49
    move-exception v0

    .line 75
    monitor-exit p0

    .line 76
    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelRequest(Ljava/lang/String;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    .line 6
    if-eqz v0, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    .line 18
    if-eqz p1, :cond_18

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    .line 22
    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    .line 25
    :cond_18
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized getDocSnapShot(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_5

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    .line 8
    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    .line 14
    iget-object v1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    .line 16
    iput-object v1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    .line 18
    iget-object v2, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->sizeDes:Ljava/lang/String;

    .line 20
    iput-object v2, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->sizeDes:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    .line 24
    iput-object p1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_26

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 34
    iget-object v1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    .line 36
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_26
    iget-boolean p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    .line 41
    if-nez p1, :cond_2d

    .line 43
    invoke-direct {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->requestLoading()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2f

    .line 46
    :cond_2d
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method

.method public pause()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    .line 7
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->requestLoading()V

    .line 15
    :cond_e
    return-void
.end method

.method public stop()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->pause()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    .line 14
    :cond_d
    invoke-virtual {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->clear()V

    .line 17
    return-void
.end method
