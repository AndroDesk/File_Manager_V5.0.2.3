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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Li2/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/a;->a:Li2/h;

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

    iget-object v0, p0, Lp2/a;->c:Lo2/a;

    invoke-interface {v0}, Lo2/c;->clear()V

    return-void
.end method

.method public final dispose()V
    .registers 2

    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    invoke-interface {v0}, Lk2/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lp2/a;->c:Lo2/a;

    invoke-interface {v0}, Lo2/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onComplete()V
    .registers 2

    iget-boolean v0, p0, Lp2/a;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/a;->d:Z

    iget-object v0, p0, Lp2/a;->a:Li2/h;

    invoke-interface {v0}, Li2/h;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lp2/a;->d:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/a;->d:Z

    iget-object v0, p0, Lp2/a;->a:Li2/h;

    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lk2/b;)V
    .registers 3

    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object p1, p0, Lp2/a;->b:Lk2/b;

    instance-of v0, p1, Lo2/a;

    if-eqz v0, :cond_12

    check-cast p1, Lo2/a;

    iput-object p1, p0, Lp2/a;->c:Lo2/a;

    :cond_12
    iget-object p1, p0, Lp2/a;->a:Li2/h;

    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    :cond_17
    return-void
.end method
