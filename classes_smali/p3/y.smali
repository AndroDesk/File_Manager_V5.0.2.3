.class public abstract Lp3/y;
.super Lv3/g;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/g;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lv3/g;-><init>()V

    iput p1, p0, Lp3/y;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public abstract d()La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La3/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lp3/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lp3/o;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-nez p1, :cond_c

    goto :goto_e

    :cond_c
    iget-object v1, p1, Lp3/o;->a:Ljava/lang/Throwable;

    :goto_e
    return-object v1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {p1, p2}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_c
    if-nez p1, :cond_f

    move-object p1, p2

    :cond_f
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lp3/y;->d()La3/c;

    move-result-object p1

    invoke-interface {p1}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract i()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final run()V
    .registers 13

    iget-object v0, p0, Lv3/g;->b:Lv3/h;

    :try_start_2
    invoke-virtual {p0}, Lp3/y;->d()La3/c;

    move-result-object v1

    check-cast v1, Lu3/f;

    iget-object v2, v1, Lu3/f;->e:La3/c;

    iget-object v1, v1, Lu3/f;->g:Ljava/lang/Object;

    invoke-interface {v2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1e

    invoke-static {v2, v3, v1}, Lp3/u;->c(La3/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lp3/z0;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_a3

    goto :goto_1f

    :cond_1e
    move-object v4, v5

    :goto_1f
    :try_start_1f
    invoke-interface {v2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-virtual {p0}, Lp3/y;->i()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lp3/y;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_42

    iget v9, p0, Lp3/y;->c:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_37

    const/4 v11, 0x2

    if-ne v9, v11, :cond_36

    goto :goto_37

    :cond_36
    const/4 v10, 0x0

    :cond_37
    :goto_37
    if-eqz v10, :cond_42

    sget-object v9, Lp3/k0$b;->a:Lp3/k0$b;

    invoke-interface {v6, v9}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v6

    check-cast v6, Lp3/k0;

    goto :goto_43

    :cond_42
    move-object v6, v5

    :goto_43
    if-eqz v6, :cond_60

    invoke-interface {v6}, Lp3/k0;->a()Z

    move-result v9

    if-nez v9, :cond_60

    invoke-interface {v6}, Lp3/k0;->e()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lp3/y;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {v6}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_79

    :catchall_5e
    move-exception v2

    goto :goto_9c

    :cond_60
    if-eqz v8, :cond_6e

    invoke-static {v8}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_79

    :cond_6e
    invoke-virtual {p0, v7}, Lp3/y;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, La3/c;->resumeWith(Ljava/lang/Object;)V

    :goto_79
    sget-object v2, Ly2/e;->a:Ly2/e;
    :try_end_7b
    .catchall {:try_start_1f .. :try_end_7b} :catchall_5e

    if-nez v4, :cond_9b

    :try_start_7d
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_a3

    :try_start_80
    invoke-interface {v0}, Lv3/h;->a()V

    sget-object v0, Ly2/e;->a:Ly2/e;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_8a

    goto :goto_93

    :catchall_8a
    move-exception v0

    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_93
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_be

    :cond_9b
    :try_start_9b
    throw v5

    :goto_9c
    if-eqz v4, :cond_9f

    throw v5

    :cond_9f
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw v2
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception v1

    :try_start_a4
    invoke-interface {v0}, Lv3/h;->a()V

    sget-object v0, Ly2/e;->a:Ly2/e;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ae

    goto :goto_b7

    :catchall_ae
    move-exception v0

    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_be
    return-void
.end method
