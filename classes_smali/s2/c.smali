.class public Ls2/c;
.super Li2/i$b;
.source "NewThreadWorker.java"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4

    invoke-direct {p0}, Li2/i$b;-><init>()V

    sget-boolean v0, Ls2/d;->a:Z

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sget-boolean v0, Ls2/d;->a:Z

    if-eqz v0, :cond_1a

    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ls2/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iput-object p1, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 11

    iget-boolean v0, p0, Ls2/c;->b:Z

    if-eqz v0, :cond_7

    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_7
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Ls2/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;

    return-void
.end method

.method public final c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;
    .registers 9

    invoke-static {p1}, Lv2/a;->c(Ljava/lang/Runnable;)V

    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    invoke-direct {v0, p1, p5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lm2/a;)V

    if-eqz p5, :cond_11

    invoke-interface {p5, v0}, Lm2/a;->c(Lk2/b;)Z

    move-result p1

    if-nez p1, :cond_11

    return-object v0

    :cond_11
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1e

    :try_start_17
    iget-object p1, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_24

    :cond_1e
    iget-object p1, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_24
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_27
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception p1

    if-eqz p5, :cond_2e

    invoke-interface {p5, v0}, Lm2/a;->b(Lk2/b;)Z

    :cond_2e
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    :goto_31
    return-object v0
.end method

.method public final dispose()V
    .registers 2

    iget-boolean v0, p0, Ls2/c;->b:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls2/c;->b:Z

    iget-object v0, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_c
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Ls2/c;->b:Z

    return v0
.end method
