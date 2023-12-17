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

.field public static final PAGE_APP_TAG:I = 0x2

.field public static final PAGE_APP_TAG_LIST:I = 0x6

.field private static final PAGE_COUNT:I = 0x14

.field public static final PAGE_GROUP_PATH:I = 0x4

.field public static final PAGE_RECENT:I = 0x1

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    .line 14
    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->loadGroupList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    .line 3
    return p0
.end method

.method public static synthetic access$1302(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    .line 3
    return p1
.end method

.method public static synthetic access$1312(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    .line 6
    return v0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->getPageLimit()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->getPage()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    .line 3
    return p0
.end method

.method private forceRefreshGroupList()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    .line 10
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRealGroupCount:I

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    .line 14
    if-lez v0, :cond_10

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mOffset:I

    .line 19
    add-int/lit8 v0, v0, 0x14

    .line 21
    :goto_14
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    .line 23
    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 32
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;ZLcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    .line 40
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 43
    move-result-object v2

    .line 44
    new-array v1, v1, [Ljava/lang/Void;

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    return-void
.end method

.method private getPage()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    .line 3
    return v0
.end method

.method private getPageLimit()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    .line 3
    return v0
.end method

.method private handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 11
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_17

    .line 22
    iput-wide p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    .line 24
    :cond_17
    const-string p3, "onPostExecute hasMore = "

    .line 26
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object p3

    .line 30
    iget-boolean p4, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 32
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p3

    .line 39
    const-string p4, "FileGroupFragment"

    .line 41
    invoke-static {p4, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance p3, Ljava/util/ArrayList;

    .line 46
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    if-eqz p2, :cond_37

    .line 51
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 53
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_37
    iget-object p2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 58
    const/4 p4, 0x0

    .line 59
    invoke-static {p3, p2, p4}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createFileGroupDatas(Ljava/util/List;Ljava/util/List;Z)V

    .line 62
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 64
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 69
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->updateAdapter()V

    .line 75
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 80
    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 82
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 85
    iput-boolean p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    .line 87
    return-void
.end method

.method private initAdapter()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;Z)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 11
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 21
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$3;

    .line 23
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 29
    return-void
.end method

.method private initRecyclerView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 32
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 37
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    .line 47
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initAdapter()V

    .line 50
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->setRecyclerViewHelper()V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 55
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 63
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$2;

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 67
    const/16 v1, 0x8

    .line 69
    invoke-direct {p1, p0, p0, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 72
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 79
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x7f0a0163

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 12
    const v0, 0x7f0a03d2

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 23
    const v0, 0x7f0a036a

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 34
    const v0, 0x102000a

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 43
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initRecyclerView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method private loadGroupList(Z)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mIsLoading:Z

    .line 15
    const/16 v0, 0x14

    .line 17
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPageLimit:I

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 24
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    .line 26
    invoke-direct {v0, p0, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;ZLcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V

    .line 29
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x0

    .line 36
    new-array v1, v1, [Ljava/lang/Void;

    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method private setRecyclerViewHelper()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    const/16 v2, 0x8

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;-><init>(Landroid/content/Context;I)V

    .line 15
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$4;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;II)V

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 26
    if-nez v1, :cond_26

    .line 28
    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v1, v3, v2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 39
    :cond_26
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 53
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 58
    return-void
.end method

.method private showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 9
    if-eqz v1, :cond_d

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 16
    const/16 v2, 0x8

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    move v4, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v3

    .line 24
    :goto_17
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    move v2, v3

    .line 32
    :cond_1f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 44
    :goto_2b
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method private updateAdapter()V
    .registers 3

    .line 1
    const-string v0, "FileGroupFragment"

    .line 3
    const-string v1, "updateAdapter"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->showEmptyView()V

    .line 16
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x6a

    .line 6
    if-eq p1, p3, :cond_8

    .line 8
    goto :goto_16

    .line 9
    :cond_8
    const/4 p1, -0x1

    .line 10
    if-ne p2, p1, :cond_16

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 14
    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 16
    if-eqz p2, :cond_16

    .line 18
    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->encrypt()V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
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
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

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
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$LoadGroupTask;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 16
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

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
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
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 14
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const p3, 0x7f0d00ba

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initView(Landroid/view/View;)V

    .line 19
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
    if-ne v0, v1, :cond_e

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

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

.method public onScanFinish(I)V
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mLastGroupTime:J

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->loadGroupList(Z)V

    .line 9
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 4
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 5

    .line 1
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 3
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>()V

    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->setSelected(I)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 12
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 21
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_8e

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 29
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 31
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 37
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_8b

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 45
    if-eqz v0, :cond_33

    .line 47
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    const-string v0, ""

    .line 54
    :goto_35
    const/4 v1, 0x1

    .line 55
    const-string v2, "page"

    .line 57
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 60
    move-result v1

    .line 61
    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    .line 63
    const-string v1, "app_tag"

    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 71
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 73
    const-string v1, "group_path"

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupPath:Ljava/lang/String;

    .line 81
    const-string p1, "mGroupPath: "

    .line 83
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object p1

    .line 87
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mGroupPath:Ljava/lang/String;

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", page = "

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mPage:I

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    const-string v1, "FileGroupFragment"

    .line 108
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 113
    if-eqz p1, :cond_8b

    .line 115
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_8b

    .line 125
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 127
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 130
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initAdapter()V

    .line 133
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 135
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 137
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 140
    :cond_8b
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->forceRefreshGroupList()V

    .line 143
    :cond_8e
    return-void
.end method
