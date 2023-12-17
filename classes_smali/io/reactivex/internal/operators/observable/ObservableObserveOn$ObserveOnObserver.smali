.class final Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "ObservableObserveOn.java"

# interfaces
.implements Li2/h;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserveOnObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;",
        "Li2/h<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b45d4a143741ca0L


# instance fields
.field public final actual:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final bufferSize:I

.field public volatile cancelled:Z

.field public final delayError:Z

.field public volatile done:Z

.field public error:Ljava/lang/Throwable;

.field public outputFused:Z

.field public queue:Lo2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public s:Lk2/b;

.field public sourceMode:I

.field public final worker:Li2/i$b;


# direct methods
.method public constructor <init>(Li2/h;Li2/i$b;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;",
            "Li2/i$b;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 6
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 8
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    .line 10
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->bufferSize:I

    .line 12
    return-void
.end method


# virtual methods
.method public checkTerminated(ZZLi2/h;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Li2/h<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->cancelled:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_b

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 8
    invoke-interface {p1}, Lo2/c;->clear()V

    .line 11
    return v1

    .line 12
    :cond_b
    if-eqz p1, :cond_3f

    .line 14
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 16
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    .line 18
    if-eqz v0, :cond_24

    .line 20
    if-eqz p2, :cond_3f

    .line 22
    if-eqz p1, :cond_1b

    .line 24
    invoke-interface {p3, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    invoke-interface {p3}, Li2/h;->onComplete()V

    .line 31
    :goto_1e
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 33
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 36
    return v1

    .line 37
    :cond_24
    if-eqz p1, :cond_34

    .line 39
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 41
    invoke-interface {p2}, Lo2/c;->clear()V

    .line 44
    invoke-interface {p3, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 49
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 52
    return v1

    .line 53
    :cond_34
    if-eqz p2, :cond_3f

    .line 55
    invoke-interface {p3}, Li2/h;->onComplete()V

    .line 58
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 60
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 63
    return v1

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    return p1
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 3
    invoke-interface {v0}, Lo2/c;->clear()V

    .line 6
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->cancelled:Z

    .line 3
    if-nez v0, :cond_1c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->cancelled:Z

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->s:Lk2/b;

    .line 10
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 15
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1c

    .line 24
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 26
    invoke-interface {v0}, Lo2/c;->clear()V

    .line 29
    :cond_1c
    return-void
.end method

.method public drainFused()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :cond_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->cancelled:Z

    .line 4
    if-eqz v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 9
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 11
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    .line 13
    if-nez v3, :cond_1d

    .line 15
    if-eqz v1, :cond_1d

    .line 17
    if-eqz v2, :cond_1d

    .line 19
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 21
    invoke-interface {v0, v2}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 24
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 26
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 29
    return-void

    .line 30
    :cond_1d
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-interface {v2, v3}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 36
    if-eqz v1, :cond_3a

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 40
    if-eqz v0, :cond_2f

    .line 42
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 44
    invoke-interface {v1, v0}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 50
    invoke-interface {v0}, Li2/h;->onComplete()V

    .line 53
    :goto_34
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 55
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 58
    return-void

    .line 59
    :cond_3a
    neg-int v0, v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 66
    return-void
.end method

.method public drainNormal()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 5
    const/4 v2, 0x1

    .line 6
    move v3, v2

    .line 7
    :cond_6
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 9
    invoke-interface {v0}, Lo2/c;->isEmpty()Z

    .line 12
    move-result v5

    .line 13
    invoke-virtual {p0, v4, v5, v1}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->checkTerminated(ZZLi2/h;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    :goto_13
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 22
    :try_start_15
    invoke-interface {v0}, Lo2/c;->poll()Ljava/lang/Object;

    .line 25
    move-result-object v5
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_33

    .line 26
    if-nez v5, :cond_1d

    .line 28
    move v6, v2

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v6, 0x0

    .line 31
    :goto_1e
    invoke-virtual {p0, v4, v6, v1}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->checkTerminated(ZZLi2/h;)Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    if-eqz v6, :cond_2f

    .line 40
    neg-int v3, v3

    .line 41
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_6

    .line 47
    return-void

    .line 48
    :cond_2f
    invoke-interface {v1, v5}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 51
    goto :goto_13

    .line 52
    :catchall_33
    move-exception v2

    .line 53
    invoke-static {v2}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 56
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->s:Lk2/b;

    .line 58
    invoke-interface {v3}, Lk2/b;->dispose()V

    .line 61
    invoke-interface {v0}, Lo2/c;->clear()V

    .line 64
    invoke-interface {v1, v2}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 69
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 72
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->cancelled:Z

    .line 3
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 3
    invoke-interface {v0}, Lo2/c;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 12
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 14
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 17
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_f

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 13
    invoke-interface {v0, p1}, Lo2/c;->offer(Ljava/lang/Object;)Z

    .line 16
    :cond_f
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 19
    return-void
.end method

.method public onSubscribe(Lk2/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->s:Lk2/b;

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_42

    .line 9
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->s:Lk2/b;

    .line 11
    instance-of v0, p1, Lo2/a;

    .line 13
    if-eqz v0, :cond_34

    .line 15
    check-cast p1, Lo2/a;

    .line 17
    const/4 v0, 0x7

    .line 18
    invoke-interface {p1, v0}, Lo2/b;->requestFusion(I)I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_27

    .line 25
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    .line 27
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 29
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 31
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 33
    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 36
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 39
    return-void

    .line 40
    :cond_27
    const/4 v1, 0x2

    .line 41
    if-ne v0, v1, :cond_34

    .line 43
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 49
    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 52
    return-void

    .line 53
    :cond_34
    new-instance p1, Lr2/a;

    .line 55
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->bufferSize:I

    .line 57
    invoke-direct {p1, v0}, Lr2/a;-><init>(I)V

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 62
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->actual:Li2/h;

    .line 64
    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 67
    :cond_42
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lo2/c;

    .line 3
    invoke-interface {v0}, Lo2/c;->poll()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    and-int/2addr p1, v0

    .line 3
    if-eqz p1, :cond_8

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->outputFused:Z

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public run()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->outputFused:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->drainFused()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->drainNormal()V

    .line 12
    :goto_b
    return-void
.end method

.method public schedule()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Li2/i$b;

    .line 9
    invoke-virtual {v0, p0}, Li2/i$b;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_b
    return-void
.end method
