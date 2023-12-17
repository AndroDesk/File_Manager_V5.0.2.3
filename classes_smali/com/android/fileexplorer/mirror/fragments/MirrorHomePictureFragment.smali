.class public Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorHomePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;,
        Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field private static final PAGE_COUNT:I = 0x7d0

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAdapterFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mColumnType:I

.field private mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

.field private mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRootView:Landroid/view/View;

.field private mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I

.field private mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    const-string v0, "MirrorHomePictureFragment"

    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    return p0
.end method

.method private handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    const-string v0, "handleClickMenuSort"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handlerSourceData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->refreshAdapter(Z)V

    return-void
.end method

.method private handleSwitchViewType(I)V
    .registers 3

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    if-ne v0, p1, :cond_8

    return-void

    :cond_8
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handlerSourceData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->refreshAdapter(Z)V

    return-void
.end method

.method private handlerSourceData(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->sortByFileSize(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_14

    invoke-static {p1, v1}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createNoGroupDatas(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1f

    :cond_14
    const/4 v0, 0x6

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createPictureFileGroupDatas(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    goto :goto_1f

    :cond_1a
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createNoGroupDatas(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    :goto_1f
    return-object p1
.end method

.method private initListView()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->refreshAdapter(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    new-instance v2, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$3;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    return-void
.end method

.method private loadGroupList(Z)V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    const-string v1, "loadGroupList: isLoading = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", category = Music"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;-><init>(ZLcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;-><init>()V

    return-object v0
.end method

.method private refreshAdapter(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    const/16 v2, 0x3c

    const/4 v3, 0x1

    if-ne v0, v2, :cond_64

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/16 v4, 0x8

    invoke-direct {v0, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    if-nez v2, :cond_3a

    new-instance v2, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {v2, v4, v5}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    :cond_3a
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->sortByFileSize(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Z

    move-result v2

    if-eqz v2, :cond_50

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {v2}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    goto :goto_7f

    :cond_50
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    goto :goto_7f

    :cond_64
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    if-nez v0, :cond_73

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    :cond_73
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    :goto_7f
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    goto :goto_97

    :cond_90
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :goto_97
    if-eqz p1, :cond_9e

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9e
    return-void
.end method

.method private sortByFileSize(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    if-eq v0, p1, :cond_b

    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    if-ne v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    const-string v1, "getDataBackToFront"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

    return-void
.end method

.method public getStartIndex()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mStartIndex:I

    return v0
.end method

.method public handleLoadDataResult(Lcom/android/fileexplorer/model/group/FileGroupDataBean;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupDataBean<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    iput p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mStartIndex:I

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->showEmptyView()V

    return-void

    :cond_1e
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    iget-object v0, p1, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->mDatas:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->hasMore:Z

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    sget-object p2, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    const-string v0, "handleLoadDataResult: hasMore = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->hasMore:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_52
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->showEmptyView()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    :cond_73
    return-void
.end method

.method public handleQueryData(ZII)Lcom/android/fileexplorer/model/group/FileGroupDataBean;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/model/group/FileGroupDataBean<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v2

    const/4 v5, 0x0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p2

    iget-object p3, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/fileexplorer/model/group/FileGroupDataBean;

    invoke-direct {p3}, Lcom/android/fileexplorer/model/group/FileGroupDataBean;-><init>()V

    iget-boolean v0, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    iput-boolean v0, p3, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->hasMore:Z

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_30
    iget-object p1, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz p1, :cond_39

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handlerSourceData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p3, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->mDatas:Ljava/util/List;

    return-object p3
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x6a

    if-ne p3, p1, :cond_15

    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    if-eqz p2, :cond_15

    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->encrypt()V

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

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

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

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    :cond_1b
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_30

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_d
    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleSwitchViewType(I)V

    return v1

    :sswitch_13
    const/16 p1, 0x3c

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleSwitchViewType(I)V

    return v1

    :sswitch_19
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_1f
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_25
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_2b
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

    return v1

    :sswitch_data_30
    .sparse-switch
        0x7f0a01ec -> :sswitch_2b
        0x7f0a0266 -> :sswitch_25
        0x7f0a0268 -> :sswitch_1f
        0x7f0a0269 -> :sswitch_19
        0x7f0a026d -> :sswitch_13
        0x7f0a026e -> :sswitch_d
    .end sparse-switch
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    if-eqz p3, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    return-object p3

    :cond_8
    const p3, 0x7f042d2c

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f032cf5

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->initListView()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->showEmptyView()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onPictureChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
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
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_2c

    :cond_21
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    const-string v0, "onEventMainThread: load category music"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

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
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    const-string v1, "onUserVisible"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    if-eqz p1, :cond_1f

    :cond_15
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    :cond_1f
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleSwitchViewType(I)V

    :cond_c
    return-void
.end method

.method public showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1d

    move v2, v3

    :cond_1d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_29

    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    :goto_29
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method
