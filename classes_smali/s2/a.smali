.class public final Ls2/a;
.super Li2/i;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls2/a$c;,
        Ls2/a$b;,
        Ls2/a$a;
    }
.end annotation


# static fields
.field public static final b:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field public static final c:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field public static final d:Ljava/util/concurrent/TimeUnit;

.field public static final e:Ls2/a$c;

.field public static final f:Ls2/a$a;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ls2/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    sput-object v0, Ls2/a;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    new-instance v0, Ls2/a$c;

    .line 7
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 9
    const-string v2, "RxCachedThreadSchedulerShutdown"

    .line 11
    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {v0, v1}, Ls2/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 17
    sput-object v0, Ls2/a;->e:Ls2/a$c;

    .line 19
    invoke-virtual {v0}, Ls2/c;->dispose()V

    .line 22
    const-string v0, "rx2.io-priority"

    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v0

    .line 33
    const/16 v1, 0xa

    .line 35
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result v0

    .line 44
    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 46
    const-string v3, "RxCachedThreadScheduler"

    .line 48
    invoke-direct {v2, v3, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v2, Ls2/a;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 53
    new-instance v3, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 55
    const-string v4, "RxCachedWorkerPoolEvictor"

    .line 57
    invoke-direct {v3, v4, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    .line 60
    sput-object v3, Ls2/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 62
    new-instance v0, Ls2/a$a;

    .line 64
    const-wide/16 v3, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-direct {v0, v3, v4, v5, v2}, Ls2/a$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 70
    sput-object v0, Ls2/a;->f:Ls2/a$a;

    .line 72
    iget-object v2, v0, Ls2/a$a;->c:Lk2/a;

    .line 74
    invoke-virtual {v2}, Lk2/a;->dispose()V

    .line 77
    iget-object v2, v0, Ls2/a$a;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 79
    if-eqz v2, :cond_53

    .line 81
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 84
    :cond_53
    iget-object v0, v0, Ls2/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    if-eqz v0, :cond_5a

    .line 88
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 91
    :cond_5a
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 1
    sget-object v0, Ls2/a;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 3
    invoke-direct {p0}, Li2/i;-><init>()V

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    sget-object v2, Ls2/a;->f:Ls2/a$a;

    .line 10
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Ls2/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    new-instance v3, Ls2/a$a;

    .line 17
    sget-object v4, Ls2/a;->d:Ljava/util/concurrent/TimeUnit;

    .line 19
    const-wide/16 v5, 0x3c

    .line 21
    invoke-direct {v3, v5, v6, v4, v0}, Ls2/a$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 24
    :cond_17
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v0, :cond_20

    .line 31
    move v0, v4

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-eq v0, v2, :cond_17

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_27
    if-nez v0, :cond_3c

    .line 42
    iget-object v0, v3, Ls2/a$a;->c:Lk2/a;

    .line 44
    invoke-virtual {v0}, Lk2/a;->dispose()V

    .line 47
    iget-object v0, v3, Ls2/a$a;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 49
    if-eqz v0, :cond_35

    .line 51
    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 54
    :cond_35
    iget-object v0, v3, Ls2/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    if-eqz v0, :cond_3c

    .line 58
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 61
    :cond_3c
    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 3

    .line 1
    new-instance v0, Ls2/a$b;

    .line 3
    iget-object v1, p0, Ls2/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ls2/a$a;

    .line 11
    invoke-direct {v0, v1}, Ls2/a$b;-><init>(Ls2/a$a;)V

    .line 14
    return-object v0
.end method
