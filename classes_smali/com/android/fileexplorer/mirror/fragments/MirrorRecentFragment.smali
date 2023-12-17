.class public Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorRecentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# static fields
.field private static final PAGE_COUNT:I = 0xa

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupList:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 20
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 25
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 27
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    .line 35
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->browseGroup(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLastGroupTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLastGroupTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->refreshLoadState(ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->updateAdapter()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    .line 3
    return p0
.end method

.method public static synthetic access$902(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    .line 3
    return p1
.end method

.method public static synthetic access$912(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRealGroupCount:I

    .line 6
    return v0
.end method

.method private browseGroup(Lcom/android/fileexplorer/apptag/FileItemAppGroup;)V
    .registers 9

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_24

    .line 12
    new-instance v0, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 22
    iget-object v4, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v5, ""

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 33
    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseAppFile(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Lcom/android/fileexplorer/dao/file/AppTag;)V

    .line 36
    goto :goto_33

    .line 37
    :cond_24
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_33

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 47
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupPath:Ljava/lang/String;

    .line 49
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseGroupPath(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method

.method private checkIfNeedScanFile(Z)V
    .registers 6

    .line 1
    if-nez p1, :cond_1e

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->isMoreThanFiveMins(J)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_44

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 33
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 35
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 48
    const-string v0, "RecentFragment"

    .line 50
    const-string v1, "checkIfNeedScanFile real"

    .line 52
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    .line 58
    if-eqz p1, :cond_44

    .line 60
    const-string p1, "scan_file"

    .line 62
    const-string v0, "name"

    .line 64
    const-string v1, "recent2Front"

    .line 66
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    .line 25
    return-void
.end method

.method private initUI()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x102000a

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a036a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    .line 42
    const v1, 0x7f0a03d2

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 61
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 72
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    .line 74
    check-cast v3, Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 81
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 83
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 86
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 88
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 91
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 95
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;Z)V

    .line 98
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 100
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 105
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    .line 108
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->setRecyclerViewHelper()V

    .line 111
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 113
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;

    .line 115
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 123
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;

    .line 125
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 133
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$3;

    .line 135
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    .line 138
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 141
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$4;

    .line 143
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 145
    const/16 v3, 0x8

    .line 147
    invoke-direct {v0, p0, p0, v1, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 150
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 152
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 157
    iput-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    .line 159
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->showEmptyView(Z)V

    .line 162
    return-void
.end method

.method private synthetic lambda$updateAdapter$0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->refreshPosInfoList()V

    .line 6
    return-void
.end method

.method private loadLocalFileGroupInfo(ZZ)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    .line 3
    if-nez v0, :cond_2d

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_2d

    .line 10
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v4

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshOnVisible:Z

    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 22
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 25
    new-instance v7, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;

    .line 27
    move-object v1, v7

    .line 28
    move-object v2, p0

    .line 29
    move v3, p1

    .line 30
    move v6, p2

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$8;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZJZ)V

    .line 34
    iput-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 39
    move-result-object p1

    .line 40
    new-array p2, v0, [Ljava/lang/Void;

    .line 42
    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void

    .line 46
    :cond_2d
    :goto_2d
    const-string p1, "RecentFragment"

    .line 48
    const-string p2, "loadLocalFileGroupInfo: not start"

    .line 50
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private refreshFileGroupInfo()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mIsLoading:Z

    .line 3
    if-nez v0, :cond_1f

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_1f

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 15
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$7;

    .line 17
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$7;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v2, v2, [Ljava/lang/Void;

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method

.method private refreshLoadState(ZZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 11
    if-eqz p1, :cond_11

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->forceRefresh()V

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 23
    const-string p1, "RecentFragment"

    .line 25
    const-string p2, "onLoadMoreComplete"

    .line 27
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private setRecyclerViewHelper()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    const/16 v2, 0x10

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;-><init>(Landroid/content/Context;I)V

    .line 15
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$5;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;II)V

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 26
    if-nez v1, :cond_28

    .line 28
    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 36
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 39
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 41
    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 43
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 55
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 57
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 60
    return-void
.end method

.method private showEmptyView(Z)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    .line 3
    if-eqz v0, :cond_2c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 7
    if-eqz v0, :cond_2c

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 14
    const/16 v1, 0x8

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_14

    .line 19
    move v3, v1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v3, v2

    .line 22
    :goto_15
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    if-eqz p1, :cond_1d

    .line 29
    move v1, v2

    .line 30
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 35
    if-eqz p1, :cond_27

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 42
    :goto_29
    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 45
    :cond_2c
    return-void
.end method

.method private updateAdapter()V
    .registers 4

    .line 1
    const-string v0, "RecentFragment"

    .line 3
    const-string v1, "updateAdapter"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->showEmptyView(Z)V

    .line 22
    new-instance v0, Landroid/os/Handler;

    .line 24
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 27
    new-instance v1, Landroidx/activity/b;

    .line 29
    const/16 v2, 0x9

    .line 31
    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->checkIfNeedScanFile(Z)V

    .line 8
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 p3, -0x1

    .line 5
    if-ne p2, p3, :cond_15

    .line 7
    const/16 p2, 0x6a

    .line 9
    if-ne p1, p2, :cond_15

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 15
    if-eqz p2, :cond_15

    .line 17
    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->encrypt()V

    .line 22
    :cond_15
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12032d

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    const-string v0, "RecentFragment"

    .line 3
    const-string v1, "onDestroy: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 15
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 18
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 11
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a01ec

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    const-string p1, "RecentFragment"

    .line 17
    const-string v0, "start load data by refresh"

    .line 19
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 24
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 37
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 39
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p1, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 44
    return v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const-string p3, "RecentFragment"

    .line 3
    const-string v0, "onInflateView: "

    .line 5
    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const p3, 0x7f0d00ba

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->initUI()V

    .line 21
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->getDateFirstIn()V

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRootView:Landroid/view/View;

    .line 26
    return-object p1
.end method

.method public onRecentChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string p1, "RecentFragment"

    .line 8
    const-string v0, "onRecentChange"

    .line 10
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 15
    if-nez p1, :cond_14

    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshOnVisible:Z

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 25
    :goto_18
    return-void
.end method

.method public onScanFinish(I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    .line 4
    const-string v0, "onScanFinish: "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", newFileCount = "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "RecentFragment"

    .line 33
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-lez p1, :cond_37

    .line 38
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mUiHasInit:Z

    .line 40
    if-eqz v0, :cond_37

    .line 42
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 44
    if-eqz v0, :cond_37

    .line 46
    const v0, 0x7f0f0016

    .line 49
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 56
    :cond_37
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;

    .line 58
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V

    .line 61
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 4
    const-string p1, "RecentFragment"

    .line 6
    const-string v0, "RecentFragment onUserInvisible"

    .line 8
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 14
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 6
    if-eqz v0, :cond_28

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "onUserVisible first = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, ", mBackToFront ="

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v0, "RecentFragment"

    .line 37
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->checkIfNeedScanFile(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->isScanning:Z

    .line 47
    if-nez v0, :cond_3b

    .line 49
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->mRefreshOnVisible:Z

    .line 51
    if-eqz v0, :cond_38

    .line 53
    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 56
    goto :goto_3b

    .line 57
    :cond_38
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->refreshFileGroupInfo()V

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method
