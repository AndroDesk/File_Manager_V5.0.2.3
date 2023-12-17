.class final Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableCreate.java"

# interfaces
.implements Li2/f;
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lk2/b;",
        ">;",
        "Li2/f<",
        "TT;>;",
        "Lk2/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2faaddcf795eb55bL


# instance fields
.field public final observer:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li2/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Li2/h;

    .line 6
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lk2/b;

    .line 7
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lk2/b;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->isDisposed()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Li2/h;

    .line 9
    invoke-interface {v0}, Li2/h;->onComplete()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 12
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    .line 15
    goto :goto_14

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    .line 20
    throw v0

    .line 21
    :cond_14
    :goto_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->tryOnError(Ljava/lang/Throwable;)Z

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_d

    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 5
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->isDisposed()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_18

    .line 20
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Li2/h;

    .line 22
    invoke-interface {v0, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 25
    :cond_18
    return-void
.end method

.method public serialize()Li2/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li2/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;

    .line 3
    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;-><init>(Li2/f;)V

    .line 6
    return-object v0
.end method

.method public setCancellable(Ll2/b;)V
    .registers 3

    .line 1
    new-instance v0, Lio/reactivex/internal/disposables/CancellableDisposable;

    .line 3
    invoke-direct {v0, p1}, Lio/reactivex/internal/disposables/CancellableDisposable;-><init>(Ll2/b;)V

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->setDisposable(Lk2/b;)V

    .line 9
    return-void
.end method

.method public setDisposable(Lk2/b;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z

    .line 4
    return-void
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1
    if-nez p1, :cond_9

    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 5
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 10
    :cond_9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->isDisposed()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1e

    .line 16
    :try_start_f
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Li2/h;

    .line 18
    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 21
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    .line 30
    throw p1

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    return p1
.end method
