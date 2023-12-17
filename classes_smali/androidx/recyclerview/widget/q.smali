.class public Landroidx/recyclerview/widget/q;
.super Landroidx/recyclerview/widget/v;
.source "PagerSnapHelper.java"


# instance fields
.field public d:Landroidx/recyclerview/widget/o;

.field public e:Landroidx/recyclerview/widget/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_17

    :cond_15
    aput v2, v0, v2

    :goto_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_2b

    :cond_29
    aput v2, v0, v3

    :goto_2b
    return-object v0
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$x;
    .registers 3

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Landroidx/recyclerview/widget/q$a;

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/q$a;-><init>(Landroidx/recyclerview/widget/q;Landroid/content/Context;)V

    return-object p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 16

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v2

    goto :goto_20

    :cond_14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v2

    goto :goto_20

    :cond_1f
    move-object v2, v3

    :goto_20
    if-nez v2, :cond_23

    return v1

    :cond_23
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    move v8, v5

    move v9, v7

    move v5, v4

    move-object v4, v3

    :goto_31
    if-ge v9, v6, :cond_4d

    invoke-virtual {p1, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_3a

    goto :goto_4a

    :cond_3a
    invoke-virtual {p0, v10, v2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I

    move-result v11

    if-gtz v11, :cond_44

    if-le v11, v5, :cond_44

    move-object v4, v10

    move v5, v11

    :cond_44
    if-ltz v11, :cond_4a

    if-ge v11, v8, :cond_4a

    move-object v3, v10

    move v8, v11

    :cond_4a
    :goto_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_4d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_57

    if-lez p2, :cond_5b

    goto :goto_59

    :cond_57
    if-lez p3, :cond_5b

    :goto_59
    move p2, v5

    goto :goto_5c

    :cond_5b
    move p2, v7

    :goto_5c
    if-eqz p2, :cond_65

    if-eqz v3, :cond_65

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_65
    if-nez p2, :cond_6e

    if-eqz v4, :cond_6e

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_6e
    if-eqz p2, :cond_71

    move-object v3, v4

    :cond_71
    if-nez v3, :cond_74

    return v1

    :cond_74
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    instance-of v3, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    if-eqz v3, :cond_97

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    sub-int/2addr v2, v5

    invoke-interface {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$x$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_97

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_96

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_97

    :cond_96
    move v7, v5

    :cond_97
    if-ne v7, p2, :cond_9a

    move v5, v1

    :cond_9a
    add-int/2addr p3, v5

    if-ltz p3, :cond_a1

    if-lt p3, v0, :cond_a0

    goto :goto_a1

    :cond_a0
    return p3

    :cond_a1
    :goto_a1
    return v1
.end method

.method public final g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I
    .registers 4

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->k()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->l()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;
    .registers 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->k()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v0, :cond_34

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_31

    move-object v1, v5

    move v2, v6

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_34
    return-object v1
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->e:Landroidx/recyclerview/widget/n;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_f

    :cond_8
    new-instance v0, Landroidx/recyclerview/widget/n;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->e:Landroidx/recyclerview/widget/n;

    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/q;->e:Landroidx/recyclerview/widget/n;

    return-object p1
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->d:Landroidx/recyclerview/widget/o;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_f

    :cond_8
    new-instance v0, Landroidx/recyclerview/widget/o;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->d:Landroidx/recyclerview/widget/o;

    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/q;->d:Landroidx/recyclerview/widget/o;

    return-object p1
.end method
