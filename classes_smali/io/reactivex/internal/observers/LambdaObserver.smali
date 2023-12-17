.class public final Lio/reactivex/internal/observers/LambdaObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "LambdaObserver.java"

# interfaces
.implements Li2/h;
.implements Lk2/b;


# annotations
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
.field private static final serialVersionUID:J = -0x64a12a8486b15cccL


# instance fields
.field public final onComplete:Ll2/a;

.field public final onError:Ll2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final onNext:Ll2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final onSubscribe:Ll2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/c<",
            "-",
            "Lk2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/c<",
            "-TT;>;",
            "Ll2/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ll2/a;",
            "Ll2/c<",
            "-",
            "Lk2/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/LambdaObserver;->onNext:Ll2/c;

    iput-object p2, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Ll2/c;

    iput-object p3, p0, Lio/reactivex/internal/observers/LambdaObserver;->onComplete:Ll2/a;

    iput-object p4, p0, Lio/reactivex/internal/observers/LambdaObserver;->onSubscribe:Ll2/c;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public hasCustomOnError()Z
    .registers 3

    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Ll2/c;

    sget-object v1, Ln2/a;->d:Ln2/a$d;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDisposed()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onComplete()V
    .registers 2

    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_b
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onComplete:Ll2/a;

    invoke-interface {v0}, Ll2/a;->run()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_18

    :catchall_11
    move-exception v0

    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_b
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Ll2/c;

    invoke-interface {v0, p1}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_26

    :catchall_11
    move-exception v0

    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onNext:Ll2/c;

    invoke-interface {v0, p1}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_1c

    :catchall_c
    move-exception p1

    invoke-static {p1}, La/b;->d0(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/b;

    invoke-interface {v0}, Lk2/b;->dispose()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onSubscribe(Lk2/b;)V
    .registers 3

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onSubscribe:Ll2/c;

    invoke-interface {v0, p0}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_16

    :catchall_c
    move-exception v0

    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lk2/b;->dispose()V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method
