.class public Lcom/android/cloud/widget/ListContainerView;
.super Landroid/widget/FrameLayout;
.source "ListContainerView.java"


# instance fields
.field private mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

.field private mHeaderView:Landroid/view/View;

.field private mNestedHeader:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/android/cloud/widget/ListContainerView;->initListView()V

    .line 7
    return-void
.end method

.method private initListView()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0038

    .line 8
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    const v0, 0x7f0a03d2

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 20
    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 22
    const v0, 0x7f0a036a

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 31
    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 33
    const v0, 0x102000a

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 42
    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 44
    const v0, 0x7f0a0163

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 53
    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 55
    const v0, 0x7f0a02ca

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mHeaderView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 66
    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 71
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mHeaderView:Landroid/view/View;

    .line 73
    const/16 v1, 0x8

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const v0, 0x7f0a02d8

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 87
    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedHeader:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 89
    return-void
.end method


# virtual methods
.method public display(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/cloud/widget/ListContainerView$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_20

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_20

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_1c

    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_18

    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_18

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/android/cloud/widget/ListContainerView;->showRecyclerView()V

    .line 28
    :goto_1b
    return-void

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lcom/android/cloud/widget/ListContainerView;->showLoading()V

    .line 32
    return-void

    .line 33
    :cond_20
    invoke-virtual {p0}, Lcom/android/cloud/widget/ListContainerView;->showNoFileView()V

    .line 36
    return-void
.end method

.method public getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedHeader:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    return-object v0
.end method

.method public getRecyclerView()Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object v0
.end method

.method public getSpringBackLayout()Lmiuix/springback/view/SpringBackLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 3
    return-object v0
.end method

.method public onLoadMoreComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 6
    return-void
.end method

.method public onRefreshComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 6
    return-void
.end method

.method public resetUi()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 8
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    return-void
.end method

.method public setEnablePrivate(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 6
    return-void
.end method

.method public setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 6
    return-void
.end method

.method public setRefreshAndLoadEnable(ZZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 11
    return-void
.end method

.method public showHeaderView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mHeaderView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method

.method public showLoading()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 9
    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 16
    const/16 v1, 0x8

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 23
    const/4 v1, 0x1

    .line 24
    const v2, 0x7f11020b

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 30
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public showNoFileView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 9
    iget-object v2, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 11
    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 16
    const/16 v2, 0x8

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1e

    .line 27
    const v0, 0x7f1100d7

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    const v0, 0x7f1100d6

    .line 34
    :goto_21
    iget-object v2, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZII)V

    .line 40
    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public showRecyclerView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 10
    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 23
    const/4 v2, -0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 27
    return-void
.end method
