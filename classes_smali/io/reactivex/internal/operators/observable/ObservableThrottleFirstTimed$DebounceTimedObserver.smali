.class final Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableThrottleFirstTimed.java"

# interfaces
.implements Li2/h;
.implements Lk2/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebounceTimedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lk2/b;",
        ">;",
        "Li2/h<",
        "TT;>;",
        "Lk2/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xaebf798afbe73bfL


# instance fields
.field public final actual:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public done:Z

.field public volatile gate:Z

.field public s:Lk2/b;

.field public final timeout:J

.field public final unit:Ljava/util/concurrent/TimeUnit;

.field public final worker:Li2/i$b;


# direct methods
.method public constructor <init>(Li2/h;JLjava/util/concurrent/TimeUnit;Li2/i$b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li2/i$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->actual:Li2/h;

    .line 6
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->timeout:J

    .line 8
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 10
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->worker:Li2/i$b;

    .line 12
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->s:Lk2/b;

    .line 3
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->worker:Li2/i$b;

    .line 8
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 11
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->worker:Li2/i$b;

    .line 3
    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->done:Z

    .line 3
    if-nez v0, :cond_11

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->done:Z

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->actual:Li2/h;

    .line 10
    invoke-interface {v0}, Li2/h;->onComplete()V

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->worker:Li2/i$b;

    .line 15
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 18
    :cond_11
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->done:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 8
    goto :goto_15

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->done:Z

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->actual:Li2/h;

    .line 14
    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 17
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->worker:Li2/i$b;

    .line 19
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 22
    :goto_15
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->gate:Z

    .line 3
    if-nez v0, :cond_28

    .line 5
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->done:Z

    .line 7
    if-nez v0, :cond_28

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->gate:Z

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->actual:Li2/h;

    .line 14
    invoke-interface {v0, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lk2/b;

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 28
    :cond_1b
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->worker:Li2/i$b;

    .line 30
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->timeout:J

    .line 32
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 34
    invoke-virtual {p1, p0, v0, v1, v2}, Li2/i$b;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z

    .line 41
    :cond_28
    return-void
.end method

.method public onSubscribe(Lk2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->s:Lk2/b;

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->s:Lk2/b;

    .line 11
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->actual:Li2/h;

    .line 13
    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 16
    :cond_f
    return-void
.end method

.method public run()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;->gate:Z

    .line 4
    return-void
.end method
