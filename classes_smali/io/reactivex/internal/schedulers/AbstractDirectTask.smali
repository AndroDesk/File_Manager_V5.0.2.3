.class abstract Lio/reactivex/internal/schedulers/AbstractDirectTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "AbstractDirectTask.java"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/util/concurrent/Future<",
        "*>;>;",
        "Lk2/b;"
    }
.end annotation


# static fields
.field public static final DISPOSED:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final FINISHED:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1924f211b909b42fL


# instance fields
.field public final runnable:Ljava/lang/Runnable;

.field public runner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 3
    sget-object v1, Ln2/a;->a:Ln2/a$c;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 9
    sput-object v0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    .line 11
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 16
    sput-object v0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->runnable:Ljava/lang/Runnable;

    .line 6
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/concurrent/Future;

    .line 7
    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    .line 9
    if-eq v0, v1, :cond_24

    .line 11
    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    .line 13
    if-eq v0, v1, :cond_24

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_24

    .line 21
    if-eqz v0, :cond_24

    .line 23
    iget-object v1, p0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    move-result-object v2

    .line 29
    if-eq v1, v2, :cond_20

    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 v1, 0x0

    .line 34
    :goto_21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 37
    :cond_24
    return-void
.end method

.method public getWrappedRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->runnable:Ljava/lang/Runnable;

    .line 3
    return-object v0
.end method

.method public final isDisposed()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/concurrent/Future;

    .line 7
    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    .line 9
    if-eq v0, v1, :cond_11

    .line 11
    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    .line 13
    if-ne v0, v1, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 19
    :goto_12
    return v0
.end method

.method public final setFuture(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/concurrent/Future;

    .line 7
    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_24

    .line 12
    :cond_b
    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    .line 14
    if-ne v0, v1, :cond_1e

    .line 16
    iget-object v0, p0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    move-result-object v1

    .line 22
    if-eq v0, v1, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    :goto_24
    return-void
.end method
