.class public final Lkotlinx/coroutines/a;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V
    .registers 3
    .param p0  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget v0, Lp3/k0;->u:I

    sget-object v0, Lp3/k0$b;->a:Lp3/k0$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object p0

    check-cast p0, Lp3/k0;

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-interface {p0, p1}, Lp3/k0;->o(Ljava/util/concurrent/CancellationException;)V

    :goto_10
    return-void
.end method

.method public static final b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .registers 5
    .param p0  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    sget-object v0, Lp3/s$a;->a:Lp3/s$a;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v0

    check-cast v0, Lp3/s;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_12

    if-nez v0, :cond_e

    invoke-static {p0, p1}, Lkotlinx/coroutines/b;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void

    :cond_e
    :try_start_e
    invoke-interface {v0, p0, p1}, Lp3/s;->handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    if-ne p1, v0, :cond_16

    goto :goto_21

    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_21
    invoke-static {p0, p1}, Lkotlinx/coroutines/b;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lu3/e;Lh3/p;)Lp3/w0;
    .registers 8

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    iget-object p0, p0, Lu3/e;->a:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;

    invoke-interface {p0, v2, v3}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v2, v3}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v4, :cond_28

    if-nez v2, :cond_28

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    goto :goto_50

    :cond_28
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v5, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;

    invoke-direct {v5, v4, v3}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    invoke-interface {p0, v0, v5}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    if-eqz v2, :cond_48

    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    sget-object v5, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    invoke-interface {v2, v0, v5}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_48
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :goto_50
    sget-object v0, Lp3/a0;->a:Lv3/b;

    if-eq p0, v0, :cond_60

    sget-object v2, La3/d$a;->a:La3/d$a;

    invoke-interface {p0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v2

    if-nez v2, :cond_60

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :cond_60
    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Lp3/q0;

    invoke-direct {v0, p0, p1}, Lp3/q0;-><init>(Lkotlin/coroutines/CoroutineContext;Lh3/p;)V

    goto :goto_71

    :cond_6c
    new-instance v0, Lp3/w0;

    invoke-direct {v0, p0, v3}, Lp3/w0;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    :goto_71
    invoke-virtual {v1, p1, v0, v0}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lh3/p;Ljava/lang/Object;La3/c;)V

    return-object v0
.end method

.method public static final d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Lp3/o;

    if-eqz v0, :cond_11

    check-cast p0, Lp3/o;

    iget-object p0, p0, Lp3/o;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_15

    :cond_11
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public static final e(Lp3/y;La3/c;Z)V
    .registers 7
    .param p0  # Lp3/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lp3/y;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp3/y;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, Lp3/y;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_48

    check-cast p1, Lu3/f;

    iget-object p2, p1, Lu3/f;->e:La3/c;

    iget-object v0, p1, Lu3/f;->g:Ljava/lang/Object;

    invoke-interface {p2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_31

    invoke-static {p2, v1, v0}, Lp3/u;->c(La3/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lp3/z0;

    move-result-object p2

    goto :goto_32

    :cond_31
    move-object p2, v3

    :goto_32
    :try_start_32
    iget-object p1, p1, Lu3/f;->e:La3/c;

    invoke-interface {p1, p0}, La3/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Ly2/e;->a:Ly2/e;
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_40

    if-nez p2, :cond_3f

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_4b

    :cond_3f
    throw v3

    :catchall_40
    move-exception p0

    if-eqz p2, :cond_44

    throw v3

    :cond_44
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p0

    :cond_48
    invoke-interface {p1, p0}, La3/c;->resumeWith(Ljava/lang/Object;)V

    :goto_4b
    return-void
.end method
