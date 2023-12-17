.class public Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;
.source "PadAppCategoryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadAppCategoryFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 3
    return p0
.end method

.method private getMarginMiddle()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_3_4Layout(I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2d

    .line 9
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_16_9Layout(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_2d

    .line 18
    :cond_11
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_4_3Layout(I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1d

    .line 26
    const v0, 0x7f0706c9

    .line 29
    return v0

    .line 30
    :cond_1d
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_29

    .line 38
    const v0, 0x7f070249

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const v0, 0x7f070248

    .line 45
    :goto_2c
    return v0

    .line 46
    :cond_2d
    :goto_2d
    const v0, 0x7f0706c7

    .line 49
    return v0
.end method

.method private initActionBar()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "bundle_key_istobackstack"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setAppActionbar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    .line 22
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$2;

    .line 32
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    .line 41
    return-void
.end method


# virtual methods
.method public addItemDecoration()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 8
    if-eqz v1, :cond_c

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 15
    if-eqz v0, :cond_17

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 26
    if-eqz v0, :cond_22

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 32
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 35
    :cond_22
    return-void
.end method

.method public controlSearchDisplay()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02d8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public initItemDecoration()V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f07028f

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f070756

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v2

    .line 40
    const v3, 0x7f070085

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v3

    .line 51
    const v4, 0x7f070080

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result v3

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v4

    .line 62
    const v5, 0x7f07007f

    .line 65
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    move-result v4

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v5

    .line 73
    const v6, 0x7f07007e

    .line 76
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    move-result v5

    .line 80
    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 82
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 85
    move-result v7

    .line 86
    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    .line 89
    iput-object v6, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 91
    invoke-virtual {v6, v4, v2, v3, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 94
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$3;

    .line 96
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$3;-><init>(Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;)V

    .line 99
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 101
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;->initActionBar()V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 9
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$1;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V

    .line 17
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 19
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 24
    const v1, 0x7f0a02d8

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 33
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 40
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onBack()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    if-eqz v0, :cond_f

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setNavigationChanging(Z)V

    .line 16
    :cond_f
    if-eqz p1, :cond_14

    .line 18
    const/4 v0, 0x2

    .line 19
    if-ne p1, v0, :cond_1b

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 28
    :cond_1b
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    if-eqz v1, :cond_37

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 44
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 56
    :cond_37
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_1f

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;->removeItemDecoration()V

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;->initItemDecoration()V

    .line 8
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;->addItemDecoration()V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 10
    :cond_1f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;->initActionBar()V

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onUserVisible(Z)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    .line 15
    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 8
    if-eqz v1, :cond_c

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 15
    if-eqz v0, :cond_17

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 26
    if-eqz v0, :cond_22

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 32
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 35
    :cond_22
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_18

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 17
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->setActionBarTitle()V

    .line 28
    :goto_1b
    return-void
.end method
