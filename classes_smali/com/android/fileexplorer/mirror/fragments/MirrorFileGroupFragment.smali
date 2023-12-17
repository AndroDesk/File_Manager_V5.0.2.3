.class public Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorFileGroupFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field public static final EXTRA_APP_TAG:Ljava/lang/String; = "app_tag"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_GROUP_PATH:Ljava/lang/String; = "group_path"

.field public static final EXTRA_PAGE:Ljava/lang/String; = "page"

.field public static final EXTRA_PATHS:Ljava/lang/String; = "paths"

.field public static final PAGE_APP_TAG:I

.field public static final PAGE_APP_TAG_LIST:I

.field private static final PAGE_COUNT:I

.field public static final PAGE_GROUP_PATH:I

.field public static final PAGE_RECENT:I

.field private static final TAG:Ljava/lang/String; = "FileGroupFragment"


# instance fields
.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAdapterFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

.field private mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

.field private mGroupPath:Ljava/lang/String;

.field private mIsLoading:Z

.field private mLastGroupTime:J

.field private mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mOffset:I

.field private mPage:I

.field private mPageLimit:I

.field private mRealGroupCount:I

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->PAGE_APP_TAG:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->PAGE_APP_TAG_LIST:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->PAGE_COUNT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->PAGE_GROUP_PATH:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->PAGE_RECENT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->loadGroupList(Z)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    return p0
.end method

.method public static synthetic access$1302(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    return p1
.end method

.method public static synthetic access$1312(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;I)I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    return v0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->getPageLimit()I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->getPage()I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    return p0
.end method

.method private forceRefreshGroupList()V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    if-lez v0, :cond_10

    goto :goto_14

    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mOffset:I

    add-int/lit8 v0, v0, 0x14

    :goto_14
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;ZLcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getPage()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    return v0
.end method

.method private getPageLimit()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    return v0
.end method

.method private handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iput-wide p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    :cond_17
    const-string p3, "onPostExecute hasMore = "

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean p4, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "FileGroupFragment"

    invoke-static {p4, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_37
    iget-object p2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    const/4 p4, 0x0

    invoke-static {p3, p2, p4}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createFileGroupDatas(Ljava/util/List;Ljava/util/List;Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->updateAdapter()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iput-boolean p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    return-void
.end method

.method private initAdapter()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method

.method private initRecyclerView(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initAdapter()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->setRecyclerViewHelper()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$2;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/16 v1, 0x8

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    const v0, 0x7f032e44

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const v0, 0x7f032efc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initRecyclerView(Landroid/view/View;)V

    return-void
.end method

.method private loadGroupList(Z)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;ZLcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setRecyclerViewHelper()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$4;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    if-nez v1, :cond_26

    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    :cond_26
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method private showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    :cond_d
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_2b

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    :goto_2b
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method private updateAdapter()V
    .registers 3

    const-string v0, "FileGroupFragment"

    const-string v1, "updateAdapter"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->showEmptyView()V

    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    move-result v0

    return v0
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

    if-eq p1, p3, :cond_8

    goto :goto_16

    :cond_8
    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->encrypt()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f042d2c

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_e
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onScanFinish(I)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->loadGroupList(Z)V

    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 5

    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_33
    const-string v0, ""

    :goto_35
    const/4 v1, 0x1

    const-string v2, "page"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    const-string v1, "app_tag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    const-string v1, "group_path"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupPath:Ljava/lang/String;

    const-string p1, "mGroupPath: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", page = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FileGroupFragment"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initAdapter()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    :cond_8b
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->forceRefreshGroupList()V

    :cond_8e
    return-void
.end method
