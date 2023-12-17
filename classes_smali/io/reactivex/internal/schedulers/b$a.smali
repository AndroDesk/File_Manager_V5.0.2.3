.class public final Lio/reactivex/internal/schedulers/b$a;
.super Li2/i$b;
.source "SingleScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lk2/a;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Li2/i$b;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    new-instance p1, Lk2/a;

    .line 8
    invoke-direct {p1}, Lk2/a;-><init>()V

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 8

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-static {p1}, Lv2/a;->c(Ljava/lang/Runnable;)V

    .line 11
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    .line 13
    iget-object v1, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    .line 15
    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lm2/a;)V

    .line 18
    iget-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    .line 20
    invoke-virtual {p1, v0}, Lk2/a;->c(Lk2/b;)Z

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p2, v1

    .line 27
    if-gtz p1, :cond_23

    .line 29
    :try_start_1c
    iget-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    iget-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 41
    move-result-object p1

    .line 42
    :goto_29
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_2c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1c .. :try_end_2c} :catch_2d

    .line 45
    return-object v0

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/b$a;->dispose()V

    .line 50
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 53
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 55
    return-object p1
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    .line 10
    invoke-virtual {v0}, Lk2/a;->dispose()V

    .line 13
    :cond_c
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    .line 3
    return v0
.end method
