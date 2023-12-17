.class public final Lp3/j;
.super Lp3/l0;
.source "JobSupport.kt"


# instance fields
.field public final e:Lp3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/h;)V
    .registers 2
    .param p1  # Lp3/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/l0;-><init>()V

    .line 4
    iput-object p1, p0, Lp3/j;->e:Lp3/h;

    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0, p1}, Lp3/j;->p(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 8
    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .registers 4
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lp3/j;->e:Lp3/h;

    .line 3
    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v0}, Lp3/o0;->e()Ljava/util/concurrent/CancellationException;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lp3/h;->p()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_15

    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    iget-object v1, p1, Lp3/h;->d:La3/c;

    .line 24
    check-cast v1, Lu3/f;

    .line 26
    invoke-virtual {v1, v0}, Lu3/f;->l(Ljava/util/concurrent/CancellationException;)Z

    .line 29
    move-result v1

    .line 30
    :goto_1d
    if-eqz v1, :cond_20

    .line 32
    goto :goto_2c

    .line 33
    :cond_20
    invoke-virtual {p1, v0}, Lp3/h;->k(Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p1}, Lp3/h;->p()Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2c

    .line 42
    invoke-virtual {p1}, Lp3/h;->l()V

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method
