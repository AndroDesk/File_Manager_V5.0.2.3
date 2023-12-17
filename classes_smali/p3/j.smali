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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Lp3/l0;-><init>()V

    iput-object p1, p0, Lp3/j;->e:Lp3/h;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lp3/j;->p(Ljava/lang/Throwable;)V

    sget-object p1, Ly2/e;->a:Ly2/e;

    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .registers 4
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lp3/j;->e:Lp3/h;

    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lp3/o0;->e()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p1}, Lp3/h;->p()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_1d

    :cond_15
    iget-object v1, p1, Lp3/h;->d:La3/c;

    check-cast v1, Lu3/f;

    invoke-virtual {v1, v0}, Lu3/f;->l(Ljava/util/concurrent/CancellationException;)Z

    move-result v1

    :goto_1d
    if-eqz v1, :cond_20

    goto :goto_2c

    :cond_20
    invoke-virtual {p1, v0}, Lp3/h;->k(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lp3/h;->p()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lp3/h;->l()V

    :cond_2c
    :goto_2c
    return-void
.end method
