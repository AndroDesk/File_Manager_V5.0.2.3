.class public final Landroidx/recyclerview/widget/l;
.super Landroidx/recyclerview/widget/v;
.source "LinearSnapHelper.java"


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
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->k()I

    move-result v4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->l()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v2, v4

    sub-int/2addr v5, v2

    aput v5, v1, v3

    goto :goto_28

    :cond_26
    aput v3, v1, v3

    :goto_28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4b

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr p2, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->l()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    sub-int/2addr p2, p1

    aput p2, v1, v4

    goto :goto_4d

    :cond_4b
    aput v3, v1, v4

    :goto_4d
    return-object v1
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/l;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/l;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 12

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_14

    return v1

    :cond_14
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_1b

    return v1

    :cond_1b
    move-object v3, p1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$x$b;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_27

    return v1

    :cond_27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_3f

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p2, v7}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;II)I

    move-result p2

    iget v5, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_40

    neg-int p2, p2

    goto :goto_40

    :cond_3f
    move p2, v7

    :cond_40
    :goto_40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v7, p3}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;II)I

    move-result p3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_57

    neg-int p3, p3

    goto :goto_57

    :cond_56
    move p3, v7

    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_5e

    move p2, p3

    :cond_5e
    if-nez p2, :cond_61

    return v1

    :cond_61
    add-int/2addr v2, p2

    if-gez v2, :cond_65

    goto :goto_66

    :cond_65
    move v7, v2

    :goto_66
    if-lt v7, v0, :cond_69

    goto :goto_6a

    :cond_69
    move v4, v7

    :goto_6a
    return v4
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;II)I
    .registers 16

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p3, p0, Landroidx/recyclerview/widget/v;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    move-result p3

    const/4 p4, 0x0

    aput p3, v0, p4

    iget-object p3, p0, Landroidx/recyclerview/widget/v;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalY()I

    move-result p3

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez p3, :cond_31

    goto :goto_7c

    :cond_31
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move v7, p4

    move v6, v5

    move v5, v4

    move-object v4, v3

    :goto_3b
    if-ge v7, p3, :cond_54

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_49

    goto :goto_51

    :cond_49
    if-ge v9, v5, :cond_4d

    move-object v3, v8

    move v5, v9

    :cond_4d
    if-le v9, v6, :cond_51

    move-object v4, v8

    move v6, v9

    :cond_51
    :goto_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :cond_54
    if-eqz v3, :cond_7c

    if-nez v4, :cond_59

    goto :goto_7c

    :cond_59
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_75

    goto :goto_7c

    :cond_75
    int-to-float p1, p2

    mul-float/2addr p1, v2

    sub-int/2addr v6, v5

    add-int/2addr v6, v1

    int-to-float p2, v6

    div-float v2, p1, p2

    :cond_7c
    :goto_7c
    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_82

    return p4

    :cond_82
    aget p1, v0, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, v0, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_93

    aget p1, v0, p4

    goto :goto_95

    :cond_93
    aget p1, v0, v1

    :goto_95
    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

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

    iget-object v0, p0, Landroidx/recyclerview/widget/l;->e:Landroidx/recyclerview/widget/n;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_f

    :cond_8
    new-instance v0, Landroidx/recyclerview/widget/n;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/l;->e:Landroidx/recyclerview/widget/n;

    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->e:Landroidx/recyclerview/widget/n;

    return-object p1
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/o;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_f

    :cond_8
    new-instance v0, Landroidx/recyclerview/widget/o;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/o;

    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/o;

    return-object p1
.end method
