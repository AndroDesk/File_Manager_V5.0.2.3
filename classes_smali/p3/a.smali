.class public abstract Lp3/a;
.super Lp3/o0;
.source "AbstractCoroutine.kt"

# interfaces
.implements La3/c;
.implements Lp3/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/o0;",
        "La3/c<",
        "TT;>;",
        "Lp3/t;"
    }
.end annotation


# instance fields
.field public final b:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Z)V
    .registers 3
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lp3/o0;-><init>(Z)V

    .line 4
    sget-object p2, Lp3/k0$b;->a:Lp3/k0$b;

    .line 6
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lp3/k0;

    .line 12
    invoke-virtual {p0, p2}, Lp3/o0;->E(Lp3/k0;)V

    .line 15
    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lp3/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 21
    return-void
.end method


# virtual methods
.method public final D(Lkotlinx/coroutines/CompletionHandlerException;)V
    .registers 3
    .param p1  # Lkotlinx/coroutines/CompletionHandlerException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lp3/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 3
    invoke-static {v0, p1}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method

.method public final H()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lp3/o0;->H()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final K(Ljava/lang/Object;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lp3/o;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    check-cast p1, Lp3/o;

    .line 7
    iget-object p1, p1, Lp3/o;->a:Ljava/lang/Throwable;

    .line 9
    :cond_8
    return-void
.end method

.method public Q(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lp3/o0;->d(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public final a()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lp3/o0;->a()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 3
    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    new-instance p1, Lp3/o;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    .line 14
    :goto_d
    invoke-virtual {p0, p1}, Lp3/o0;->G(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lp3/u;->e:Lu3/r;

    .line 20
    if-ne p1, v0, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0, p1}, Lp3/a;->Q(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public final t()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, " was cancelled"

    .line 11
    invoke-static {v1, v0}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
