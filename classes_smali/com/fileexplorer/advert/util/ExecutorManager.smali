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

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/fileexplorer/advert/util/ExecutorManager;->CPU_COUNT:I

    .line 11
    new-instance v0, Lcom/fileexplorer/advert/util/ExecutorManager;

    .line 13
    invoke-direct {v0}, Lcom/fileexplorer/advert/util/ExecutorManager;-><init>()V

    .line 16
    sput-object v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInstance:Lcom/fileexplorer/advert/util/ExecutorManager;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Lcom/fileexplorer/advert/util/ExecutorManager;->CPU_COUNT:I

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mIOExecutor:Ljava/util/concurrent/ExecutorService;

    .line 17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 23
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x2

    .line 28
    const-wide/16 v4, 0xa

    .line 30
    move-object v1, v0

    .line 31
    move-object v6, v8

    .line 32
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 35
    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mCommonExecutor:Ljava/util/concurrent/ExecutorService;

    .line 37
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x1

    .line 46
    const-wide/16 v4, 0x1e

    .line 48
    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 52
    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mSingleExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    const/4 v9, 0x1

    .line 55
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 58
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 62
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 65
    const-wide/16 v4, 0x3c

    .line 67
    move-object v1, v0

    .line 68
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 71
    iput-object v0, p0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInflaterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 76
    return-void
.end method

.method public static commonExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mCommonExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    return-object v0
.end method

.method private static getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInstance:Lcom/fileexplorer/advert/util/ExecutorManager;

    .line 3
    return-object v0
.end method

.method public static inflaterExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mInflaterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    return-object v0
.end method

.method public static ioExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mIOExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    return-object v0
.end method

.method public static singleExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    invoke-static {}, Lcom/fileexplorer/advert/util/ExecutorManager;->getInstance()Lcom/fileexplorer/advert/util/ExecutorManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/fileexplorer/advert/util/ExecutorManager;->mSingleExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    return-object v0
.end method
