.class public final Lkotlinx/coroutines/flow/internal/SafeCollector;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SafeCollector.kt"

# interfaces
.implements Ls3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Ls3/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final collectContext:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final collectContextSize:I

.field public final collector:Ls3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private completion:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c<",
            "-",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastEmissionContext:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls3/b;Lkotlin/coroutines/CoroutineContext;)V
    .registers 5
    .param p1  # Ls3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/b<",
            "-TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lt3/b;->a:Lt3/b;

    .line 3
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(La3/c;Lkotlin/coroutines/CoroutineContext;)V

    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collector:Ls3/b;

    .line 10
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lkotlinx/coroutines/flow/internal/SafeCollector$collectContextSize$1;->INSTANCE:Lkotlinx/coroutines/flow/internal/SafeCollector$collectContextSize$1;

    .line 19
    invoke-interface {p2, p1, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Number;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContextSize:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a(La3/c;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/c<",
            "-",
            "Ly2/e;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lp3/k0$b;->a:Lp3/k0$b;

    .line 7
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lp3/k0;

    .line 13
    if-nez v1, :cond_f

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    invoke-interface {v1}, Lp3/k0;->a()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_a0

    .line 22
    :goto_15
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    .line 24
    if-eq v1, v0, :cond_8a

    .line 26
    instance-of v2, v1, Lt3/a;

    .line 28
    if-nez v2, :cond_5e

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$checkContext$result$1;

    .line 37
    invoke-direct {v2, p0}, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$checkContext$result$1;-><init>(Lkotlinx/coroutines/flow/internal/SafeCollector;)V

    .line 40
    invoke-interface {v0, v1, v2}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/Number;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 49
    move-result v1

    .line 50
    iget v2, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContextSize:I

    .line 52
    if-ne v1, v2, :cond_38

    .line 54
    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    .line 56
    goto :goto_8a

    .line 57
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    const-string p2, "Flow invariant is violated:\n\t\tFlow was collected in "

    .line 61
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object p2

    .line 65
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ",\n\t\tbut emission happened in "

    .line 72
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1

    .line 95
    :cond_5e
    check-cast v1, Lt3/a;

    .line 97
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    const-string v0, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    .line 101
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    move-result-object v0

    .line 105
    iget-object v1, v1, Lt3/a;->a:Ljava/lang/Throwable;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", but then emission attempt of value \'"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string p2, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2}, Lkotlin/text/a;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1

    .line 139
    :cond_8a
    :goto_8a
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:La3/c;

    .line 141
    sget-object p1, Lkotlinx/coroutines/flow/internal/SafeCollectorKt;->a:Lh3/q;

    .line 143
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collector:Ls3/b;

    .line 145
    invoke-interface {p1, v0, p2, p0}, Lh3/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object p1

    .line 149
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 151
    invoke-static {p1, p2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    move-result p2

    .line 155
    if-nez p2, :cond_9f

    .line 157
    const/4 p2, 0x0

    .line 158
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:La3/c;

    .line 160
    :cond_9f
    return-object p1

    .line 161
    :cond_a0
    invoke-interface {v1}, Lp3/k0;->e()Ljava/util/concurrent/CancellationException;

    .line 164
    move-result-object p1

    .line 165
    throw p1
.end method

.method public emit(Ljava/lang/Object;La3/c;)Ljava/lang/Object;
    .registers 4
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "La3/c<",
            "-",
            "Ly2/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/internal/SafeCollector;->a(La3/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_c

    .line 5
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 7
    if-ne p1, p2, :cond_9

    .line 9
    return-object p1

    .line 10
    :cond_9
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 12
    return-object p1

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    new-instance v0, Lt3/a;

    .line 16
    invoke-interface {p2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 19
    move-result-object p2

    .line 20
    invoke-direct {v0, p2, p1}, Lt3/a;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 23
    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    .line 25
    throw p1
.end method

.method public getCallerFrame()Lc3/b;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:La3/c;

    .line 3
    instance-of v1, v0, Lc3/b;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Lc3/b;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    .line 3
    if-nez v0, :cond_6

    .line 5
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7
    :cond_6
    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_12

    .line 8
    :cond_7
    new-instance v1, Lt3/a;

    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/SafeCollector;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2, v0}, Lt3/a;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 17
    iput-object v1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    .line 19
    :goto_12
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:La3/c;

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-interface {v0, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 27
    :goto_1a
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    return-object p1
.end method

.method public releaseIntercepted()V
    .registers 1

    .line 1
    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    .line 4
    return-void
.end method
