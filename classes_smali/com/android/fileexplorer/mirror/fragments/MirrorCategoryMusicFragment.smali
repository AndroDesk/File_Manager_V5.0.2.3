.class public Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorCategoryMusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field private static final PAGE_COUNT:I = 0x3e8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field public mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

.field private mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$LoadGroupTask;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRootView:Landroid/view/View;

.field private mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I

.field private mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    const-string v0, "MirrorCategoryMusicFragment"

    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mIsLoading:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->loadGroupList(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mIsLoading:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    return-object p0
.end method

.method private handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->TAG:Ljava/lang/String;

    const-string v1, "handleClickMenuSort"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->sortData(Ljava/util/List;)V

    return-void
.end method

.method private initListView()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    if-nez v2, :cond_68

    new-instance v2, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_68
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    new-instance v2, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$3;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$4;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    return-void
.end method

.method private loadGroupList(Z)V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->TAG:Ljava/lang/String;

    const-string v1, "loadGroupList: isLoading = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mIsLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", category = Music"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mIsLoading:Z

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mIsLoading:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$LoadGroupTask;

    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$LoadGroupTask;-><init>(ZLcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$LoadGroupTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;-><init>()V

    return-object v0
.end method

.method private sortData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2f

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->showEmptyView()V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->TAG:Ljava/lang/String;

    const-string v1, "getDataBackToFront"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->loadGroupList(Z)V

    return-void
.end method

.method public getStartIndex()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mStartIndex:I

    return v0
.end method

.method public handleLoadDataResult(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;ZI)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mIsLoading:Z

    iput p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mStartIndex:I

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez p3, :cond_a

    return-void

    :cond_a
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p3, p3, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    if-nez p1, :cond_23

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->showEmptyView()V

    return-void

    :cond_23
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    invoke-virtual {p3, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    sget-object p3, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->TAG:Ljava/lang/String;

    const-string v0, "handleLoadDataResult: hasMore = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_4d
    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    if-eqz v1, :cond_56

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->loadGroupList(Z)V

    goto :goto_92

    :cond_56
    iget-object p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz p1, :cond_5b

    goto :goto_60

    :cond_5b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_60
    if-eqz p2, :cond_68

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6d

    :cond_68
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :goto_6d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: category = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",result.size = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_92
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->showEmptyView()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_a9

    :cond_a6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->sortData(Ljava/util/List;)V

    :goto_a9
    return-void
.end method

.method public handleQueryData(II)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 9

    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    iget-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x6a

    if-ne p3, p1, :cond_15

    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    if-eqz p2, :cond_15

    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;->encrypt()V

    :cond_15
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mIsLoading:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    :cond_19
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a01ec

    const/4 v2, 0x1

    if-eq v0, v1, :cond_35

    const v1, 0x7f0a026b

    if-eq v0, v1, :cond_2f

    packed-switch v0, :pswitch_data_3a

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_17  #0x7f0a0269
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v2

    :pswitch_1d  #0x7f0a0268
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v2

    :pswitch_23  #0x7f0a0267
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v2

    :pswitch_29  #0x7f0a0266
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v2

    :cond_2f
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v2

    :cond_35
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->loadGroupList(Z)V

    return v2

    :pswitch_data_3a
    .packed-switch 0x7f0a0266
        :pswitch_29  #7f0a0266
        :pswitch_23  #7f0a0267
        :pswitch_1d  #7f0a0268
        :pswitch_17  #7f0a0269
    .end packed-switch
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mRootView:Landroid/view/View;

    if-eqz p3, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    return-object p3

    :cond_8
    const p3, 0x7f042d2e

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f032cf5

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->initListView()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->showEmptyView()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onMusicChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    if-nez v0, :cond_9

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2d

    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_2c

    :cond_21
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->TAG:Ljava/lang/String;

    const-string v0, "onEventMainThread: load category music"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->loadGroupList(Z)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->TAG:Ljava/lang/String;

    const-string v1, "onUserVisible + mNeedRefresh = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_22

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    if-eqz p1, :cond_2a

    :cond_22
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method

.method public showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1d

    move v2, v3

    :cond_1d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_29

    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    :goto_29
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method