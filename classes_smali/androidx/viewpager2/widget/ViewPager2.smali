.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$b;,
        Landroidx/viewpager2/widget/ViewPager2$a;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/os/Parcelable;

.field public d:I


# virtual methods
.method public final canScrollHorizontally(I)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final canScrollVertically(I)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/Parcelable;

    .line 11
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_44

    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 19
    iget p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    .line 21
    const/4 v0, -0x1

    .line 22
    if-ne p1, v0, :cond_18

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_1f

    .line 31
    :goto_1e
    return-void

    .line 32
    :cond_1f
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/os/Parcelable;

    .line 34
    if-eqz v1, :cond_2f

    .line 36
    instance-of v3, p1, Landroidx/viewpager2/adapter/a;

    .line 38
    if-eqz v3, :cond_2d

    .line 40
    move-object v3, p1

    .line 41
    check-cast v3, Landroidx/viewpager2/adapter/a;

    .line 43
    invoke-interface {v3, v1}, Landroidx/viewpager2/adapter/a;->restoreState(Landroid/os/Parcelable;)V

    .line 46
    :cond_2d
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/os/Parcelable;

    .line 48
    :cond_2f
    const/4 v1, 0x0

    .line 49
    iget v3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 54
    move-result p1

    .line 55
    add-int/2addr p1, v0

    .line 56
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 59
    move-result p1

    .line 60
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 63
    move-result p1

    .line 64
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->a:I

    .line 66
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    .line 68
    throw v2

    .line 69
    :cond_44
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 71
    iget p1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    .line 73
    throw v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public getCurrentItem()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:I

    .line 3
    return v0
.end method

.method public getItemDecorationCount()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 3
    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public getPageSize()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    throw v1

    .line 9
    :cond_8
    throw v1
.end method

.method public getScrollState()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final onMeasure(II)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 5
    throw v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    .line 20
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    .line 22
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    .line 24
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/os/Parcelable;

    .line 26
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 7
    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-class v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " does not support direct child views"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setCurrentItem(I)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setLayoutDirection(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public setOffscreenPageLimit(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_e

    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p1, v0, :cond_e

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1

    .line 15
    :cond_e
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 17
    const/4 p1, 0x0

    .line 18
    throw p1
.end method

.method public setOrientation(I)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$b;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 4
    throw v0

    .line 5
    :cond_4
    throw v0
.end method

.method public setUserInputEnabled(Z)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
