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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/b;->a:Li2/h;

    iput-object p2, p0, Lp2/b;->b:Ll2/c;

    iput-object p3, p0, Lp2/b;->c:Ll2/a;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lp2/b;->c:Ll2/a;

    invoke-interface {v0}, Ll2/a;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    :goto_d
    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    invoke-interface {v0}, Lk2/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .registers 3

    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lp2/b;->a:Li2/h;

    invoke-interface {v0}, Li2/h;->onComplete()V

    :cond_b
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lp2/b;->a:Li2/h;

    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Lp2/b;->a:Li2/h;

    invoke-interface {v0, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lk2/b;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lp2/b;->b:Ll2/c;

    invoke-interface {v0, p1}, Ll2/c;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_15

    iget-object v0, p0, Lp2/b;->d:Lk2/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object p1, p0, Lp2/b;->d:Lk2/b;

    iget-object p1, p0, Lp2/b;->a:Li2/h;

    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lk2/b;->dispose()V

    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object p1, p0, Lp2/b;->d:Lk2/b;

    iget-object p1, p0, Lp2/b;->a:Li2/h;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Li2/h;)V

    return-void
.end method
