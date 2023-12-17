.class public Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;
.super Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
.source "RecentRecyclerView.java"


# instance fields
.field public mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

.field private mEnableCustomFastScroller:Z

.field private final mFirstViewVisibleLocation:Landroid/graphics/Rect;

.field private mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

.field private tempHeightSpec:I

.field private tempWidthSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    return-void
.end method


# virtual methods
.method public computeScrollOffset()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    .line 3
    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_37

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_17

    .line 23
    return v0

    .line 24
    :cond_17
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result v2

    .line 39
    invoke-interface {v1, v0, v2}, Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;->computeScrollOffset(II)I

    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    .line 45
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 47
    if-ltz v2, :cond_36

    .line 49
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 51
    if-ltz v1, :cond_36

    .line 53
    sub-int/2addr v1, v2

    .line 54
    sub-int/2addr v0, v1

    .line 55
    :cond_36
    return v0

    .line 56
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 59
    move-result v0

    .line 60
    return v0
.end method

.method public computeScrollPositionAndOffset(F)[I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    .line 3
    if-eqz v0, :cond_32

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_32

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-interface {v0, v1, v2, p1}, Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;->computeScrollPositionAndOffset(IIF)[I

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_32
    :goto_32
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public computeScrollRange()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v1

    .line 22
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;->computeScrollRange(I)I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    if-eqz p2, :cond_8

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempWidthSpec:I

    .line 7
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    .line 9
    :cond_8
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempWidthSpec:I

    .line 11
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    .line 13
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 16
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    if-eqz v1, :cond_e

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 18
    :goto_11
    return-void
.end method

.method public setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mEnableCustomFastScroller:Z

    .line 3
    if-eq v0, p1, :cond_4f

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mEnableCustomFastScroller:Z

    .line 7
    if-eqz p1, :cond_48

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 11
    if-nez p1, :cond_22

    .line 13
    new-instance p1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;-><init>(Landroid/content/Context;)V

    .line 22
    const v0, 0x7f120128

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setStyle(I)V

    .line 28
    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 30
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;-><init>(Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 35
    :cond_22
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f07023b

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setTopMargin(I)V

    .line 51
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v0

    .line 57
    const v1, 0x7f0701b5

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setBottomMargin(I)V

    .line 67
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 69
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->attach()V

    .line 72
    goto :goto_4f

    .line 73
    :cond_48
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 75
    if-eqz p1, :cond_4f

    .line 77
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->detach()V

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method

.method public setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setProportionTagAdapterProvider(Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setProportionTagAdapterProvider(Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setScrollBarMarginBottom(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setBottomMargin(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setScrollingCalculator(Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    .line 3
    return-void
.end method
