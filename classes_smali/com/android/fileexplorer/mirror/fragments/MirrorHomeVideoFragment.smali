.class public Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorHomeVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field private static final PAGE_COUNT:I = 0x3e8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field public mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mColumnType:I

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

.field private mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

.field private mIsLoading:Z

.field private mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

.field private mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$LoadGroupTask;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRootView:Landroid/view/View;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I

.field private mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 3
    const-string v0, "MirrorHomeVideoFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mIsLoading:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mColumnType:I

    .line 20
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->loadGroupList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method private handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "handleClickMenuSort"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 10
    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 15
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->sortData(Ljava/util/List;)V

    .line 18
    return-void
.end method

.method private handleSwitchViewType(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mColumnType:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mColumnType:I

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->refreshAdapter(Z)V

    .line 15
    return-void
.end method

.method private initListView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a036a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a03d2

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x102000a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 48
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 53
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 56
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 58
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 60
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 63
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 65
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->refreshAdapter(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 76
    new-instance v2, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;

    .line 78
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)V

    .line 81
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 84
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$3;

    .line 86
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 88
    invoke-direct {v0, p0, p0, v2, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 91
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 100
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$4;

    .line 102
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 108
    return-void
.end method

.method private loadGroupList(Z)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "loadGroupList: isLoading = "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mIsLoading:Z

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ", category = Music"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mIsLoading:Z

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return-void

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
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mIsLoading:Z

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$LoadGroupTask;

    .line 45
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 48
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$LoadGroupTask;

    .line 50
    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$LoadGroupTask;-><init>(ZLcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)V

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$LoadGroupTask;

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x0

    .line 60
    new-array v1, v1, [Ljava/lang/Void;

    .line 62
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;-><init>()V

    .line 6
    return-object v0
.end method

.method private refreshAdapter(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    if-eqz v0, :cond_96

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    goto/16 :goto_96

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 15
    if-nez v0, :cond_36

    .line 17
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v1

    .line 27
    const v3, 0x7f07031f

    .line 30
    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 33
    move-result v3

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object v1

    .line 38
    const v4, 0x7f070322

    .line 41
    invoke-static {v1, v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x1

    .line 47
    const/16 v7, 0x8

    .line 49
    move-object v1, v0

    .line 50
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;IIZZI)V

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 57
    const/4 v1, 0x1

    .line 58
    if-nez v0, :cond_46

    .line 60
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v0, v2, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;Z)V

    .line 69
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 71
    :cond_46
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 73
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 75
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 80
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 82
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 85
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mColumnType:I

    .line 87
    const/16 v2, 0x3c

    .line 89
    if-ne v0, v2, :cond_72

    .line 91
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 93
    const/16 v1, 0x1d

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 98
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 100
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 102
    const/16 v2, 0x8

    .line 104
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 107
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 109
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 111
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 114
    goto :goto_8a

    .line 115
    :cond_72
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 117
    const/16 v2, 0xc

    .line 119
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 122
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    .line 124
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 126
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 132
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 134
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 136
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 139
    :goto_8a
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 141
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    if-eqz p1, :cond_96

    .line 146
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 148
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 151
    :cond_96
    :goto_96
    return-void
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

    .line 1
    if-eqz p1, :cond_2f

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_2f

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2f

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 32
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 45
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->showEmptyView()V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    .line 4
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "getDataBackToFront"

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->loadGroupList(Z)V

    .line 15
    return-void
.end method

.method public getStartIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mStartIndex:I

    .line 3
    return v0
.end method

.method public handleLoadDataResult(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;ZI)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mIsLoading:Z

    .line 4
    iput p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mStartIndex:I

    .line 6
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 8
    if-nez p3, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 13
    iget-object p3, p3, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p3, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 20
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 22
    invoke-virtual {p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 25
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 27
    invoke-virtual {p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 30
    if-nez p1, :cond_23

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->showEmptyView()V

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 38
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 40
    invoke-virtual {p3, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 43
    sget-object p3, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "handleLoadDataResult: hasMore = "

    .line 47
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v0

    .line 51
    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 70
    if-eqz v1, :cond_4d

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_56

    .line 78
    :cond_4d
    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 80
    if-eqz v1, :cond_56

    .line 82
    const/4 p1, 0x1

    .line 83
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->loadGroupList(Z)V

    .line 86
    goto :goto_92

    .line 87
    :cond_56
    iget-object p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 89
    if-eqz p1, :cond_5b

    .line 91
    goto :goto_60

    .line 92
    :cond_5b
    new-instance p1, Ljava/util/ArrayList;

    .line 94
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :goto_60
    if-eqz p2, :cond_68

    .line 99
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 101
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    goto :goto_6d

    .line 105
    :cond_68
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 107
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 110
    :goto_6d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v1, "onPostExecute: category = "

    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ",result.size = "

    .line 130
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    move-result p1

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-static {p3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_92
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_a6

    .line 153
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 155
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 158
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->showEmptyView()V

    .line 161
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 163
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 166
    goto :goto_a9

    .line 167
    :cond_a6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->sortData(Ljava/util/List;)V

    .line 170
    :goto_a9
    return-void
.end method

.method public handleQueryData(II)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 9

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 11
    move-result-object v2

    .line 12
    const/4 v5, 0x0

    .line 13
    move v3, p1

    .line 14
    move v4, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lcom/android/fileexplorer/util/TimeCost;

    .line 21
    invoke-direct {p2}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 24
    invoke-virtual {p2}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 27
    iget-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 41
    return-object p1
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
    if-ne p3, p1, :cond_15

    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_15

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    .line 15
    if-eqz p2, :cond_15

    .line 17
    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;->encrypt()V

    .line 22
    :cond_15
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
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

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
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

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
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mIsLoading:Z

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$LoadGroupTask;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    .line 26
    :cond_19
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
    sparse-switch v0, :sswitch_data_30

    .line 9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :sswitch_d
    const/16 p1, 0x32

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->handleSwitchViewType(I)V

    .line 19
    return v1

    .line 20
    :sswitch_13
    const/16 p1, 0x3c

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->handleSwitchViewType(I)V

    .line 25
    return v1

    .line 26
    :sswitch_19
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 31
    return v1

    .line 32
    :sswitch_1f
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 37
    return v1

    .line 38
    :sswitch_25
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 43
    return v1

    .line 44
    :sswitch_2b
    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->loadGroupList(Z)V

    .line 48
    return v1

    .line 49
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

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mRootView:Landroid/view/View;

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    .line 8
    return-object p3

    .line 9
    :cond_8
    sget-object p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 11
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 13
    const p3, 0x7f0d00b8

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mRootView:Landroid/view/View;

    .line 23
    const p2, 0x7f0a0163

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 32
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 34
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->initListView()V

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->showEmptyView()V

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mRootView:Landroid/view/View;

    .line 42
    return-object p1
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
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "onUserVisible"

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    if-nez p1, :cond_15

    .line 18
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 20
    if-eqz p1, :cond_1f

    .line 22
    :cond_15
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$1;

    .line 24
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)V

    .line 27
    const-wide/16 v0, 0x32

    .line 29
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 32
    :cond_1f
    return-void
.end method

.method public onVideoChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2d

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_16

    .line 22
    goto :goto_2d

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 25
    if-eqz p1, :cond_2c

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 33
    goto :goto_2c

    .line 34
    :cond_21
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "onEventMainThread: load category video"

    .line 38
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->loadGroupList(Z)V

    .line 45
    :cond_2c
    :goto_2c
    return-void

    .line 46
    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 49
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_c

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 9
    move-result p1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->handleSwitchViewType(I)V

    .line 13
    :cond_c
    return-void
.end method

.method public showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mFileList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    const/16 v2, 0x8

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_14

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    move v2, v3

    .line 30
    :cond_1d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 35
    if-eqz v0, :cond_27

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mXRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 42
    :goto_29
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 45
    return-void
.end method
