.class public abstract Lp2/a;
.super Ljava/lang/Object;
.source "BasicFuseableObserver.java"

# interfaces
.implements Li2/h;
.implements Lo2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li2/h<",
        "TT;>;",
        "Lo2/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public b:Lk2/b;

.field public c:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Li2/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp2/a;->a:Li2/h;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp2/a;->c:Lo2/a;

    .line 3
    invoke-interface {v0}, Lo2/c;->clear()V

    .line 6
    return-void
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    .line 3
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 6
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    .line 3
    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lp2/a;->c:Lo2/a;

    .line 3
    invoke-interface {v0}, Lo2/c;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Should not be called!"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final onComplete()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lp2/a;->d:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp2/a;->d:Z

    .line 9
    iget-object v0, p0, Lp2/a;->a:Li2/h;

    .line 11
    invoke-interface {v0}, Li2/h;->onComplete()V

    .line 14
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lp2/a;->d:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lp2/a;->d:Z

    .line 12
    iget-object v0, p0, Lp2/a;->a:Li2/h;

    .line 14
    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public final onSubscribe(Lk2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    iput-object p1, p0, Lp2/a;->b:Lk2/b;

    .line 11
    instance-of v0, p1, Lo2/a;

    .line 13
    if-eqz v0, :cond_12

    .line 15
    check-cast p1, Lo2/a;

    .line 17
    iput-object p1, p0, Lp2/a;->c:Lo2/a;

    .line 19
    :cond_12
    iget-object p1, p0, Lp2/a;->a:Li2/h;

    .line 21
    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 24
    :cond_17
    return-void
.end method
