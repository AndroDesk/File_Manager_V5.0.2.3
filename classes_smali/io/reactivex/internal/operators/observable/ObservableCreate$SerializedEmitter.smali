.class final Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCreate.java"

# interfaces
.implements Li2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializedEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li2/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43c4fdd95fbcd5c6L


# instance fields
.field public volatile done:Z

.field public final emitter:Li2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final error:Lio/reactivex/internal/util/AtomicThrowable;

.field public final queue:Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li2/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    .line 8
    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 13
    new-instance p1, Lr2/a;

    .line 15
    const/16 v0, 0x10

    .line 17
    invoke-direct {p1, v0}, Lr2/a;-><init>(I)V

    .line 20
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lr2/a;

    .line 22
    return-void
.end method


# virtual methods
.method public drain()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    .line 10
    :cond_9
    return-void
.end method

.method public drainLoop()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lr2/a;

    .line 5
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 7
    const/4 v3, 0x1

    .line 8
    move v4, v3

    .line 9
    :cond_8
    :goto_8
    invoke-interface {v0}, Li2/f;->isDisposed()Z

    .line 12
    move-result v5

    .line 13
    if-eqz v5, :cond_12

    .line 15
    invoke-virtual {v1}, Lr2/a;->clear()V

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_23

    .line 25
    invoke-virtual {v1}, Lr2/a;->clear()V

    .line 28
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Li2/b;->onError(Ljava/lang/Throwable;)V

    .line 35
    return-void

    .line 36
    :cond_23
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 38
    invoke-virtual {v1}, Lr2/a;->poll()Ljava/lang/Object;

    .line 41
    move-result-object v6

    .line 42
    if-nez v6, :cond_2d

    .line 44
    move v7, v3

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 v7, 0x0

    .line 47
    :goto_2e
    if-eqz v5, :cond_36

    .line 49
    if-eqz v7, :cond_36

    .line 51
    invoke-interface {v0}, Li2/b;->onComplete()V

    .line 54
    return-void

    .line 55
    :cond_36
    if-eqz v7, :cond_40

    .line 57
    neg-int v4, v4

    .line 58
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_8

    .line 64
    return-void

    .line 65
    :cond_40
    invoke-interface {v0, v6}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 68
    goto :goto_8
.end method

.method public isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 3
    invoke-interface {v0}, Li2/f;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 3
    invoke-interface {v0}, Li2/f;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 17
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 10
    :cond_9
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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 3
    invoke-interface {v0}, Li2/f;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_49

    .line 9
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_49

    .line 14
    :cond_d
    if-nez p1, :cond_1a

    .line 16
    new-instance p1, Ljava/lang/NullPointerException;

    .line 18
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->onError(Ljava/lang/Throwable;)V

    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_34

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_34

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 43
    invoke-interface {v0, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_42

    .line 52
    return-void

    .line 53
    :cond_34
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lr2/a;

    .line 55
    monitor-enter v0

    .line 56
    :try_start_37
    invoke-virtual {v0, p1}, Lr2/a;->offer(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_46

    .line 60
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_42

    .line 66
    return-void

    .line 67
    :cond_42
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    .line 70
    return-void

    .line 71
    :catchall_46
    move-exception p1

    .line 72
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    .line 73
    throw p1

    .line 74
    :cond_49
    :goto_49
    return-void
.end method

.method public serialize()Li2/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li2/f<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public setCancellable(Ll2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 3
    invoke-interface {v0, p1}, Li2/f;->setCancellable(Ll2/b;)V

    .line 6
    return-void
.end method

.method public setDisposable(Lk2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 3
    invoke-interface {v0, p1}, Li2/f;->setDisposable(Lk2/b;)V

    .line 6
    return-void
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    .line 3
    invoke-interface {v0}, Li2/f;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_26

    .line 10
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_26

    .line 15
    :cond_e
    if-nez p1, :cond_17

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    :cond_17
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 26
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_26

    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    .line 38
    return p1

    .line 39
    :cond_26
    :goto_26
    return v1
.end method
