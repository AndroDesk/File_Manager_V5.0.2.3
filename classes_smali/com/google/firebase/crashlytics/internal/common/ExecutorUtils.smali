.class public final Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;
.super Ljava/lang/Object;
.source "ExecutorUtils.java"


# static fields
.field private static final DEFAULT_TERMINATION_TIMEOUT:J = 0x2L


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .registers 14

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v8, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    const-string p1, "Crashlytics Shutdown Hook for "

    .line 3
    invoke-static {p1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v1, v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method public static buildSingleThreadExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 7
    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 10
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ExecutorService;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 17
    return-object v0
.end method

.method public static buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 12
    return-object v0
.end method

.method public static getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    const-wide/16 v1, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 8
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;

    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 13
    return-object v1
.end method

.method private static newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ExecutorService;
    .registers 12

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x1

    .line 12
    const-wide/16 v3, 0x0

    .line 14
    move-object v0, v9

    .line 15
    move-object v7, p0

    .line 16
    move-object v8, p1

    .line 17
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 20
    invoke-static {v9}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
