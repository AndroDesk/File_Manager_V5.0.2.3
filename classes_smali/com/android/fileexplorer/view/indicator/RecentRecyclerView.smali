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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    return-void
.end method


# virtual methods
.method public computeScrollOffset()I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_37

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    :cond_17
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;->computeScrollOffset(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mFirstViewVisibleLocation:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_36

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ltz v1, :cond_36

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_36
    return v0

    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeScrollPositionAndOffset(F)[I
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_32

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, p1}, Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;->computeScrollPositionAndOffset(IIF)[I

    move-result-object p1

    return-object p1

    :cond_32
    :goto_32
    const/4 p1, 0x0

    return-object p1
.end method

.method public computeScrollRange()I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;->computeScrollRange(I)I

    move-result v0

    return v0

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .registers 3

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempWidthSpec:I

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    :cond_8
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempWidthSpec:I

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->tempHeightSpec:I

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_e

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_11
    return-void
.end method

.method public setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    :cond_7
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mEnableCustomFastScroller:Z

    if-eq v0, p1, :cond_4f

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mEnableCustomFastScroller:Z

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    if-nez p1, :cond_22

    new-instance p1, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120128

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setStyle(I)V

    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;-><init>(Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    :cond_22
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07023b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setTopMargin(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setBottomMargin(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->attach()V

    goto :goto_4f

    :cond_48
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->detach()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    :cond_7
    return-void
.end method

.method public setProportionTagAdapterProvider(Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setProportionTagAdapterProvider(Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;)V

    :cond_7
    return-void
.end method

.method public setScrollBarMarginBottom(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mCustomFastScroller:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setBottomMargin(I)V

    :cond_7
    return-void
.end method

.method public setScrollingCalculator(Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->mScrollingCalculator:Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;

    return-void
.end method
