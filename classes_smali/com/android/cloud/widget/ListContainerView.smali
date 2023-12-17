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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/cloud/widget/ListContainerView;->initListView()V

    return-void
.end method

.method private initListView()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0038

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f032e44

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const v0, 0x7f032efc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const v0, 0x7f032f5c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032f4e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedHeader:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    return-void
.end method


# virtual methods
.method public display(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 3

    sget-object v0, Lcom/android/cloud/widget/ListContainerView$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x5

    if-eq p1, v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {p0}, Lcom/android/cloud/widget/ListContainerView;->showRecyclerView()V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/android/cloud/widget/ListContainerView;->showLoading()V

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/android/cloud/widget/ListContainerView;->showNoFileView()V

    return-void
.end method

.method public getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedHeader:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    return-object v0
.end method

.method public getRecyclerView()Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    return-object v0
.end method

.method public getSpringBackLayout()Lmiuix/springback/view/SpringBackLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    return-object v0
.end method

.method public onLoadMoreComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    return-void
.end method

.method public onRefreshComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    return-void
.end method

.method public resetUi()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setEnablePrivate(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    return-void
.end method

.method public setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    return-void
.end method

.method public setRefreshAndLoadEnable(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    return-void
.end method

.method public showHeaderView()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v1, 0x1

    const v2, 0x7f11020b

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showNoFileView()V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v2, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f1100d7

    goto :goto_21

    :cond_1e
    const v0, 0x7f1100d6

    :goto_21
    iget-object v2, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZII)V

    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showRecyclerView()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/widget/ListContainerView;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    return-void
.end method
