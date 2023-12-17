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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final canScrollVertically(I)Z
    .registers 2

    const/4 p1, 0x0

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

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    const/4 v2, 0x0

    if-nez v1, :cond_44

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    iget p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_18

    goto :goto_1e

    :cond_18
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/os/Parcelable;

    if-eqz v1, :cond_2f

    instance-of v3, p1, Landroidx/viewpager2/adapter/a;

    if-eqz v3, :cond_2d

    move-object v3, p1

    check-cast v3, Landroidx/viewpager2/adapter/a;

    invoke-interface {v3, v1}, Landroidx/viewpager2/adapter/a;->restoreState(Landroid/os/Parcelable;)V

    :cond_2d
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/os/Parcelable;

    :cond_2f
    const/4 v1, 0x0

    iget v3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->a:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    throw v2

    :cond_44
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget p1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    throw v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:I

    return v0
.end method

.method public getItemDecorationCount()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageSize()I
    .registers 3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    throw v1

    :cond_8
    throw v1
.end method

.method public getScrollState()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    const/4 p1, 0x0

    throw p1
.end method

.method public final onMeasure(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    throw v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroid/os/Parcelable;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not support direct child views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 3

    const/4 p1, 0x0

    throw p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setCurrentItem(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setLayoutDirection(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setOffscreenPageLimit(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    const/4 p1, 0x0

    throw p1
.end method

.method public setOrientation(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$b;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    throw v0

    :cond_4
    throw v0
.end method

.method public setUserInputEnabled(Z)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method
