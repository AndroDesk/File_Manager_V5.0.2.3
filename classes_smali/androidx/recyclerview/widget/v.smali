.class public abstract Landroidx/recyclerview/widget/v;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source "SnapHelper.java"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Landroid/widget/Scroller;

.field public final c:Landroidx/recyclerview/widget/v$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/v$a;

    .line 6
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/v$a;-><init>(Landroidx/recyclerview/widget/v;)V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/v;->c:Landroidx/recyclerview/widget/v$a;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz v0, :cond_12

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/v;->c:Landroidx/recyclerview/widget/v$a;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 19
    :cond_12
    iput-object p1, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    if-eqz p1, :cond_46

    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$q;

    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_3e

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->c:Landroidx/recyclerview/widget/v$a;

    .line 33
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 41
    new-instance p1, Landroid/widget/Scroller;

    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 51
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 54
    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 57
    iput-object p1, p0, Landroidx/recyclerview/widget/v;->b:Landroid/widget/Scroller;

    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->f()V

    .line 62
    goto :goto_46

    .line 63
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    const-string v0, "An instance of OnFlingListener already set."

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    :cond_46
    :goto_46
    return-void
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$x;
    .registers 3

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_11

    .line 7
    :cond_6
    new-instance p1, Landroidx/recyclerview/widget/w;

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/w;-><init>(Landroidx/recyclerview/widget/v;Landroid/content/Context;)V

    .line 18
    :goto_11
    return-object p1
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
.end method

.method public abstract e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
.end method

.method public final f()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/v;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    aget v1, v0, v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-nez v1, :cond_21

    .line 30
    aget v3, v0, v2

    .line 32
    if-eqz v3, :cond_28

    .line 34
    :cond_21
    iget-object v3, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    aget v0, v0, v2

    .line 38
    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 41
    :cond_28
    return-void
.end method

.method public final onFling(II)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    iget-object v2, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    iget-object v2, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    .line 25
    move-result v2

    .line 26
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    if-gt v3, v2, :cond_26

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 36
    move-result v3

    .line 37
    if-le v3, v2, :cond_45

    .line 39
    :cond_26
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 41
    if-nez v2, :cond_2c

    .line 43
    :goto_2a
    move p1, v1

    .line 44
    goto :goto_42

    .line 45
    :cond_2c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/v;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$x;

    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_33

    .line 51
    goto :goto_2a

    .line 52
    :cond_33
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/v;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    .line 55
    move-result p1

    .line 56
    const/4 p2, -0x1

    .line 57
    if-ne p1, p2, :cond_3b

    .line 59
    goto :goto_2a

    .line 60
    :cond_3b
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$x;->setTargetPosition(I)V

    .line 63
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 66
    move p1, v4

    .line 67
    :goto_42
    if-eqz p1, :cond_45

    .line 69
    move v1, v4

    .line 70
    :cond_45
    return v1
.end method
