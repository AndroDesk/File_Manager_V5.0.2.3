.class public Lb3/a;
.super Ljava/lang/Object;
.source "Intrinsics.kt"


# direct methods
.method public static final a(Lh3/l;La3/c;)La3/c;
    .registers 4
    .param p0  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "completion"

    .line 8
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 13
    if-eqz v0, :cond_15

    .line 15
    check-cast p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 17
    invoke-virtual {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->create(La3/c;)La3/c;

    .line 20
    move-result-object p0

    .line 21
    goto :goto_2a

    .line 22
    :cond_15
    invoke-interface {p1}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 28
    if-ne v0, v1, :cond_24

    .line 30
    new-instance v0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1;

    .line 32
    invoke-direct {v0, p1, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1;-><init>(La3/c;Lh3/l;)V

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    new-instance v1, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;

    .line 39
    invoke-direct {v1, p1, v0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;-><init>(La3/c;Lkotlin/coroutines/CoroutineContext;Lh3/l;)V

    .line 42
    move-object p0, v1

    .line 43
    :goto_2a
    return-object p0
.end method

.method public static final b(Lh3/p;Ljava/lang/Object;La3/c;)La3/c;
    .registers 5
    .param p0  # Lh3/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "completion"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 13
    if-eqz v0, :cond_15

    .line 15
    check-cast p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 17
    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->create(Ljava/lang/Object;La3/c;)La3/c;

    .line 20
    move-result-object p0

    .line 21
    goto :goto_2a

    .line 22
    :cond_15
    invoke-interface {p2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 28
    if-ne v0, v1, :cond_24

    .line 30
    new-instance v0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;

    .line 32
    invoke-direct {v0, p2, p0, p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;-><init>(La3/c;Lh3/p;Ljava/lang/Object;)V

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    new-instance v1, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;

    .line 39
    invoke-direct {v1, p2, v0, p0, p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;-><init>(La3/c;Lkotlin/coroutines/CoroutineContext;Lh3/p;Ljava/lang/Object;)V

    .line 42
    move-object p0, v1

    .line 43
    :goto_2a
    return-object p0
.end method

.method public static final c(La3/c;)La3/c;
    .registers 2
    .param p0  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 8
    if-eqz v0, :cond_d

    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    if-eqz v0, :cond_18

    .line 17
    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted()La3/c;

    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move-object p0, v0

    .line 25
    :cond_18
    :goto_18
    return-object p0
.end method
