.class public Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "CategoryFragmentPhone.java"


# static fields
.field private static final PAGE_COUNT:I = 0x64

.field private static final PICTURE_NUM_COLUMNS:I = 0x4

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onRefreshFileList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mStartIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$1102(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mStartIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$1202(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mIsLoading:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->getStatParam()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->setFileListResult()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object p0
.end method

.method private getStatParam()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    packed-switch v0, :pswitch_data_2a

    .line 14
    :pswitch_d  #0x7
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :pswitch_f  #0xa
    const-string v0, "download"

    .line 18
    return-object v0

    .line 19
    :pswitch_12  #0x9
    const-string v0, "doc"

    .line 21
    return-object v0

    .line 22
    :pswitch_15  #0x8
    const-string v0, "favorite"

    .line 24
    return-object v0

    .line 25
    :pswitch_18  #0x6
    const-string v0, "bluetooth"

    .line 27
    return-object v0

    .line 28
    :pswitch_1b  #0x5
    const-string v0, "apk"

    .line 30
    return-object v0

    .line 31
    :pswitch_1e  #0x4
    const-string v0, "archive"

    .line 33
    return-object v0

    .line 34
    :pswitch_21  #0x3
    const-string v0, "music"

    .line 36
    return-object v0

    .line 37
    :pswitch_24  #0x2
    const-string v0, "picture"

    .line 39
    return-object v0

    .line 40
    :pswitch_27  #0x1
    const-string v0, "video"

    .line 42
    return-object v0

    .line 43
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x102000a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 38
    new-instance v2, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$1;

    .line 40
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$1;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V

    .line 43
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->initLayoutManager()V

    .line 49
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 51
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 53
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 56
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 63
    new-instance v2, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;

    .line 65
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 71
    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;

    .line 73
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 75
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 77
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$3;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 80
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 82
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 87
    return-void
.end method

.method private iniView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a03d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a036a

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a0163

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->initFabMenuLayout()V

    .line 43
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->iniRecyclerView()V

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 48
    const-string v1, "PAGE_CategoryFragmentPhone"

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private initFabMenuLayout()V
    .registers 1

    return-void
.end method

.method private initLayoutManager()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v1, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result v0

    .line 12
    aget v0, v1, v0

    .line 14
    packed-switch v0, :pswitch_data_32

    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_2a

    .line 19
    :pswitch_12  #0x3, 0x4, 0x5, 0x6, 0x7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 23
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 26
    goto :goto_2a

    .line 27
    :pswitch_1a  #0x2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 35
    goto :goto_2a

    .line 36
    :pswitch_23  #0x1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 40
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    :goto_2a
    if-eqz v0, :cond_31

    .line 45
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    :cond_31
    return-void

    .line 51
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;-><init>()V

    .line 6
    return-object v0
.end method

.method private onRefreshFileList(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mIsLoading:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_24

    .line 12
    :cond_b
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mIsLoading:Z

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 20
    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;

    .line 22
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)V

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Void;

    .line 34
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method private onSortCallback()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2c

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->setFileListResult()V

    .line 45
    :cond_2c
    return-void
.end method

.method private setFileListResult()V
    .registers 3

    .line 1
    const-string v0, "setFileListResult size = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CategoryFragmentPhone"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->showEmptyView()V

    .line 33
    return-void
.end method

.method private showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "showEmptyView show = "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "CategoryFragmentPhone"

    .line 26
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 31
    const/16 v2, 0x8

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_30

    .line 36
    invoke-virtual {v1, v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 39
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 41
    if-eqz v0, :cond_2c

    .line 43
    move v4, v3

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v4, v2

    .line 46
    :goto_2d
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 49
    :cond_30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 51
    if-eqz v0, :cond_36

    .line 53
    move v4, v3

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v4, v2

    .line 56
    :goto_37
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 61
    if-nez v0, :cond_3f

    .line 63
    move v2, v3

    .line 64
    :cond_3f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 69
    if-eqz v0, :cond_49

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 73
    goto :goto_4b

    .line 74
    :cond_49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 76
    :goto_4b
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 79
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

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

    const v0, 0x7f0d00b2

    return v0
.end method

.method public initActionBar()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 7
    if-eqz v1, :cond_15

    .line 9
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    if-nez v1, :cond_1b

    .line 25
    const v1, 0x7f110061

    .line 28
    :cond_1b
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 31
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eqz p1, :cond_13

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 13
    move-result-object p1

    .line 14
    const-string v1, "file_category"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->setCategory(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->initActionBar()V

    .line 26
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->iniView()V

    .line 29
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
    if-ne p1, p3, :cond_15

    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_15

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;

    .line 15
    if-eqz p2, :cond_15

    .line 17
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;->encrypt()V

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->exitActionMode()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    const p1, 0x7f120524

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

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
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    .line 16
    :cond_f
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 15
    if-eqz p1, :cond_1e

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1e

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    if-eqz p1, :cond_1e

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onRefreshFileList(Z)V

    .line 31
    :cond_1e
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 10
    move-result v1

    .line 11
    packed-switch v1, :pswitch_data_2a

    .line 14
    :pswitch_d  #0x7f0a026a
    goto :goto_1c

    .line 15
    :pswitch_e  #0x7f0a026b
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 17
    goto :goto_1c

    .line 18
    :pswitch_11  #0x7f0a0269
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 20
    goto :goto_1c

    .line 21
    :pswitch_14  #0x7f0a0268
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 23
    goto :goto_1c

    .line 24
    :pswitch_17  #0x7f0a0267
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 26
    goto :goto_1c

    .line 27
    :pswitch_1a  #0x7f0a0266
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 29
    :goto_1c
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 31
    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 34
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onSortCallback()V

    .line 37
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    nop

    .line 43
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

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 17
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;-><init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V

    .line 9
    const-wide/16 v1, 0x64

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 14
    return-void
.end method

.method public setCategory(I)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object v0

    .line 5
    if-ltz p1, :cond_d

    .line 7
    array-length v1, v0

    .line 8
    if-ge p1, v1, :cond_d

    .line 10
    aget-object p1, v0, p1

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_26

    .line 26
    const-string v0, "image/"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_26

    .line 34
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 36
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 38
    goto :goto_55

    .line 39
    :cond_26
    if-eqz p1, :cond_35

    .line 41
    const-string v0, "video/"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_35

    .line 49
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 51
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 53
    goto :goto_55

    .line 54
    :cond_35
    if-eqz p1, :cond_3f

    .line 56
    const-string v0, "audio/"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_51

    .line 64
    :cond_3f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const-string v0, "android.intent.action.RINGTONE_PICKER"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_55

    .line 82
    :cond_51
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 84
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 86
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 88
    if-eqz p1, :cond_61

    .line 90
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 95
    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mStartIndex:I

    .line 98
    :cond_61
    return-void
.end method
