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

    .line 1
    invoke-direct {p0, p1}, Lp2/a;-><init>(Li2/h;)V

    .line 4
    iput-object p2, p0, Lq2/c$a;->e:Ll2/d;

    .line 6
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

    .line 1
    iget-boolean v0, p0, Lp2/a;->d:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    iget-object v0, p0, Lq2/c$a;->e:Ll2/d;

    .line 8
    invoke-interface {v0, p1}, Ll2/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    const-string v0, "The mapper function returned a null value."
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    .line 14
    if-eqz p1, :cond_15

    .line 16
    iget-object v0, p0, Lp2/a;->a:Li2/h;

    .line 18
    invoke-interface {v0, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 21
    return-void

    .line 22
    :cond_15
    :try_start_15
    new-instance p1, Ljava/lang/NullPointerException;

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    invoke-static {p1}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 32
    iget-object v0, p0, Lp2/a;->b:Lk2/b;

    .line 34
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 37
    invoke-virtual {p0, p1}, Lp2/a;->onError(Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp2/a;->c:Lo2/a;

    .line 3
    invoke-interface {v0}, Lo2/c;->poll()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v1, p0, Lq2/c$a;->e:Ll2/d;

    .line 11
    invoke-interface {v1, v0}, Ll2/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    .line 20
    const-string v1, "The mapper function returned a null value."

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    return-object v0
.end method

.method public final requestFusion(I)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lp2/a;->a()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method
