.class public Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "CategoryFragmentPhone.java"


# static fields
.field private static final PAGE_COUNT:I

.field private static final PICTURE_NUM_COLUMNS:I

.field private static final TAG:Ljava/lang/String; = "CategoryFragmentPhone"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRefreshFileListTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I

.field private mTimeCost:Lcom/android/fileexplorer/util/TimeCost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->PAGE_COUNT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->PICTURE_NUM_COLUMNS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onRefreshFileList(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mStartIndex:I

    return p0
.end method

.method public static synthetic access$1102(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mStartIndex:I

    return p1
.end method

.method public static synthetic access$1202(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mIsLoading:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->getStatParam()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->setFileListResult()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p0
.end method

.method private getStatParam()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    :pswitch_d  #0x7
    const/4 v0, 0x0

    return-object v0

    :pswitch_f  #0xa
    const-string v0, "download"

    return-object v0

    :pswitch_12  #0x9
    const-string v0, "doc"

    return-object v0

    :pswitch_15  #0x8
    const-string v0, "favorite"

    return-object v0

    :pswitch_18  #0x6
    const-string v0, "bluetooth"

    return-object v0

    :pswitch_1b  #0x5
    const-string v0, "apk"

    return-object v0

    :pswitch_1e  #0x4
    const-string v0, "archive"

    return-object v0

    :pswitch_21  #0x3
    const-string v0, "music"

    return-object v0

    :pswitch_24  #0x2
    const-string v0, "picture"

    return-object v0

    :pswitch_27  #0x1
    const-string v0, "video"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_24  #00000002
        :pswitch_21  #00000003
        :pswitch_1e  #00000004
        :pswitch_1b  #00000005
        :pswitch_18  #00000006
        :pswitch_d  #00000007
        :pswitch_15  #00000008
        :pswitch_12  #00000009
        :pswitch_f  #0000000a
    .end packed-switch
.end method

.method private iniRecyclerView()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$1;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->initLayoutManager()V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    new-instance v2, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    return-void
.end method

.method private iniView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->initFabMenuLayout()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->iniRecyclerView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const-string v1, "PAGE_CategoryFragmentPhone"

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private initFabMenuLayout()V
    .registers 1

    return-void
.end method

.method private initLayoutManager()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v1, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_32

    const/4 v0, 0x0

    goto :goto_2a

    :pswitch_12  #0x3, 0x4, 0x5, 0x6, 0x7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_2a

    :pswitch_1a  #0x2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_2a

    :pswitch_23  #0x1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_2a
    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_1a  #00000002
        :pswitch_12  #00000003
        :pswitch_12  #00000004
        :pswitch_12  #00000005
        :pswitch_12  #00000006
        :pswitch_12  #00000007
    .end packed-switch
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;-><init>()V

    return-object v0
.end method

.method private onRefreshFileList(Z)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mIsLoading:Z

    if-eqz v0, :cond_b

    goto :goto_24

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mIsLoading:Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_24
    :goto_24
    return-void
.end method

.method private onSortCallback()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->setFileListResult()V

    :cond_2c
    return-void
.end method

.method private setFileListResult()V
    .registers 3

    const-string v0, "setFileListResult size = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CategoryFragmentPhone"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->showEmptyView()V

    return-void
.end method

.method private showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyView show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CategoryFragmentPhone"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_30

    invoke-virtual {v1, v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_2c

    move v4, v3

    goto :goto_2d

    :cond_2c
    move v4, v2

    :goto_2d
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    :cond_30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_36

    move v4, v3

    goto :goto_37

    :cond_36
    move v4, v2

    :goto_37
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_3f

    move v2, v3

    :cond_3f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_4b

    :cond_49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    :goto_4b
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

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

    const v0, 0x7f0d00b2

    return v0
.end method

.method public initActionBar()V
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eqz v1, :cond_15

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-nez v1, :cond_1b

    const v1, 0x7f110061

    :cond_1b
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "file_category"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->setCategory(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->initActionBar()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->iniView()V

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

    if-ne p1, p3, :cond_15

    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;

    if-eqz p2, :cond_15

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;->encrypt()V

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->exitActionMode()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const p1, 0x7f120524

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    :cond_f
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onRefreshFileList(Z)V

    :cond_1e
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    :pswitch_d  #0x7f0a026a
    goto :goto_1c

    :pswitch_e  #0x7f0a026b
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    goto :goto_1c

    :pswitch_11  #0x7f0a0269
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    goto :goto_1c

    :pswitch_14  #0x7f0a0268
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    goto :goto_1c

    :pswitch_17  #0x7f0a0267
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    goto :goto_1c

    :pswitch_1a  #0x7f0a0266
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    :goto_1c
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onSortCallback()V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_2a
    .packed-switch 0x7f0a0266
        :pswitch_1a  #7f0a0266
        :pswitch_17  #7f0a0267
        :pswitch_14  #7f0a0268
        :pswitch_11  #7f0a0269
        :pswitch_d  #7f0a026a
        :pswitch_e  #7f0a026b
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setCategory(I)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-ltz p1, :cond_d

    array-length v1, v0

    if-ge p1, v1, :cond_d

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_26

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    goto :goto_55

    :cond_26
    if-eqz p1, :cond_35

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    goto :goto_55

    :cond_35
    if-eqz p1, :cond_3f

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_51

    :cond_3f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    :cond_51
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mStartIndex:I

    :cond_61
    return-void
.end method
