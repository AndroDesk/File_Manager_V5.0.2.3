.class final Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FoldingFeatureObserver.kt"

# interfaces
.implements Lh3/p;


# annotations
.annotation runtime Lc3/c;
    c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1"
    f = "FoldingFeatureObserver.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh3/p<",
        "Lp3/t;",
        "La3/c<",
        "-",
        "Ly2/e;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $activity:Landroid/app/Activity;

.field public label:I

.field public final synthetic this$0:Landroidx/slidingpanelayout/widget/a;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/a;Landroid/app/Activity;La3/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slidingpanelayout/widget/a;",
            "Landroid/app/Activity;",
            "La3/c<",
            "-",
            "Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->this$0:Landroidx/slidingpanelayout/widget/a;

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILa3/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La3/c;)La3/c;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La3/c<",
            "*>;)",
            "La3/c<",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->this$0:Landroidx/slidingpanelayout/widget/a;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->$activity:Landroid/app/Activity;

    invoke-direct {p1, v0, v1, p2}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;-><init>(Landroidx/slidingpanelayout/widget/a;Landroid/app/Activity;La3/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lp3/t;

    check-cast p2, La3/c;

    invoke-virtual {p0, p1, p2}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->invoke(Lp3/t;La3/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lp3/t;La3/c;)Ljava/lang/Object;
    .registers 3
    .param p1  # Lp3/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/t;",
            "La3/c<",
            "-",
            "Ly2/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->create(Ljava/lang/Object;La3/c;)La3/c;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;

    sget-object p2, Ly2/e;->a:Ly2/e;

    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget v1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->label:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_15

    .line 8
    if-ne v1, v2, :cond_d

    .line 10
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 13
    goto :goto_58

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1

    .line 22
    :cond_15
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->this$0:Landroidx/slidingpanelayout/widget/a;

    .line 27
    iget-object p1, p1, Landroidx/slidingpanelayout/widget/a;->a:Landroidx/window/layout/n;

    .line 29
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->$activity:Landroid/app/Activity;

    .line 31
    invoke-interface {p1, v1}, Landroidx/window/layout/n;->a(Landroid/app/Activity;)Ls3/d;

    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->this$0:Landroidx/slidingpanelayout/widget/a;

    .line 37
    new-instance v3, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1;

    .line 39
    invoke-direct {v3, p1, v1}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1;-><init>(Ls3/a;Landroidx/slidingpanelayout/widget/a;)V

    .line 42
    sget-object p1, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->a:Lh3/l;

    .line 44
    instance-of p1, v3, Ls3/c;

    .line 46
    if-eqz p1, :cond_30

    .line 48
    goto :goto_4a

    .line 49
    :cond_30
    sget-object p1, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->a:Lh3/l;

    .line 51
    sget-object v4, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->b:Lh3/p;

    .line 53
    instance-of v5, v3, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 55
    if-eqz v5, :cond_44

    .line 57
    move-object v5, v3

    .line 58
    check-cast v5, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 60
    iget-object v6, v5, Lkotlinx/coroutines/flow/DistinctFlowImpl;->b:Lh3/l;

    .line 62
    if-ne v6, p1, :cond_44

    .line 64
    iget-object p1, v5, Lkotlinx/coroutines/flow/DistinctFlowImpl;->c:Lh3/p;

    .line 66
    if-ne p1, v4, :cond_44

    .line 68
    goto :goto_4a

    .line 69
    :cond_44
    new-instance p1, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 71
    invoke-direct {p1, v3}, Lkotlinx/coroutines/flow/DistinctFlowImpl;-><init>(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1;)V

    .line 74
    move-object v3, p1

    .line 75
    :goto_4a
    new-instance p1, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$a;

    .line 77
    invoke-direct {p1, v1}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$a;-><init>(Landroidx/slidingpanelayout/widget/a;)V

    .line 80
    iput v2, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->label:I

    .line 82
    invoke-interface {v3, p1, p0}, Ls3/a;->a(Ls3/b;La3/c;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_58

    .line 88
    return-object v0

    .line 89
    :cond_58
    :goto_58
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 91
    return-object p1
.end method
