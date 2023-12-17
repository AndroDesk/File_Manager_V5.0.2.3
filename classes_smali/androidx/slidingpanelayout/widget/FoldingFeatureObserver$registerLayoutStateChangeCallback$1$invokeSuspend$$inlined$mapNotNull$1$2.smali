.class public final Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Ls3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1;->a(Ls3/b;La3/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/b<",
        "Landroidx/window/layout/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls3/b;

.field public final synthetic b:Landroidx/slidingpanelayout/widget/a;


# direct methods
.method public constructor <init>(Ls3/b;Landroidx/slidingpanelayout/widget/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2;->a:Ls3/b;

    .line 3
    iput-object p2, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2;->b:Landroidx/slidingpanelayout/widget/a;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;La3/c;)Ljava/lang/Object;
    .registers 9
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;

    .line 8
    iget v1, v0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->label:I

    .line 10
    const/high16 v2, -0x80000000

    .line 12
    and-int v3, v1, v2

    .line 14
    if-eqz v3, :cond_13

    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->label:I

    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;

    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;-><init>(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2;La3/c;)V

    .line 25
    :goto_18
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    iget v2, v0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->label:I

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2f

    .line 34
    if-ne v2, v3, :cond_27

    .line 36
    invoke-static {p2}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 39
    goto :goto_68

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
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2;->a:Ls3/b;

    .line 53
    check-cast p1, Landroidx/window/layout/r;

    .line 55
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2;->b:Landroidx/slidingpanelayout/widget/a;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget-object p1, p1, Landroidx/window/layout/r;->a:Ljava/util/List;

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p1

    .line 66
    :cond_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v2

    .line 70
    const/4 v4, 0x0

    .line 71
    if-eqz v2, :cond_54

    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 77
    move-object v5, v2

    .line 78
    check-cast v5, Landroidx/window/layout/c;

    .line 80
    instance-of v5, v5, Landroidx/window/layout/h;

    .line 82
    if-eqz v5, :cond_41

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move-object v2, v4

    .line 86
    :goto_55
    instance-of p1, v2, Landroidx/window/layout/h;

    .line 88
    if-eqz p1, :cond_5c

    .line 90
    move-object v4, v2

    .line 91
    check-cast v4, Landroidx/window/layout/h;

    .line 93
    :cond_5c
    if-nez v4, :cond_5f

    .line 95
    goto :goto_68

    .line 96
    :cond_5f
    iput v3, v0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->label:I

    .line 98
    invoke-interface {p2, v4, v0}, Ls3/b;->emit(Ljava/lang/Object;La3/c;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v1, :cond_68

    .line 104
    return-object v1

    .line 105
    :cond_68
    :goto_68
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 107
    return-object p1
.end method
