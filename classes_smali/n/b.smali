.class public Ln/b;
.super Ln/c;
.source "DefaultTaskExecutor.java"


# instance fields
.field private final mDiskIO:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ln/c;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Ln/b;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ln/b$a;

    .line 13
    invoke-direct {v0}, Ln/b$a;-><init>()V

    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Ln/b;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    .line 23
    return-void
.end method

.method private static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-static {p0}, Lmiuix/appcompat/app/f;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    :try_start_b
    const-class v0, Landroid/os/Handler;

    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    const-class v3, Landroid/os/Looper;

    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 22
    const-class v3, Landroid/os/Handler$Callback;

    .line 24
    const/4 v5, 0x1

    .line 25
    aput-object v3, v2, v5

    .line 27
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    const/4 v6, 0x2

    .line 30
    aput-object v3, v2, v6

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 35
    move-result-object v0

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    aput-object p0, v1, v4

    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object v2, v1, v5

    .line 43
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    aput-object v2, v1, v6

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/os/Handler;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_34} :catch_3b
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_34} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_34} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_34} :catch_35

    .line 53
    return-object v0

    .line 54
    :catch_35
    new-instance v0, Landroid/os/Handler;

    .line 56
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    return-object v0

    .line 60
    :catch_3b
    new-instance v0, Landroid/os/Handler;

    .line 62
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln/b;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public isMainThread()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ln/b;->mMainHandler:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_1a

    .line 5
    iget-object v0, p0, Ln/b;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Ln/b;->mMainHandler:Landroid/os/Handler;

    .line 10
    if-nez v1, :cond_15

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ln/b;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Ln/b;->mMainHandler:Landroid/os/Handler;

    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    goto :goto_1a

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    .line 26
    throw p1

    .line 27
    :cond_1a
    :goto_1a
    iget-object v0, p0, Ln/b;->mMainHandler:Landroid/os/Handler;

    .line 29
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method
