.class public abstract Lkotlinx/coroutines/flow/AbstractFlow;
.super Ljava/lang/Object;
.source "Flow.kt"

# interfaces
.implements Ls3/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls3/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ls3/b;La3/c;)Ljava/lang/Object;
    .registers 8
    .param p1  # Ls3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/b<",
            "-TT;>;",
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
    instance-of v0, p2, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 10
    const/high16 v2, -0x80000000

    .line 12
    and-int v3, v1, v2

    .line 14
    if-eqz v3, :cond_13

    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;-><init>(Lkotlinx/coroutines/flow/AbstractFlow;La3/c;)V

    .line 25
    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->result:Ljava/lang/Object;

    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    iget v2, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_35

    .line 34
    if-ne v2, v3, :cond_2d

    .line 36
    iget-object p1, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->L$0:Ljava/lang/Object;

    .line 38
    check-cast p1, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 40
    :try_start_27
    invoke-static {p2}, Lkotlin/a;->d(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    .line 43
    goto :goto_57

    .line 44
    :catchall_2b
    move-exception p2

    .line 45
    goto :goto_61

    .line 46
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    :cond_35
    invoke-static {p2}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 57
    new-instance p2, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 59
    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 62
    move-result-object v2

    .line 63
    invoke-direct {p2, p1, v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Ls3/b;Lkotlin/coroutines/CoroutineContext;)V

    .line 66
    :try_start_41
    iput-object p2, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->L$0:Ljava/lang/Object;

    .line 68
    iput v3, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 70
    move-object p1, p0

    .line 71
    check-cast p1, Ls3/d;

    .line 73
    iget-object p1, p1, Ls3/d;->a:Lh3/p;

    .line 75
    invoke-interface {p1, p2, v0}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v1, :cond_51

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_5d

    .line 84
    :goto_53
    if-ne p1, v1, :cond_56

    .line 86
    return-object v1

    .line 87
    :cond_56
    move-object p1, p2

    .line 88
    :goto_57
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 91
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 93
    return-object p1

    .line 94
    :catchall_5d
    move-exception p1

    .line 95
    move-object v4, p2

    .line 96
    move-object p2, p1

    .line 97
    move-object p1, v4

    .line 98
    :goto_61
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 101
    throw p2
.end method
