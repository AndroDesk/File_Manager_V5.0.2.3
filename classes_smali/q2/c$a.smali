.class public final Lq2/c$a;
.super Lp2/a;
.source "ObservableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lp2/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final e:Ll2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll2/d<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Li2/h;Ll2/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TU;>;",
            "Ll2/d<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lp2/a;-><init>(Li2/h;)V

    iput-object p2, p0, Lq2/c$a;->e:Ll2/d;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lp2/a;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lq2/c$a;->e:Ll2/d;

    invoke-interface {v0, p1}, Ll2/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    if-eqz p1, :cond_15

    iget-object v0, p0, Lp2/a;->a:Li2/h;

    invoke-interface {v0, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_15
    :try_start_15
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p1

    invoke-static {p1}, La/b;->d0(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    invoke-interface {v0}, Lk2/b;->dispose()V

    invoke-virtual {p0, p1}, Lp2/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Lp2/a;->c:Lo2/a;

    invoke-interface {v0}, Lo2/c;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lq2/c$a;->e:Ll2/d;

    invoke-interface {v1, v0}, Ll2/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_1a

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The mapper function returned a null value."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public final requestFusion(I)I
    .registers 2

    invoke-virtual {p0}, Lp2/a;->a()I

    move-result p1

    return p1
.end method
