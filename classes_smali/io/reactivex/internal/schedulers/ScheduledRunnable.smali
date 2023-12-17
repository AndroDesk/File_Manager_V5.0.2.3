.class public final Lio/reactivex/internal/schedulers/ScheduledRunnable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ScheduledRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;",
        "Lk2/b;"
    }
.end annotation


# static fields
.field public static final ASYNC_DISPOSED:Ljava/lang/Object;

.field public static final DONE:Ljava/lang/Object;

.field public static final FUTURE_INDEX:I = 0x1

.field public static final PARENT_DISPOSED:Ljava/lang/Object;

.field public static final PARENT_INDEX:I = 0x0

.field public static final SYNC_DISPOSED:Ljava/lang/Object;

.field public static final THREAD_INDEX:I = 0x2

.field private static final serialVersionUID:J = -0x54ef67182406fc25L


# instance fields
.field public final actual:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lm2/a;)V
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 5
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->run()V

    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method public dispose()V
    .registers 8

    .line 1
    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_31

    .line 11
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    .line 13
    if-eq v1, v2, :cond_31

    .line 15
    sget-object v4, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    .line 17
    if-ne v1, v4, :cond_13

    .line 19
    goto :goto_31

    .line 20
    :cond_13
    const/4 v5, 0x2

    .line 21
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    move-result-object v6

    .line 29
    if-eq v5, v6, :cond_20

    .line 31
    move v5, v0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v5, v3

    .line 34
    :goto_21
    if-eqz v5, :cond_24

    .line 36
    move-object v2, v4

    .line 37
    :cond_24
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 43
    if-eqz v1, :cond_31

    .line 45
    check-cast v1, Ljava/util/concurrent/Future;

    .line 47
    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 50
    :cond_31
    :goto_31
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 56
    if-eq v0, v1, :cond_4b

    .line 58
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    .line 60
    if-eq v0, v1, :cond_4b

    .line 62
    if-nez v0, :cond_40

    .line 64
    goto :goto_4b

    .line 65
    :cond_40
    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_31

    .line 71
    check-cast v0, Lm2/a;

    .line 73
    invoke-interface {v0, p0}, Lm2/a;->a(Lk2/b;)Z

    .line 76
    :cond_4b
    :goto_4b
    return-void
.end method

.method public isDisposed()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    .line 8
    if-eq v1, v2, :cond_d

    .line 10
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 12
    if-ne v1, v2, :cond_e

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    :cond_e
    return v0
.end method

.method public run()V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_b
    iget-object v4, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    .line 14
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 17
    goto :goto_15

    .line 18
    :catchall_11
    move-exception v4

    .line 19
    :try_start_12
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_44

    .line 22
    :goto_15
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 25
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    .line 31
    if-eq v0, v1, :cond_2f

    .line 33
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2f

    .line 41
    if-eqz v0, :cond_2f

    .line 43
    check-cast v0, Lm2/a;

    .line 45
    invoke-interface {v0, p0}, Lm2/a;->a(Lk2/b;)Z

    .line 48
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    .line 54
    if-eq v0, v1, :cond_43

    .line 56
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    .line 58
    if-eq v0, v1, :cond_43

    .line 60
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2f

    .line 68
    :cond_43
    return-void

    .line 69
    :catchall_44
    move-exception v4

    .line 70
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 73
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->PARENT_DISPOSED:Ljava/lang/Object;

    .line 79
    if-eq v0, v1, :cond_5f

    .line 81
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5f

    .line 89
    if-eqz v0, :cond_5f

    .line 91
    check-cast v0, Lm2/a;

    .line 93
    invoke-interface {v0, p0}, Lm2/a;->a(Lk2/b;)Z

    .line 96
    :cond_5f
    :goto_5f
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    .line 102
    if-eq v0, v1, :cond_74

    .line 104
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    .line 106
    if-eq v0, v1, :cond_74

    .line 108
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 110
    invoke-virtual {p0, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_74

    .line 116
    goto :goto_5f

    .line 117
    :cond_74
    throw v4
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    .line 8
    if-ne v1, v2, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->SYNC_DISPOSED:Ljava/lang/Object;

    .line 13
    if-ne v1, v2, :cond_13

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 19
    return-void

    .line 20
    :cond_13
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->ASYNC_DISPOSED:Ljava/lang/Object;

    .line 22
    if-ne v1, v2, :cond_1b

    .line 24
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    return-void
.end method
