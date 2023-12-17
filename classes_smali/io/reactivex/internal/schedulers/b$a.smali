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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    invoke-direct {p0}, Li2/i$b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lk2/a;

    invoke-direct {p1}, Lk2/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 8

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    if-eqz v0, :cond_7

    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_7
    invoke-static {p1}, Lv2/a;->c(Ljava/lang/Runnable;)V

    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lm2/a;)V

    iget-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    invoke-virtual {p1, v0}, Lk2/a;->c(Lk2/b;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_23

    :try_start_1c
    iget-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_29

    :cond_23
    iget-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_29
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_2c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1c .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception p1

    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/b$a;->dispose()V

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public final dispose()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lk2/a;

    invoke-virtual {v0}, Lk2/a;->dispose()V

    :cond_c
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Z

    return v0
.end method
