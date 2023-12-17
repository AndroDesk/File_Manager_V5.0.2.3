.class public Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorFavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;,
        Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FavoriteFragment"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mFavoriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

.field private mIsLoading:Z

.field private mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$LoadGroupTask;

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRootView:Landroid/view/View;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSortTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mIsLoading:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->loadGroupList()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->onFavoriteListItemClick(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->removeFavList(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 15
    const-string v0, "FavoriteFragment"

    .line 17
    const-string v1, "handleClickMenuSort"

    .line 19
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 33
    if-ne p1, v0, :cond_26

    .line 35
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->loadGroupList()V

    .line 38
    goto :goto_3e

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mSortTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;

    .line 41
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 44
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0, p0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Ljava/util/ArrayList;)V

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mSortTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;

    .line 53
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 56
    move-result-object p1

    .line 57
    const/4 v1, 0x0

    .line 58
    new-array v1, v1, [Ljava/lang/Void;

    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    :goto_3e
    return-void
.end method

.method private iniListAdapter()V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->refreshAdapter(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 22
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$3;

    .line 24
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 30
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$4;

    .line 32
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 34
    new-instance v7, Lcom/android/cloud/fragment/presenter/b;

    .line 36
    const/16 v1, 0x8

    .line 38
    invoke-direct {v7, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 41
    const/16 v6, 0xb

    .line 43
    move-object v2, v0

    .line 44
    move-object v3, p0

    .line 45
    move-object v4, p0

    .line 46
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;ILcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;)V

    .line 49
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 51
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 56
    return-void
.end method

.method private iniView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a0163

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a03d2

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a036a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->initListView()V

    .line 43
    return-void
.end method

.method private initListView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x102000a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 32
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 37
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->iniListAdapter()V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 45
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$2;

    .line 47
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 53
    return-void
.end method

.method private loadGroupList()V
    .registers 4

    .line 1
    const-string v0, "loadGroupList: isLoading = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mIsLoading:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", category = Fav"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "FavoriteFragment"

    .line 23
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mIsLoading:Z

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mIsLoading:Z

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$LoadGroupTask;

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 39
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$LoadGroupTask;

    .line 41
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$LoadGroupTask;

    .line 46
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x0

    .line 51
    new-array v2, v2, [Ljava/lang/Void;

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;-><init>()V

    .line 6
    return-object v0
.end method

.method private onFavoriteListItemClick(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 9
    iget-object v0, p1, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 16
    if-eqz v1, :cond_19

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 20
    iget-object p1, p1, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    .line 22
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 28
    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 31
    :goto_1e
    return-void
.end method

.method private refreshAdapter(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 8
    const/16 v1, 0xb

    .line 10
    if-nez v0, :cond_18

    .line 12
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 27
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 29
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 34
    const/16 v2, 0x1e

    .line 36
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 39
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 41
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 43
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 50
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 53
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    if-eqz p1, :cond_40

    .line 60
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 65
    :cond_40
    return-void
.end method

.method private removeFavList(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/activity/BaseActivity;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p2

    .line 14
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_27

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_21

    .line 33
    return v2

    .line 34
    :cond_21
    iget-object v1, v1, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_d

    .line 40
    :cond_27
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->deleteByLocation(Ljava/util/List;Z)V

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method private updateAdapter()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->showEmptyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    :cond_a
    return-void
.end method


# virtual methods
.method public handleLoadDataResult(Lcom/android/fileexplorer/fragment/FavoriteController$ResultHolder;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mIsLoading:Z

    .line 4
    if-eqz p1, :cond_15

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FavoriteController$ResultHolder;->getList()Ljava/util/ArrayList;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_15

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FavoriteController$ResultHolder;->getList()Ljava/util/ArrayList;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 22
    :cond_15
    const/4 v0, 0x1

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 28
    if-nez v0, :cond_26

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FavoriteController$ResultHolder;->getList()Ljava/util/ArrayList;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 41
    const-string v0, "FavoriteFragment"

    .line 43
    if-eqz p1, :cond_49

    .line 45
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v1, "handleLoadDataResult onPullRefreshComplete mFavoriteList size = "

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_49
    const-string p1, "handleLoadDataResult mFavoriteList size = "

    .line 76
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object p1

    .line 80
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->updateAdapter()V

    .line 99
    return-void
.end method

.method public handleQueryData()Lcom/android/fileexplorer/fragment/FavoriteController$ResultHolder;
    .registers 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v2

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_61

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 35
    new-instance v4, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 37
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/fav/Favorite;->getId()Ljava/lang/Long;

    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 44
    move-result-wide v5

    .line 45
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/fav/Favorite;->getTitle()Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 52
    move-result-object v8

    .line 53
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/fileexplorer/model/FavoriteItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v5, Ljava/io/File;

    .line 58
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 62
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_5d

    .line 71
    new-instance v3, Ljava/io/File;

    .line 73
    iget-object v5, v4, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    .line 75
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-static {v3, v5, v6}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 83
    move-result-object v3

    .line 84
    iput-object v3, v4, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 86
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 88
    if-nez v3, :cond_16

    .line 90
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_16

    .line 94
    :cond_5d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_16

    .line 98
    :cond_61
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->delete(Ljava/lang/Iterable;)V

    .line 105
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 107
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 110
    move-result-object v1

    .line 111
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_7f

    .line 119
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 121
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    :cond_7f
    new-instance v1, Lcom/android/fileexplorer/fragment/FavoriteController$ResultHolder;

    .line 130
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/fragment/FavoriteController$ResultHolder;-><init>(Ljava/util/ArrayList;)V

    .line 133
    return-object v1
.end method

.method public handleSortResult(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1a

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->showEmptyView()V

    .line 27
    :cond_1a
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onBack()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 19
    const p1, 0x7f12032d

    .line 22
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 25
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$LoadGroupTask;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mSortTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 21
    return-void
.end method

.method public onFavChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 3
    if-eqz v0, :cond_36

    .line 5
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 7
    if-nez p1, :cond_9

    .line 9
    goto :goto_36

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_33

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_16

    .line 22
    goto :goto_33

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 25
    if-eqz p1, :cond_32

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 33
    goto :goto_32

    .line 34
    :cond_21
    const-string p1, "FavoriteFragment"

    .line 36
    const-string v0, "onFavChange"

    .line 38
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$1;

    .line 43
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;)V

    .line 46
    const-wide/16 v0, 0x12c

    .line 48
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 51
    :cond_32
    :goto_32
    return-void

    .line 52
    :cond_33
    :goto_33
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method public onFavoriteRemove(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;Ljava/util/List;)V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch v0, :pswitch_data_2c

    .line 9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :pswitch_d  #0x7f0a026b
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 19
    return v1

    .line 20
    :pswitch_13  #0x7f0a026a
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 25
    return v1

    .line 26
    :pswitch_19  #0x7f0a0269
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 31
    return v1

    .line 32
    :pswitch_1f  #0x7f0a0268
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 37
    return v1

    .line 38
    :pswitch_25  #0x7f0a0267
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 43
    return v1

    .line 44
    nop

    .line 45
    :pswitch_data_2c
    .packed-switch 0x7f0a0267
        :pswitch_25  #7f0a0267
        :pswitch_1f  #7f0a0268
        :pswitch_19  #7f0a0269
        :pswitch_13  #7f0a026a
        :pswitch_d  #7f0a026b
    .end packed-switch
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    sget-object p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    const p3, 0x7f0d00b1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRootView:Landroid/view/View;

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->iniView()V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRootView:Landroid/view/View;

    .line 20
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-ne v1, v0, :cond_e

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 15
    :cond_e
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onUserInvisible(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 7
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->loadGroupList()V

    .line 7
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 9
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>()V

    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 18
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 20
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mFavoriteList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    const/4 v2, 0x0

    .line 15
    const/16 v3, 0x8

    .line 17
    if-nez v0, :cond_14

    .line 19
    move v4, v2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v4, v3

    .line 22
    :goto_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    move v4, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v4, v3

    .line 32
    :goto_1f
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 37
    if-eqz v0, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v2, v3

    .line 41
    :goto_28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    if-eqz v0, :cond_32

    .line 48
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 53
    :goto_34
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 56
    return-void
.end method
