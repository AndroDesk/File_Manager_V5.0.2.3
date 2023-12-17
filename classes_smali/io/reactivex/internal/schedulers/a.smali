.class public final Lio/reactivex/internal/schedulers/a;
.super Li2/i;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/a$c;,
        Lio/reactivex/internal/schedulers/a$a;,
        Lio/reactivex/internal/schedulers/a$b;
    }
.end annotation


# static fields
.field public static final b:Lio/reactivex/internal/schedulers/a$b;

.field public static final c:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field public static final d:I

.field public static final e:Lio/reactivex/internal/schedulers/a$c;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/schedulers/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    const-string v1, "rx2.computation-threads"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_19

    .line 22
    if-le v1, v0, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v1

    .line 26
    :cond_19
    :goto_19
    sput v0, Lio/reactivex/internal/schedulers/a;->d:I

    .line 28
    new-instance v0, Lio/reactivex/internal/schedulers/a$c;

    .line 30
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 32
    const-string v3, "RxComputationShutdown"

    .line 34
    invoke-direct {v1, v3}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    sput-object v0, Lio/reactivex/internal/schedulers/a;->e:Lio/reactivex/internal/schedulers/a$c;

    .line 42
    invoke-virtual {v0}, Ls2/c;->dispose()V

    .line 45
    const/16 v0, 0xa

    .line 47
    const/4 v1, 0x5

    .line 48
    const-string v3, "rx2.computation-priority"

    .line 50
    invoke-static {v3, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v1

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 66
    move-result v0

    .line 67
    new-instance v3, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 69
    const-string v4, "RxComputationThreadPool"

    .line 71
    invoke-direct {v3, v4, v0, v1}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    .line 74
    sput-object v3, Lio/reactivex/internal/schedulers/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 76
    new-instance v0, Lio/reactivex/internal/schedulers/a$b;

    .line 78
    invoke-direct {v0, v2, v3}, Lio/reactivex/internal/schedulers/a$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 81
    sput-object v0, Lio/reactivex/internal/schedulers/a;->b:Lio/reactivex/internal/schedulers/a$b;

    .line 83
    iget-object v0, v0, Lio/reactivex/internal/schedulers/a$b;->b:[Lio/reactivex/internal/schedulers/a$c;

    .line 85
    array-length v1, v0

    .line 86
    :goto_55
    if-ge v2, v1, :cond_5f

    .line 88
    aget-object v3, v0, v2

    .line 90
    invoke-virtual {v3}, Ls2/c;->dispose()V

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_55

    .line 96
    :cond_5f
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 1
    sget-object v0, Lio/reactivex/internal/schedulers/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 3
    invoke-direct {p0}, Li2/i;-><init>()V

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    sget-object v2, Lio/reactivex/internal/schedulers/a;->b:Lio/reactivex/internal/schedulers/a$b;

    .line 10
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lio/reactivex/internal/schedulers/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    new-instance v3, Lio/reactivex/internal/schedulers/a$b;

    .line 17
    sget v4, Lio/reactivex/internal/schedulers/a;->d:I

    .line 19
    invoke-direct {v3, v4, v0}, Lio/reactivex/internal/schedulers/a$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 22
    :cond_15
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_25

    .line 31
    :cond_1e
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    if-eq v0, v2, :cond_15

    .line 37
    move v0, v4

    .line 38
    :goto_25
    if-nez v0, :cond_34

    .line 40
    iget-object v0, v3, Lio/reactivex/internal/schedulers/a$b;->b:[Lio/reactivex/internal/schedulers/a$c;

    .line 42
    array-length v1, v0

    .line 43
    :goto_2a
    if-ge v4, v1, :cond_34

    .line 45
    aget-object v2, v0, v4

    .line 47
    invoke-virtual {v2}, Ls2/c;->dispose()V

    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 52
    goto :goto_2a

    .line 53
    :cond_34
    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 9

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/a$a;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/schedulers/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lio/reactivex/internal/schedulers/a$b;

    .line 11
    iget v2, v1, Lio/reactivex/internal/schedulers/a$b;->a:I

    .line 13
    if-nez v2, :cond_11

    .line 15
    sget-object v1, Lio/reactivex/internal/schedulers/a;->e:Lio/reactivex/internal/schedulers/a$c;

    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    iget-object v3, v1, Lio/reactivex/internal/schedulers/a$b;->b:[Lio/reactivex/internal/schedulers/a$c;

    .line 20
    iget-wide v4, v1, Lio/reactivex/internal/schedulers/a$b;->c:J

    .line 22
    const-wide/16 v6, 0x1

    .line 24
    add-long/2addr v6, v4

    .line 25
    iput-wide v6, v1, Lio/reactivex/internal/schedulers/a$b;->c:J

    .line 27
    int-to-long v1, v2

    .line 28
    rem-long/2addr v4, v1

    .line 29
    long-to-int v1, v4

    .line 30
    aget-object v1, v3, v1

    .line 32
    :goto_1f
    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/a$a;-><init>(Lio/reactivex/internal/schedulers/a$c;)V

    .line 35
    return-object v0
.end method

.method public final c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 9

    .line 1
    iget-object p2, p0, Lio/reactivex/internal/schedulers/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lio/reactivex/internal/schedulers/a$b;

    .line 9
    iget v0, p2, Lio/reactivex/internal/schedulers/a$b;->a:I

    .line 11
    if-nez v0, :cond_f

    .line 13
    sget-object p2, Lio/reactivex/internal/schedulers/a;->e:Lio/reactivex/internal/schedulers/a$c;

    .line 15
    goto :goto_1d

    .line 16
    :cond_f
    iget-object v1, p2, Lio/reactivex/internal/schedulers/a$b;->b:[Lio/reactivex/internal/schedulers/a$c;

    .line 18
    iget-wide v2, p2, Lio/reactivex/internal/schedulers/a$b;->c:J

    .line 20
    const-wide/16 v4, 0x1

    .line 22
    add-long/2addr v4, v2

    .line 23
    iput-wide v4, p2, Lio/reactivex/internal/schedulers/a$b;->c:J

    .line 25
    int-to-long v4, v0

    .line 26
    rem-long/2addr v2, v4

    .line 27
    long-to-int p2, v2

    .line 28
    aget-object p2, v1, p2

    .line 30
    :goto_1d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    .line 35
    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 38
    :try_start_25
    iget-object p1, p2, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/AbstractDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_2e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_25 .. :try_end_2e} :catch_2f

    .line 47
    goto :goto_35

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 52
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 54
    :goto_35
    return-object v0
.end method
