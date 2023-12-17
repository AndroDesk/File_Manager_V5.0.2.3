.class final Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Li2/h;
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscribeOnObserver"
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
        "Lk2/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x70559c6a66be0138L


# instance fields
.field public final actual:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk2/b;",
            ">;"
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
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->actual:Li2/h;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 6
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 9
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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->actual:Li2/h;

    .line 3
    invoke-interface {v0}, Li2/h;->onComplete()V

    .line 6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->actual:Li2/h;

    .line 3
    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 6
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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->actual:Li2/h;

    .line 3
    invoke-interface {v0, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public onSubscribe(Lk2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z

    .line 6
    return-void
.end method

.method public setDisposable(Lk2/b;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z

    .line 4
    return-void
.end method
