.class public Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout:[I

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->setOverlayTop(I)V

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static getAppBarLayoutOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 9
    instance-of v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;

    .line 11
    if-eqz v0, :cond_13

    .line 13
    check-cast p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 9
    instance-of v1, v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;

    .line 11
    if-eqz v1, :cond_2b

    .line 13
    check-cast v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->access$000(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;)I

    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getVerticalLayoutGap()I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    .line 37
    move-result p2

    .line 38
    sub-int/2addr v0, p2

    .line 39
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 44
    :cond_2b
    return-void
.end method

.method private updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1
    instance-of v0, p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    check-cast p2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 7
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->isLiftOnScroll()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 20
    :cond_13
    return-void
.end method


# virtual methods
.method public bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method public findFirstDependency(Ljava/util/List;)Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    instance-of v3, v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    if-eqz v3, :cond_14

    .line 5
    check-cast v2, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    return-object v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getLeftAndRightOffset()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_24

    .line 6
    check-cast p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    .line 15
    move-result v2

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)I

    .line 19
    move-result p1

    .line 20
    if-eqz v2, :cond_1a

    .line 22
    add-int v3, v0, p1

    .line 24
    if-gt v3, v2, :cond_1a

    .line 26
    return v1

    .line 27
    :cond_1a
    sub-int/2addr v0, v2

    .line 28
    if-eqz v0, :cond_24

    .line 30
    const/high16 v1, 0x3f800000  # 1.0f

    .line 32
    int-to-float p1, p1

    .line 33
    int-to-float v0, v0

    .line 34
    div-float/2addr p1, v0

    .line 35
    add-float/2addr p1, v1

    .line 36
    return p1

    .line 37
    :cond_24
    return v1
.end method

.method public getScrollRange(Landroid/view/View;)I
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isHorizontalOffsetEnabled()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->isHorizontalOffsetEnabled()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isVerticalOffsetEnabled()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->isVerticalOffsetEnabled()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 1
    instance-of p1, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;->updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1
    instance-of p2, p3, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    if-eqz p2, :cond_1d

    .line 5
    sget-object p2, Ln0/c$a;->f:Ln0/c$a;

    .line 7
    invoke-virtual {p2}, Ln0/c$a;->a()I

    .line 10
    move-result p2

    .line 11
    invoke-static {p2, p1}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-static {p2, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 18
    sget-object p3, Ln0/c$a;->g:Ln0/c$a;

    .line 20
    invoke-virtual {p3}, Ln0/c$a;->a()I

    .line 23
    move-result p3

    .line 24
    invoke-static {p3, p1}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 27
    invoke-static {p2, p1}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 8

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_30

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 19
    move-result p2

    .line 20
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 23
    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 32
    move-result p1

    .line 33
    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_30

    .line 42
    const/4 p1, 0x1

    .line 43
    xor-int/lit8 p2, p4, 0x1

    .line 45
    invoke-virtual {v0, v1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 48
    return p1

    .line 49
    :cond_30
    return v1
.end method

.method public bridge synthetic setHorizontalOffsetEnabled(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setHorizontalOffsetEnabled(Z)V

    .line 4
    return-void
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setLeftAndRightOffset(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setVerticalOffsetEnabled(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setVerticalOffsetEnabled(Z)V

    .line 4
    return-void
.end method
