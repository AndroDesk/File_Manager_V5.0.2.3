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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lp3/o0;)V
    .registers 2
    .param p1  # Lp3/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lp3/l0;-><init>()V

    iput-object p1, p0, Lp3/l;->e:Lp3/m;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    move-result-object v0

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    goto :goto_18

    :cond_a
    invoke-virtual {v0, p1}, Lp3/o0;->n(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Lp3/o0;->y()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public final getParent()Lp3/k0;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lp3/l;->p(Ljava/lang/Throwable;)V

    sget-object p1, Ly2/e;->a:Ly2/e;

    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .registers 3
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lp3/l;->e:Lp3/m;

    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    move-result-object v0

    invoke-interface {p1, v0}, Lp3/m;->g(Lp3/o0;)V

    return-void
.end method
