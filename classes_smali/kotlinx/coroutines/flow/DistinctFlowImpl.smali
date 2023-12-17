.class public final Lkotlinx/coroutines/flow/DistinctFlowImpl;
.super Ljava/lang/Object;
.source "Distinct.kt"

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


# instance fields
.field public final a:Ls3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lh3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/l<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lh3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1;)V
    .registers 4
    .param p1  # Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->a:Lh3/l;

    .line 3
    sget-object v1, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->b:Lh3/p;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->a:Ls3/a;

    .line 10
    iput-object v0, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->b:Lh3/l;

    .line 12
    iput-object v1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->c:Lh3/p;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ls3/b;La3/c;)Ljava/lang/Object;
    .registers 6
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
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 6
    sget-object v1, Lt3/c;->a:Lu3/r;

    .line 8
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->a:Ls3/a;

    .line 12
    new-instance v2, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;

    .line 14
    invoke-direct {v2, p0, v0, p1}, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Ls3/b;)V

    .line 17
    invoke-interface {v1, v2, p2}, Ls3/a;->a(Ls3/b;La3/c;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    if-ne p1, p2, :cond_19

    .line 25
    return-object p1

    .line 26
    :cond_19
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 28
    return-object p1
.end method
