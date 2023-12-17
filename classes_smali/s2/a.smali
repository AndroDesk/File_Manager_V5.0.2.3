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

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Ls2/a;->d:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ls2/a$c;

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ls2/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Ls2/a;->e:Ls2/a$c;

    invoke-virtual {v0}, Ls2/c;->dispose()V

    const-string v0, "rx2.io-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v3, "RxCachedThreadScheduler"

    invoke-direct {v2, v3, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ls2/a;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    new-instance v3, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v4, "RxCachedWorkerPoolEvictor"

    invoke-direct {v3, v4, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls2/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    new-instance v0, Ls2/a$a;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Ls2/a$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Ls2/a;->f:Ls2/a$a;

    iget-object v2, v0, Ls2/a$a;->c:Lk2/a;

    invoke-virtual {v2}, Lk2/a;->dispose()V

    iget-object v2, v0, Ls2/a$a;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_53

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_53
    iget-object v0, v0, Ls2/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_5a
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    sget-object v0, Ls2/a;->b:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0}, Li2/i;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ls2/a;->f:Ls2/a$a;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ls2/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ls2/a$a;

    sget-object v4, Ls2/a;->d:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3c

    invoke-direct {v3, v5, v6, v4, v0}, Ls2/a$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    :cond_17
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_20

    move v0, v4

    goto :goto_27

    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v2, :cond_17

    const/4 v0, 0x0

    :goto_27
    if-nez v0, :cond_3c

    iget-object v0, v3, Ls2/a$a;->c:Lk2/a;

    invoke-virtual {v0}, Lk2/a;->dispose()V

    iget-object v0, v3, Ls2/a$a;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_35

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_35
    iget-object v0, v3, Ls2/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_3c
    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 3

    new-instance v0, Ls2/a$b;

    iget-object v1, p0, Ls2/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls2/a$a;

    invoke-direct {v0, v1}, Ls2/a$b;-><init>(Ls2/a$a;)V

    return-object v0
.end method
