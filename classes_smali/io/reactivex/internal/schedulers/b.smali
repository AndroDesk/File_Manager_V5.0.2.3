.class public final Lio/reactivex/internal/schedulers/b;
.super Li2/i;
.source "SingleScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/b$a;
    }
.end annotation


# static fields
.field public static final b:Lio/reactivex/internal/schedulers/RxThreadFactory;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 9
    const-string v0, "rx2.single-priority"

    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    const/16 v1, 0xa

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 31
    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 33
    const-string v3, "RxSingleScheduler"

    .line 35
    invoke-direct {v2, v3, v0, v1}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    .line 38
    sput-object v2, Lio/reactivex/internal/schedulers/b;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    sget-object v0, Lio/reactivex/internal/schedulers/b;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 3
    invoke-direct {p0}, Li2/i;-><init>()V

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    iput-object v1, p0, Lio/reactivex/internal/schedulers/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    sget-boolean v2, Ls2/d;->a:Z

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v2, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    move-result-object v0

    .line 20
    sget-boolean v2, Ls2/d;->a:Z

    .line 22
    if-eqz v2, :cond_23

    .line 24
    instance-of v2, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 26
    if-eqz v2, :cond_23

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 31
    sget-object v3, Ls2/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_23
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 3

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/b$a;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/schedulers/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/b$a;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 14
    return-object v0
.end method

.method public final c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 3

    .line 1
    new-instance p2, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    .line 3
    invoke-direct {p2, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 6
    :try_start_5
    iget-object p1, p0, Lio/reactivex/internal/schedulers/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lio/reactivex/internal/schedulers/AbstractDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_14
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_5 .. :try_end_14} :catch_15

    .line 21
    return-object p2

    .line 22
    :catch_15
    move-exception p1

    .line 23
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 26
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 28
    return-object p1
.end method
