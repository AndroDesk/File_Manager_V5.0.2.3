.class public Ls2/c;
.super Li2/i$b;
.source "NewThreadWorker.java"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile b:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Li2/i$b;-><init>()V

    .line 4
    sget-boolean v0, Ls2/d;->a:Z

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    move-result-object p1

    .line 11
    sget-boolean v0, Ls2/d;->a:Z

    .line 13
    if-eqz v0, :cond_1a

    .line 15
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 22
    sget-object v1, Ls2/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1a
    iput-object p1, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 11

    .line 1
    iget-boolean v0, p0, Ls2/c;->b:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-wide v2, p2

    .line 12
    move-object v4, p4

    .line 13
    invoke-virtual/range {v0 .. v5}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, v2}, Ls2/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;

    .line 7
    return-void
.end method

.method public final c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;
    .registers 9

    .line 1
    invoke-static {p1}, Lv2/a;->c(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    .line 6
    invoke-direct {v0, p1, p5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lm2/a;)V

    .line 9
    if-eqz p5, :cond_11

    .line 11
    invoke-interface {p5, v0}, Lm2/a;->c(Lk2/b;)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_11

    .line 17
    return-object v0

    .line 18
    :cond_11
    const-wide/16 v1, 0x0

    .line 20
    cmp-long p1, p2, v1

    .line 22
    if-gtz p1, :cond_1e

    .line 24
    :try_start_17
    iget-object p1, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    iget-object p1, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 36
    move-result-object p1

    .line 37
    :goto_24
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_27
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_17 .. :try_end_27} :catch_28

    .line 40
    goto :goto_31

    .line 41
    :catch_28
    move-exception p1

    .line 42
    if-eqz p5, :cond_2e

    .line 44
    invoke-interface {p5, v0}, Lm2/a;->b(Lk2/b;)Z

    .line 47
    :cond_2e
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 50
    :goto_31
    return-object v0
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ls2/c;->b:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ls2/c;->b:Z

    .line 8
    iget-object v0, p0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 13
    :cond_c
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ls2/c;->b:Z

    .line 3
    return v0
.end method
