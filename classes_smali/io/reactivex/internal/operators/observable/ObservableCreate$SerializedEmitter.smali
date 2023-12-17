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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Li2/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/f<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance p1, Lr2/a;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lr2/a;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lr2/a;

    return-void
.end method


# virtual methods
.method public drain()V
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    :cond_9
    return-void
.end method

.method public drainLoop()V
    .registers 9

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lr2/a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v3, 0x1

    move v4, v3

    :cond_8
    :goto_8
    invoke-interface {v0}, Li2/f;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v1}, Lr2/a;->clear()V

    return-void

    :cond_12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v1}, Lr2/a;->clear()V

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Li2/b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_23
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    invoke-virtual {v1}, Lr2/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2d

    move v7, v3

    goto :goto_2e

    :cond_2d
    const/4 v7, 0x0

    :goto_2e
    if-eqz v5, :cond_36

    if-eqz v7, :cond_36

    invoke-interface {v0}, Li2/b;->onComplete()V

    return-void

    :cond_36
    if-eqz v7, :cond_40

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_8

    return-void

    :cond_40
    invoke-interface {v0, v6}, Li2/b;->onNext(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public isDisposed()Z
    .registers 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    invoke-interface {v0}, Li2/f;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    invoke-interface {v0}, Li2/f;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    invoke-interface {v0}, Li2/f;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_49

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    if-eqz v0, :cond_d

    goto :goto_49

    :cond_d
    if-nez p1, :cond_1a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1a
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    invoke-interface {v0, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_42

    return-void

    :cond_34
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->queue:Lr2/a;

    monitor-enter v0

    :try_start_37
    invoke-virtual {v0, p1}, Lr2/a;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_46

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_42

    return-void

    :cond_42
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drainLoop()V

    return-void

    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1

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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    invoke-interface {v0, p1}, Li2/f;->setCancellable(Ll2/b;)V

    return-void
.end method

.method public setDisposable(Lk2/b;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    invoke-interface {v0, p1}, Li2/f;->setDisposable(Lk2/b;)V

    return-void
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .registers 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->emitter:Li2/f;

    invoke-interface {v0}, Li2/f;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    if-eqz v0, :cond_e

    goto :goto_26

    :cond_e
    if-nez p1, :cond_17

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;->drain()V

    return p1

    :cond_26
    :goto_26
    return v1
.end method
