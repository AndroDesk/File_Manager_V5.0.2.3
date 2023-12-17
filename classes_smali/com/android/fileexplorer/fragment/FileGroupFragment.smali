.class public Lcom/android/fileexplorer/fragment/FileGroupFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "FileGroupFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field private static final PAGE_COUNT:I

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

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

.field private mGroupPath:Ljava/lang/String;

.field private mIsLoading:Z

.field private mLastGroupTime:J

.field private mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

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

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->PAGE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/FileGroupFragment;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isTransferGroup(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/FileGroupFragment;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->loadTransferGroup(JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    return p0
.end method

.method public static synthetic access$1402(Lcom/android/fileexplorer/fragment/FileGroupFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    return p1
.end method

.method public static synthetic access$1412(Lcom/android/fileexplorer/fragment/FileGroupFragment;I)I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    return v0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/FileGroupFragment;Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/FileGroupFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->loadGroupList(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->getPageLimit()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->getPage()I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/FileGroupFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    return-object p0
.end method

.method private forceRefreshGroupList()V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    if-lez v0, :cond_10

    goto :goto_14

    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mOffset:I

    add-int/lit8 v0, v0, 0x14

    :goto_14
    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ZLcom/android/fileexplorer/fragment/FileGroupFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getPage()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    return v0
.end method

.method private getPageLimit()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    return v0
.end method

.method private handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iput-wide p3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

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

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_37
    iget-object p2, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    const/4 p4, 0x0

    invoke-static {p3, p2, p4}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createFileGroupDatas(Ljava/util/List;Ljava/util/List;Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->updateAdapter()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iput-boolean p4, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    return-void
.end method

.method private initActionBar()V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_11

    const v0, 0x7f1829de

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_11
    const/4 v1, 0x4

    if-ne v1, v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz v0, :cond_3e

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4e
    return-void
.end method

.method private initRecyclerView(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {p1, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->setRecyclerViewHelper()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    new-instance p1, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/16 v2, 0x8

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    return-void
.end method

.method private isTransferGroup(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_38

    goto :goto_32

    :sswitch_12
    const-string v0, "com.miui.mishare.connectivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_32

    :cond_26
    move v3, v1

    goto :goto_32

    :sswitch_28
    const-string v0, "com.xlredapple.bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    packed-switch v3, :pswitch_data_46

    move v1, v2

    :pswitch_36  #0x0, 0x1, 0x2
    return v1

    nop

    :sswitch_data_38
    .sparse-switch
        -0x768c5b56 -> :sswitch_28
        -0x3ea09f51 -> :sswitch_1d
        0x134c5dd3 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_36  #00000001
        :pswitch_36  #00000002
    .end packed-switch
.end method

.method private loadGroupList(Z)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ZLcom/android/fileexplorer/fragment/FileGroupFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadTransferGroup(JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.xlredapple.bluetooth"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.mishare.connectivity"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    const/4 v2, 0x0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/util/List;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    return-object p1
.end method

.method private setRecyclerViewHelper()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/fileexplorer/fragment/FileGroupFragment$5;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/fragment/FileGroupFragment$5;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    if-nez v1, :cond_24

    new-instance v1, Lcom/android/fileexplorer/fragment/FileGroupFragment$6;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment$6;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    :cond_24
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method private showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/16 v3, 0x8

    if-eqz v0, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_2c

    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    :goto_2c
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method private showTips(Ljava/lang/String;)V
    .registers 5

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    const v1, 0x7f110381

    const p1, 0x7f110380

    goto :goto_20

    :cond_10
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const v1, 0x7f110479

    const p1, 0x7f110478

    goto :goto_20

    :cond_1f
    move p1, v1

    :goto_20
    if-gez v1, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_45

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110469

    new-instance v1, Lcom/android/fileexplorer/fragment/FileGroupFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$1;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_45
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_52
    return-void
.end method

.method private updateAdapter()V
    .registers 3

    const-string v0, "FileGroupFragment"

    const-string v1, "updateAdapter"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->showEmptyView()V

    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    move-result v0

    return v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b9

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->initActionBar()V

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const v0, 0x7f032e44

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const v0, 0x7f032efc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->initRecyclerView(Landroid/view/View;)V

    const-string v0, "PAGE_FileGroupFragment"

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

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

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->encrypt()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1202e3

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_63

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "app_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "group_path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    const-string p1, "mGroupPath: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", page = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileGroupFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_19
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_e
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->forceRefreshGroupList()V

    return-void
.end method

.method public onScanFinish(I)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->loadGroupList(Z)V

    return-void
.end method
