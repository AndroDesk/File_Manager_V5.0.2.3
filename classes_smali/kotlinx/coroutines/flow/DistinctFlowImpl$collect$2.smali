.class public final Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;
.super Ljava/lang/Object;
.source "Distinct.kt"

# interfaces
.implements Ls3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/DistinctFlowImpl;->a(Ls3/b;La3/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls3/b;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/DistinctFlowImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/DistinctFlowImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ls3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Ls3/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/DistinctFlowImpl<",
            "TT;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Ls3/b<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->a:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iput-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->c:Ls3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;La3/c;)Ljava/lang/Object;
    .registers 8
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
    instance-of v0, p2, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 10
    const/high16 v2, -0x80000000

    .line 12
    and-int v3, v1, v2

    .line 14
    if-eqz v3, :cond_13

    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;La3/c;)V

    .line 25
    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->result:Ljava/lang/Object;

    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    iget v2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2f

    .line 34
    if-ne v2, v3, :cond_27

    .line 36
    invoke-static {p2}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 39
    goto :goto_65

    .line 40
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1

    .line 48
    :cond_2f
    invoke-static {p2}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 51
    iget-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->a:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 53
    iget-object p2, p2, Lkotlinx/coroutines/flow/DistinctFlowImpl;->b:Lh3/l;

    .line 55
    invoke-interface {p2, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p2

    .line 59
    iget-object v2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 63
    sget-object v4, Lt3/c;->a:Lu3/r;

    .line 65
    if-eq v2, v4, :cond_56

    .line 67
    iget-object v4, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->a:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 69
    iget-object v4, v4, Lkotlinx/coroutines/flow/DistinctFlowImpl;->c:Lh3/p;

    .line 71
    invoke-interface {v4, v2, p2}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Boolean;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_53

    .line 83
    goto :goto_56

    .line 84
    :cond_53
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 86
    return-object p1

    .line 87
    :cond_56
    :goto_56
    iget-object v2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 89
    iput-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 91
    iget-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->c:Ls3/b;

    .line 93
    iput v3, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 95
    invoke-interface {p2, p1, v0}, Ls3/b;->emit(Ljava/lang/Object;La3/c;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v1, :cond_65

    .line 101
    return-object v1

    .line 102
    :cond_65
    :goto_65
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 104
    return-object p1
.end method
