.class public Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorRecentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# static fields
.field private static final PAGE_COUNT:I

.field private static final TAG:Ljava/lang/String; = "RecentFragment"


# instance fields
.field private isScanning:Z

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

.field private mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mLastGroupTime:J

.field private mLoadFileGroupInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRealGroupCount:I

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

.field public mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshOnVisible:Z

.field private mRootView:Landroid/view/View;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

.field private mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

.field private mUiHasInit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->PAGE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupList:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->browseGroup(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLastGroupTime:J

    return-wide v0
.end method

.method public static synthetic access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLastGroupTime:J

    return-wide p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->refreshLoadState(ZZ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->updateAdapter()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    return p0
.end method

.method public static synthetic access$902(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    return p1
.end method

.method public static synthetic access$912(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;I)I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    return v0
.end method

.method private browseGroup(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseAppFile(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Lcom/android/fileexplorer/dao/file/AppTag;)V

    goto :goto_33

    :cond_24
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseGroupPath(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private checkIfNeedScanFile(Z)V
    .registers 6

    if-nez p1, :cond_1e

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->isMoreThanFiveMins(J)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    const-string v0, "RecentFragment"

    const-string v1, "checkIfNeedScanFile real"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    if-eqz p1, :cond_44

    const-string p1, "scan_file"

    const-string v0, "name"

    const-string v1, "recent2Front"

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->lambda$updateAdapter$0()V

    return-void
.end method

.method private getDateFirstIn()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    return-void
.end method

.method private initUI()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->setRecyclerViewHelper()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$4;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/16 v3, 0x8

    invoke-direct {v0, p0, p0, v1, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    iput-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->showEmptyView(Z)V

    return-void
.end method

.method private synthetic lambda$updateAdapter$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->refreshPosInfoList()V

    return-void
.end method

.method private loadLocalFileGroupInfo(ZZ)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    if-nez v0, :cond_9

    goto :goto_2d

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshOnVisible:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v7, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZJZ)V

    iput-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2d
    :goto_2d
    const-string p1, "RecentFragment"

    const-string p2, "loadLocalFileGroupInfo: not start"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private refreshFileGroupInfo()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$7;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$7;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1f
    :goto_1f
    return-void
.end method

.method private refreshLoadState(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->forceRefresh()V

    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    const-string p1, "RecentFragment"

    const-string p2, "onLoadMoreComplete"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRecyclerViewHelper()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$5;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    if-nez v1, :cond_28

    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method private showEmptyView(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_1d

    move v1, v2

    :cond_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_29

    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    :goto_29
    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    :cond_2c
    return-void
.end method

.method private updateAdapter()V
    .registers 4

    const-string v0, "RecentFragment"

    const-string v1, "updateAdapter"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->showEmptyView(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/activity/b;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->checkIfNeedScanFile(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_15

    const/16 p2, 0x6a

    if-ne p1, p2, :cond_15

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    move-result v0

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

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "RecentFragment"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

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

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a01ec

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    const-string p1, "RecentFragment"

    const-string v0, "start load data by refresh"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "RecentFragment"

    const-string v0, "onInflateView: "

    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f042d2c

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->initUI()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->getDateFirstIn()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onRecentChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string p1, "RecentFragment"

    const-string v0, "onRecentChange"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    if-nez p1, :cond_14

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshOnVisible:Z

    goto :goto_18

    :cond_14
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    :goto_18
    return-void
.end method

.method public onScanFinish(I)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    const-string v0, "onScanFinish: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", newFileCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_37

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    if-eqz v0, :cond_37

    const v0, 0x7f0f0016

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    :cond_37
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    const-string p1, "RecentFragment"

    const-string v0, "RecentFragment onUserInvisible"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserVisible first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mBackToFront ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->checkIfNeedScanFile(Z)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshOnVisible:Z

    if-eqz v0, :cond_38

    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    goto :goto_3b

    :cond_38
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->refreshFileGroupInfo()V

    :cond_3b
    :goto_3b
    return-void
.end method
