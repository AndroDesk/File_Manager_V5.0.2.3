.class public final Landroidx/recyclerview/widget/o;
.super Landroidx/recyclerview/widget/p;
.source "OrientationHelper.java"


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 12
    move-result p1

    .line 13
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    add-int/2addr p1, v0

    .line 16
    return p1
.end method

.method public final c(Landroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 12
    move-result p1

    .line 13
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    add-int/2addr p1, v1

    .line 16
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    add-int/2addr p1, v0

    .line 19
    return p1
.end method

.method public final d(Landroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 12
    move-result p1

    .line 13
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 15
    add-int/2addr p1, v1

    .line 16
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    add-int/2addr p1, v0

    .line 19
    return p1
.end method

.method public final e(Landroid/view/View;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 12
    move-result p1

    .line 13
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    sub-int/2addr p1, v0

    .line 16
    return p1
.end method

.method public final f()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final g()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final h()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final i()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final j()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final k()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final l()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final n(Landroid/view/View;)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 11
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 13
    return p1
.end method

.method public final o(Landroid/view/View;)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 11
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 13
    return p1
.end method

.method public final p(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 6
    return-void
.end method
