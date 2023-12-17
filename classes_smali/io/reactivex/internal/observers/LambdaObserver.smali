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

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/observers/LambdaObserver;->onNext:Ll2/c;

    .line 6
    iput-object p2, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Ll2/c;

    .line 8
    iput-object p3, p0, Lio/reactivex/internal/observers/LambdaObserver;->onComplete:Ll2/a;

    .line 10
    iput-object p4, p0, Lio/reactivex/internal/observers/LambdaObserver;->onSubscribe:Ll2/c;

    .line 12
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

.method public hasCustomOnError()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Ll2/c;

    .line 3
    sget-object v1, Ln2/a;->d:Ln2/a$d;

    .line 5
    if-eq v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isDisposed()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 12
    :try_start_b
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onComplete:Ll2/a;

    .line 14
    invoke-interface {v0}, Ll2/a;->run()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 17
    goto :goto_18

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 22
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 25
    :cond_18
    :goto_18
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_26

    .line 7
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 12
    :try_start_b
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Ll2/c;

    .line 14
    invoke-interface {v0, p1}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 17
    goto :goto_26

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 22
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object p1, v2, v3

    .line 30
    const/4 p1, 0x1

    .line 31
    aput-object v0, v2, p1

    .line 33
    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 36
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 39
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

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1c

    .line 7
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onNext:Ll2/c;

    .line 9
    invoke-interface {v0, p1}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 12
    goto :goto_1c

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    invoke-static {p1}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lk2/b;

    .line 23
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 26
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method

.method public onSubscribe(Lk2/b;)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onSubscribe:Ll2/c;

    .line 9
    invoke-interface {v0, p0}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 12
    goto :goto_16

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 17
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 20
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method
