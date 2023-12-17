.class public final Lcom/bumptech/glide/util/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field private static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final MAIN_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/util/Executors$1;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/util/Executors$1;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/util/Executors;->MAIN_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v0, Lcom/bumptech/glide/util/Executors$2;

    .line 10
    invoke-direct {v0}, Lcom/bumptech/glide/util/Executors$2;-><init>()V

    .line 13
    sput-object v0, Lcom/bumptech/glide/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static directExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    return-object v0
.end method

.method public static mainThreadExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/util/Executors;->MAIN_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    return-object v0
.end method

.method public static shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    :try_start_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    const-wide/16 v1, 0x5

    .line 8
    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_1f

    .line 14
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 17
    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    const-string v1, "Failed to shutdown"

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 32
    :cond_1f
    :goto_1f
    return-void

    .line 33
    :catch_20
    move-exception v0

    .line 34
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    new-instance p0, Ljava/lang/RuntimeException;

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    throw p0
.end method
