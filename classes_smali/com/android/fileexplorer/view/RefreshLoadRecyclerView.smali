.class public Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
.super Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.source "RefreshLoadRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RefreshLoadRecyclerView"


# instance fields
.field private mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    return-void
.end method


# virtual methods
.method public attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->init(Lmiuix/springback/view/SpringBackLayout;)V

    :cond_7
    return-void
.end method

.method public canLoadMore()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->canLoadMore()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public enablePrivate()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->enablePrivate()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public forceRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->triggerPullToRefreshIndeterminate()V

    :cond_7
    return-void
.end method

.method public isActionRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->isActionRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onLoadMore()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->notifyListenerLoadMore()V

    :cond_7
    return-void
.end method

.method public onLoadMoreComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->onLoadMoreComplete()V

    :cond_7
    return-void
.end method

.method public onPullRefreshComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->onPullRefreshComplete()V

    :cond_7
    return-void
.end method

.method public setEnablePrivate(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_12

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->setEnablePrivate(Z)V

    :cond_16
    return-void
.end method

.method public setEnablePullLoad(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->setEnableLoadMore(Z)V

    :cond_7
    return-void
.end method

.method public setEnablePullRefresh(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->setEnablePullRefresh(Z)V

    :cond_7
    return-void
.end method

.method public setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->mViewHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->setPullListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    :cond_7
    return-void
.end method
