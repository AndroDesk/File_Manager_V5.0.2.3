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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    new-instance v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$1;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    new-instance v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Lmiuix/core/util/Pools$SimplePool;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/service/DocSnapShotLoader;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->requestLoading()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/service/DocSnapShotLoader;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/service/DocSnapShotLoader;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/service/DocSnapShotLoader;

    invoke-direct {v1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mDocSnapShotLoader:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    return-object v0
.end method

.method private declared-synchronized requestLoading()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    if-nez v0, :cond_47

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    :cond_20
    if-eqz v0, :cond_47

    iget-object v1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    if-nez v1, :cond_38

    new-instance v1, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V

    iput-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_38
    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;->requestLoading(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    :cond_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelRequest(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDocSnapShot(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mItem:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    iget-object v1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->sizeDes:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->sizeDes:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    iput-object p1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    iget-object v1, v0, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-boolean p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    if-nez p1, :cond_2d

    invoke-direct {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->requestLoading()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2f

    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->isLoading:Z

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPaused:Z

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->requestLoading()V

    :cond_e
    return-void
.end method

.method public stop()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->pause()V

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader;->mLoaderThread:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;

    :cond_d
    invoke-virtual {p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->clear()V

    return-void
.end method
