.class public Lcom/android/fileexplorer/util/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$ThreadPoolManagerHolder;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x200

.field public static final CPU_COUNT:I

.field private static final TAG:Ljava/lang/String; = "ThreadPoolManager"


# instance fields
.field private mPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/util/ThreadPoolManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/util/ThreadPoolManager;-><init>()V

    return-void
.end method

.method public static getCPUExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->CPU:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getIOExecutors()Ljava/util/concurrent/ExecutorService;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->IO:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/util/ThreadPoolManager$ThreadPoolManagerHolder;->sInstance:Lcom/android/fileexplorer/util/ThreadPoolManager;

    return-object v0
.end method

.method public static getSingleExecutors()Ljava/util/concurrent/ExecutorService;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->SINGLE:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNewExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 11

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x200

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    const/16 v0, 0xa

    const-string v3, "file_io_pool"

    invoke-direct {v7, p0, v0, v3}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    new-instance v8, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    invoke-direct {v8, p0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_1b

    return-object v2

    :cond_1b
    sget-object v2, Lcom/android/fileexplorer/util/ThreadPoolManager$1;->$SwitchMap$com$android$fileexplorer$util$ThreadPoolManager$POOL_TYPE:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x200

    const/4 v5, 0x1

    if-eq v2, v5, :cond_d1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_ad

    const/4 v7, 0x3

    if-eq v2, v7, :cond_86

    const/4 v7, 0x4

    if-eq v2, v7, :cond_5e

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v7, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    add-int/lit8 v9, v7, 0x1

    mul-int/2addr v7, v6

    add-int/lit8 v10, v7, 0x1

    const-wide/16 v11, 0x3c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v15, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    const-string v4, "fe_io_pool"

    invoke-direct {v15, v0, v3, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    new-instance v3, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    invoke-direct {v3, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    move-object v8, v2

    move-object/from16 v16, v3

    invoke-direct/range {v8 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iget-object v3, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f7

    :cond_5e
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v5, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    add-int/lit8 v8, v5, 0x1

    mul-int/lit8 v9, v5, 0x2

    const-wide/16 v10, 0x1e

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;

    invoke-direct {v13, v0, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;I)V

    new-instance v14, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    const/4 v4, -0x2

    const-string v5, "fe_unzip_pool"

    invoke-direct {v14, v0, v4, v5}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    new-instance v15, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    invoke-direct {v15, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    :cond_86
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v6, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    add-int/lit8 v7, v6, -0x4

    add-int/lit8 v8, v6, 0x1

    const-wide/16 v9, 0x0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;

    invoke-direct {v12, v0, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;I)V

    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    const-string v4, "fe_copy_pool"

    invoke-direct {v13, v0, v3, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    new-instance v14, Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;

    invoke-direct {v14, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    move-object v6, v15

    invoke-direct/range {v6 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    :cond_ad
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v12, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    const/4 v4, 0x0

    const-string v5, "fe_single_pool"

    invoke-direct {v12, v0, v4, v5}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    invoke-direct {v13, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    :cond_d1
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v6, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x1

    const-wide/16 v9, 0x0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    const-string v4, "fe_cpu_pool"

    invoke-direct {v13, v0, v3, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    new-instance v14, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    invoke-direct {v14, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    move-object v6, v15

    invoke-direct/range {v6 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f7
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    return-object v1
.end method
