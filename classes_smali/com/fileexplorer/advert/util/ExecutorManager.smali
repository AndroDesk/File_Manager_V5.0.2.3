.class public Lcom/fileexplorer/advert/util/ExecutorManager;
.super Ljava/lang/Object;
.source "ExecutorManager.java"


# static fields
.field public static final CPU_COUNT:I

.field private static mInstance:Lcom/fileexplorer/advert/util/ExecutorManager;


# instance fields
.field private mCommonExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIOExecutor:Ljava/util/concurrent/ExecutorService;

.field private mInflaterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mSingleExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/fileexplorer/advert/util/ExecutorManager;->CPU_COUNT:I

    new-instance v0, Lcom/fileexplorer/advert/util/ExecutorManager;

    invoke-direct {v0}, Lcom/fileexplorer/advert/util/ExecutorManager;-><init>()V

    sput-object v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInstance:Lcom/fileexplorer/advert/util/ExecutorManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/fileexplorer/advert/util/ExecutorManager;->CPU_COUNT:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mIOExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0xa

    move-object v1, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mCommonExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mSingleExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInflaterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static commonExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mCommonExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;
    .registers 1

    sget-object v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInstance:Lcom/fileexplorer/advert/util/ExecutorManager;

    return-object v0
.end method

.method public static inflaterExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInflaterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static ioExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mIOExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static singleExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    move-result-object v0

    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mSingleExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
