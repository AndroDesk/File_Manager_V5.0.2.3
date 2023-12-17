.class public final Lp2/b;
.super Ljava/lang/Object;
.source "DisposableLambdaObserver.java"

# interfaces
.implements Li2/h;
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li2/h<",
        "TT;>;",
        "Lk2/b;"
    }
.end annotation


# instance fields
.field public final a:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final b:Ll2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/c<",
            "-",
            "Lk2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll2/a;

.field public d:Lk2/b;


# direct methods
.method public constructor <init>(Li2/h;Ll2/c;Ll2/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;",
            "Ll2/c<",
            "-",
            "Lk2/b;",
            ">;",
            "Ll2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp2/b;->a:Li2/h;

    .line 6
    iput-object p2, p0, Lp2/b;->b:Ll2/c;

    .line 8
    iput-object p3, p0, Lp2/b;->c:Ll2/a;

    .line 10
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lp2/b;->c:Ll2/a;

    .line 3
    invoke-interface {v0}, Ll2/a;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 6
    goto :goto_d

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 14
    :goto_d
    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    .line 16
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 19
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    .line 3
    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onComplete()V
    .registers 3

    .line 1
    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    .line 3
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 5
    if-eq v0, v1, :cond_b

    .line 7
    iget-object v0, p0, Lp2/b;->a:Li2/h;

    .line 9
    invoke-interface {v0}, Li2/h;->onComplete()V

    .line 12
    :cond_b
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    .line 3
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 5
    if-eq v0, v1, :cond_c

    .line 7
    iget-object v0, p0, Lp2/b;->a:Li2/h;

    .line 9
    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 16
    :goto_f
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp2/b;->a:Li2/h;

    .line 3
    invoke-interface {v0, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final onSubscribe(Lk2/b;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lp2/b;->b:Ll2/c;

    .line 3
    invoke-interface {v0, p1}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_15

    .line 6
    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    .line 8
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_14

    .line 14
    iput-object p1, p0, Lp2/b;->d:Lk2/b;

    .line 16
    iget-object p1, p0, Lp2/b;->a:Li2/h;

    .line 18
    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 21
    :cond_14
    return-void

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 26
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 29
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 31
    iput-object p1, p0, Lp2/b;->d:Lk2/b;

    .line 33
    iget-object p1, p0, Lp2/b;->a:Li2/h;

    .line 35
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Li2/h;)V

    .line 38
    return-void
.end method
