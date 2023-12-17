.class public final Lkotlinx/coroutines/a;
.super Ljava/lang/Object;


# direct methods
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

    .line 1
    sget v0, Lp3/k0;->u:I

    .line 3
    sget-object v0, Lp3/k0$b;->a:Lp3/k0$b;

    .line 5
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lp3/k0;

    .line 11
    if-nez p0, :cond_d

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-interface {p0, p1}, Lp3/k0;->o(Ljava/util/concurrent/CancellationException;)V

    .line 17
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

    .line 1
    :try_start_0
    sget-object v0, Lp3/s$a;->a:Lp3/s$a;

    .line 3
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp3/s;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_12

    .line 9
    if-nez v0, :cond_e

    .line 11
    invoke-static {p0, p1}, Lkotlinx/coroutines/b;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 14
    return-void

    .line 15
    :cond_e
    :try_start_e
    invoke-interface {v0, p0, p1}, Lp3/s;->handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    if-ne p1, v0, :cond_16

    .line 22
    goto :goto_21

    .line 23
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 25
    const-string v2, "Exception while trying to handle coroutine exception"

    .line 27
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    invoke-static {v1, p1}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 33
    move-object p1, v1

    .line 34
    :goto_21
    invoke-static {p0, p1}, Lkotlinx/coroutines/b;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public static c(Lu3/e;Lh3/p;)Lp3/w0;
    .registers 8

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 5
    iget-object p0, p0, Lu3/e;->a:Lkotlin/coroutines/CoroutineContext;

    .line 7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    sget-object v3, Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;

    .line 11
    invoke-interface {p0, v2, v3}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v4

    .line 21
    invoke-interface {v0, v2, v3}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-nez v4, :cond_28

    .line 34
    if-nez v2, :cond_28

    .line 36
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 39
    move-result-object p0

    .line 40
    goto :goto_50

    .line 41
    :cond_28
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 46
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 48
    new-instance v5, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;

    .line 50
    invoke-direct {v5, v4, v3}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    .line 53
    invoke-interface {p0, v0, v5}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 59
    if-eqz v2, :cond_48

    .line 61
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 63
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 65
    sget-object v5, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    .line 67
    invoke-interface {v2, v0, v5}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    :cond_48
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 75
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 77
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 80
    move-result-object p0

    .line 81
    :goto_50
    sget-object v0, Lp3/a0;->a:Lv3/b;

    .line 83
    if-eq p0, v0, :cond_60

    .line 85
    sget-object v2, La3/d$a;->a:La3/d$a;

    .line 87
    invoke-interface {p0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_60

    .line 93
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 96
    move-result-object p0

    .line 97
    :cond_60
    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6c

    .line 103
    new-instance v0, Lp3/q0;

    .line 105
    invoke-direct {v0, p0, p1}, Lp3/q0;-><init>(Lkotlin/coroutines/CoroutineContext;Lh3/p;)V

    .line 108
    goto :goto_71

    .line 109
    :cond_6c
    new-instance v0, Lp3/w0;

    .line 111
    invoke-direct {v0, p0, v3}, Lp3/w0;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 114
    :goto_71
    invoke-virtual {v1, p1, v0, v0}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lh3/p;Ljava/lang/Object;La3/c;)V

    .line 117
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

    .line 1
    instance-of v0, p0, Lp3/o;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    check-cast p0, Lp3/o;

    .line 7
    iget-object p0, p0, Lp3/o;->a:Ljava/lang/Throwable;

    .line 9
    invoke-static {p0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
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

    .line 1
    invoke-virtual {p0}, Lp3/y;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lp3/y;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-static {v1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 14
    move-result-object p0

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {p0, v0}, Lp3/y;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    :goto_13
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p2, :cond_48

    .line 26
    check-cast p1, Lu3/f;

    .line 28
    iget-object p2, p1, Lu3/f;->e:La3/c;

    .line 30
    iget-object v0, p1, Lu3/f;->g:Ljava/lang/Object;

    .line 32
    invoke-interface {p2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    sget-object v2, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eq v0, v2, :cond_31

    .line 45
    invoke-static {p2, v1, v0}, Lp3/u;->c(La3/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lp3/z0;

    .line 48
    move-result-object p2

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move-object p2, v3

    .line 51
    :goto_32
    :try_start_32
    iget-object p1, p1, Lu3/f;->e:La3/c;

    .line 53
    invoke-interface {p1, p0}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 56
    sget-object p0, Ly2/e;->a:Ly2/e;
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_40

    .line 58
    if-nez p2, :cond_3f

    .line 60
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 63
    goto :goto_4b

    .line 64
    :cond_3f
    throw v3

    .line 65
    :catchall_40
    move-exception p0

    .line 66
    if-eqz p2, :cond_44

    .line 68
    throw v3

    .line 69
    :cond_44
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 72
    throw p0

    .line 73
    :cond_48
    invoke-interface {p1, p0}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 76
    :goto_4b
    return-void
.end method
