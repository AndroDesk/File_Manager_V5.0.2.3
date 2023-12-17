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
.field private static final PAGE_COUNT:I = 0x14

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    .line 14
    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/FileGroupFragment;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isTransferGroup(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/FileGroupFragment;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->loadTransferGroup(JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    .line 3
    return p0
.end method

.method public static synthetic access$1402(Lcom/android/fileexplorer/fragment/FileGroupFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    .line 3
    return p1
.end method

.method public static synthetic access$1412(Lcom/android/fileexplorer/fragment/FileGroupFragment;I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    .line 6
    return v0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/FileGroupFragment;Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/FileGroupFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->loadGroupList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->getPageLimit()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->getPage()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/FileGroupFragment;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/FileGroupFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method private forceRefreshGroupList()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

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
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    .line 10
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRealGroupCount:I

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    .line 14
    if-lez v0, :cond_10

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mOffset:I

    .line 19
    add-int/lit8 v0, v0, 0x14

    .line 21
    :goto_14
    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    .line 23
    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 32
    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, v1, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ZLcom/android/fileexplorer/fragment/FileGroupFragment;)V

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

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
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    .line 3
    return v0
.end method

.method private getPageLimit()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    .line 3
    return v0
.end method

.method private handleResult(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;ZJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

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
    iput-wide p3, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

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
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

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
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 64
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 69
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->updateAdapter()V

    .line 75
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 80
    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 82
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 85
    iput-boolean p4, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    .line 87
    return-void
.end method

.method private initActionBar()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_d

    .line 6
    const v0, 0x7f110448

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_3b

    .line 14
    :cond_d
    const/4 v1, 0x4

    .line 15
    if-ne v1, v0, :cond_17

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_3b

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 26
    if-eqz v0, :cond_3a

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 34
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "com.tencent.mobileqq"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3b

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 48
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    const-string v2, "com.tencent.mm"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 v0, 0x0

    .line 60
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_4a

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4a

    .line 72
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    :cond_4a
    return-void
.end method

.method private initRecyclerView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 37
    check-cast p1, Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    .line 42
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 46
    invoke-direct {p1, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;-><init>(Ljava/util/List;Z)V

    .line 49
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    .line 51
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    .line 56
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    .line 59
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->setRecyclerViewHelper()V

    .line 62
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    .line 64
    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;

    .line 66
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 74
    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;

    .line 76
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 82
    new-instance p1, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;

    .line 84
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 86
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 88
    const/16 v2, 0x8

    .line 90
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 93
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 95
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 100
    return-void
.end method

.method private isTransferGroup(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_38

    .line 18
    goto :goto_32

    .line 19
    :sswitch_12
    const-string v0, "com.miui.mishare.connectivity"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1b

    .line 27
    goto :goto_32

    .line 28
    :cond_1b
    const/4 v3, 0x2

    .line 29
    goto :goto_32

    .line 30
    :sswitch_1d
    const-string v0, "com.android.providers.downloads.ui"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_26

    .line 38
    goto :goto_32

    .line 39
    :cond_26
    move v3, v1

    .line 40
    goto :goto_32

    .line 41
    :sswitch_28
    const-string v0, "com.xlredapple.bluetooth"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v3, v2

    .line 51
    :goto_32
    packed-switch v3, :pswitch_data_46

    .line 54
    move v1, v2

    .line 55
    :pswitch_36  #0x0, 0x1, 0x2
    return v1

    .line 56
    nop

    .line 57
    :sswitch_data_38
    .sparse-switch
        -0x768c5b56 -> :sswitch_28
        -0x3ea09f51 -> :sswitch_1d
        0x134c5dd3 -> :sswitch_12
    .end sparse-switch

    .line 71
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_36  #00000001
        :pswitch_36  #00000002
    .end packed-switch
.end method

.method private loadGroupList(Z)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mIsLoading:Z

    .line 15
    const/16 v0, 0x14

    .line 17
    iput v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPageLimit:I

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 24
    new-instance v0, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    .line 26
    invoke-direct {v0, p0, p1, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ZLcom/android/fileexplorer/fragment/FileGroupFragment;)V

    .line 29
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

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

.method private loadTransferGroup(JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 10

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v0, "com.xlredapple.bluetooth"

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v0, "com.android.providers.downloads.ui"

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v0, "com.miui.mishare.connectivity"

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x0

    .line 26
    move-wide v3, p1

    .line 27
    move v5, p3

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/util/List;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private setRecyclerViewHelper()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    const/16 v2, 0xc

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;-><init>(Landroid/content/Context;I)V

    .line 15
    new-instance v1, Lcom/android/fileexplorer/fragment/FileGroupFragment$5;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/fragment/FileGroupFragment$5;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;II)V

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    .line 26
    if-nez v1, :cond_24

    .line 28
    new-instance v1, Lcom/android/fileexplorer/fragment/FileGroupFragment$6;

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 32
    invoke-direct {v1, p0, v3, v2}, Lcom/android/fileexplorer/fragment/FileGroupFragment$6;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ILjava/util/List;)V

    .line 35
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    .line 37
    :cond_24
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 39
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 51
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;

    .line 53
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 56
    return-void
.end method

.method private showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_e

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 17
    const/16 v3, 0x8

    .line 19
    if-eqz v0, :cond_16

    .line 21
    move v4, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v2

    .line 24
    :goto_17
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v2, v3

    .line 33
    :goto_20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 45
    :goto_2c
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method private showTips(Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "com.tencent.mobileqq"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_10

    .line 10
    const v1, 0x7f110381

    .line 13
    const p1, 0x7f110380

    .line 16
    goto :goto_20

    .line 17
    :cond_10
    const-string v0, "com.tencent.mm"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1f

    .line 25
    const v1, 0x7f110479

    .line 28
    const p1, 0x7f110478

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move p1, v1

    .line 33
    :goto_20
    if-gez v1, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 38
    if-nez v0, :cond_45

    .line 40
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 44
    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 53
    const p1, 0x7f110469

    .line 56
    new-instance v1, Lcom/android/fileexplorer/fragment/FileGroupFragment$1;

    .line 58
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment$1;-><init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V

    .line 61
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 70
    :cond_45
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 72
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_52

    .line 78
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 80
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 83
    :cond_52
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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mFileAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->showEmptyView()V

    .line 16
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b9

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->initActionBar()V

    .line 11
    const v0, 0x7f0a0163

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 22
    const v0, 0x7f0a03d2

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 31
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 33
    const v0, 0x7f0a036a

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 42
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 44
    const v0, 0x102000a

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->initRecyclerView(Landroid/view/View;)V

    .line 58
    const-string v0, "PAGE_FileGroupFragment"

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 16
    if-eqz p2, :cond_16

    .line 18
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->encrypt()V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

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
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f1202e3

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_63

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x1

    .line 36
    const-string v1, "page"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 47
    move-result-object p1

    .line 48
    const-string v0, "app_tag"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 56
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 61
    move-result-object p1

    .line 62
    const-string v0, "group_path"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    .line 70
    const-string p1, "mGroupPath: "

    .line 72
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mGroupPath:Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, ", page = "

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mPage:I

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    const-string v0, "FileGroupFragment"

    .line 97
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_63
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/FileGroupFragment$LoadGroupTask;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 18
    if-eqz v0, :cond_19

    .line 20
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 26
    :cond_19
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 15
    :cond_e
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->forceRefreshGroupList()V

    .line 7
    return-void
.end method

.method public onScanFinish(I)V
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment;->mLastGroupTime:J

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->loadGroupList(Z)V

    .line 9
    return-void
.end method
