.class public final Lp3/l;
.super Lp3/l0;
.source "JobSupport.kt"

# interfaces
.implements Lp3/k;


# instance fields
.field public final e:Lp3/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/o0;)V
    .registers 2
    .param p1  # Lp3/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lp3/l0;-><init>()V

    .line 4
    iput-object p1, p0, Lp3/l;->e:Lp3/m;

    .line 6
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_18

    .line 11
    :cond_a
    invoke-virtual {v0, p1}, Lp3/o0;->n(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_17

    .line 17
    invoke-virtual {v0}, Lp3/o0;->y()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v2, 0x0

    .line 25
    :goto_18
    return v2
.end method

.method public final getParent()Lp3/k0;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0, p1}, Lp3/l;->p(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 8
    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .registers 3
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lp3/l;->e:Lp3/m;

    .line 3
    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lp3/m;->g(Lp3/o0;)V

    .line 10
    return-void
.end method
