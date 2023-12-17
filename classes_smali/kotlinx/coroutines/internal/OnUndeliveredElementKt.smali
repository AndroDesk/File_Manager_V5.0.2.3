.class public final Lkotlinx/coroutines/internal/OnUndeliveredElementKt;
.super Ljava/lang/Object;
.source "OnUndeliveredElement.kt"


# direct methods
.method public static final a(Lh3/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lh3/l;
    .registers 4
    .param p0  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lh3/l<",
            "-TE;",
            "Ly2/e;",
            ">;TE;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lh3/l<",
            "Ljava/lang/Throwable;",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lh3/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 6
    return-object v0
.end method

.method public static final b(Lh3/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;
    .registers 4
    .param p0  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lkotlinx/coroutines/internal/UndeliveredElementException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lh3/l<",
            "-TE;",
            "Ly2/e;",
            ">;TE;",
            "Lkotlinx/coroutines/internal/UndeliveredElementException;",
            ")",
            "Lkotlinx/coroutines/internal/UndeliveredElementException;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 4
    goto :goto_10

    .line 5
    :catchall_4
    move-exception p0

    .line 6
    if-eqz p2, :cond_11

    .line 8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 11
    move-result-object v0

    .line 12
    if-eq v0, p0, :cond_11

    .line 14
    invoke-static {p2, p0}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 17
    :goto_10
    return-object p2

    .line 18
    :cond_11
    new-instance p2, Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 20
    const-string v0, "Exception in undelivered element handler for "

    .line 22
    invoke-static {p1, v0}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p2, p1, p0}, Lkotlinx/coroutines/internal/UndeliveredElementException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-object p2
.end method
