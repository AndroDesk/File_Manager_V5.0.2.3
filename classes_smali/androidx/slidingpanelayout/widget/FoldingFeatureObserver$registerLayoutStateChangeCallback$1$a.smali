.class public final Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Ls3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/b<",
        "Landroidx/window/layout/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/slidingpanelayout/widget/a;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$a;->a:Landroidx/slidingpanelayout/widget/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;La3/c;)Ljava/lang/Object;
    .registers 6
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/layout/h;",
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
    check-cast p1, Landroidx/window/layout/h;

    .line 3
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$a;->a:Landroidx/slidingpanelayout/widget/a;

    .line 5
    iget-object p2, p2, Landroidx/slidingpanelayout/widget/a;->d:Landroidx/slidingpanelayout/widget/a$a;

    .line 7
    if-nez p2, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_33

    .line 11
    :cond_a
    check-cast p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    .line 13
    iget-object v0, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 15
    iput-object p1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    .line 17
    new-instance p1, Lf1/b;

    .line 19
    invoke-direct {p1}, Lf1/b;-><init>()V

    .line 22
    const-wide/16 v0, 0x12c

    .line 24
    invoke-virtual {p1, v0, v1}, Lf1/n;->setDuration(J)Lf1/n;

    .line 27
    const v0, 0x3e4ccccd  # 0.2f

    .line 30
    const/4 v1, 0x0

    .line 31
    const/high16 v2, 0x3f800000  # 1.0f

    .line 33
    invoke-static {v0, v1, v1, v2}, Lo0/a;->b(FFFF)Landroid/view/animation/PathInterpolator;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    .line 40
    iget-object v0, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 42
    invoke-static {v0, p1}, Lf1/p;->a(Landroid/view/ViewGroup;Lf1/n;)V

    .line 45
    iget-object p1, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->a:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 50
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 52
    :goto_33
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 54
    if-ne p1, p2, :cond_38

    .line 56
    return-object p1

    .line 57
    :cond_38
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 59
    return-object p1
.end method
