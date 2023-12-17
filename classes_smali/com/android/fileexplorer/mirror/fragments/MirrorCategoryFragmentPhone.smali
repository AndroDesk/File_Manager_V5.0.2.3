.class public Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;
.source "MirrorCategoryFragmentPhone.java"


# static fields
.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "file_category"

.field private static final PAGE_COUNT:I = 0x64

.field private static final PICTURE_NUM_COLUMNS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CategoryFragmentPhone"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mColumnType:I

.field private mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

.field private mIsLoading:Z

.field private mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

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

.field private mRootView:Landroid/view/View;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I

.field private mTimeCost:Lcom/android/fileexplorer/util/TimeCost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mColumnType:I

    .line 17
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 19
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 24
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mIsLoading:Z

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mIsLoading:Z

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->onRefreshFileList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mStartIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mStartIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->getStatParam()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->setFileListResult()V

    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->lambda$onFileChange$0(Lcom/android/fileexplorer/event/FileChangeEvent;)V

    return-void
.end method

.method private getStatParam()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    packed-switch v0, :pswitch_data_2a

    .line 14
    :pswitch_d  #0x6
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
    :pswitch_18  #0x7
    const-string v0, "picture"

    .line 27
    return-object v0

    .line 28
    :pswitch_1b  #0x5
    const-string v0, "bluetooth"

    .line 30
    return-object v0

    .line 31
    :pswitch_1e  #0x4
    const-string v0, "apk"

    .line 33
    return-object v0

    .line 34
    :pswitch_21  #0x3
    const-string v0, "archive"

    .line 36
    return-object v0

    .line 37
    :pswitch_24  #0x2
    const-string v0, "music"

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
        :pswitch_d  #00000006
        :pswitch_18  #00000007
        :pswitch_15  #00000008
        :pswitch_12  #00000009
        :pswitch_f  #0000000a
    .end packed-switch
.end method

.method private handleSwitchViewType(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mColumnType:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mColumnType:I

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->refreshAdapter(Z)V

    .line 15
    return-void
.end method

.method private iniRecyclerView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x102000a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 31
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 33
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 38
    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 43
    new-instance v3, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;

    .line 45
    invoke-direct {v3, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V

    .line 48
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 51
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 53
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 55
    invoke-direct {v0, v3}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 58
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 60
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->refreshAdapter(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 70
    new-instance v2, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;

    .line 72
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 78
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$3;

    .line 80
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 82
    invoke-direct {v0, p0, p0, v2, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 85
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 87
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 92
    return-void
.end method

.method private iniView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a03d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a036a

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a0163

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->iniRecyclerView()V

    .line 43
    return-void
.end method

.method private initCategory(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_c

    .line 3
    const/4 v0, -0x1

    .line 4
    const-string v1, "file_category"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->setCategory(I)V

    .line 13
    :cond_c
    return-void
.end method

.method private initLayoutManager()V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    packed-switch v0, :pswitch_data_30

    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_27

    .line 16
    :pswitch_f  #0x7
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 20
    const/16 v2, 0x8

    .line 22
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 25
    goto :goto_27

    .line 26
    :pswitch_19  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 30
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 37
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 40
    :goto_27
    if-eqz v0, :cond_2e

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    :cond_2e
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_19  #00000002
        :pswitch_19  #00000003
        :pswitch_19  #00000004
        :pswitch_19  #00000005
        :pswitch_19  #00000006
        :pswitch_f  #00000007
    .end packed-switch
.end method

.method private synthetic lambda$onFileChange$0(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 10

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_82

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_82

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_c
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_82

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 29
    move v3, v0

    .line 30
    :goto_1d
    iget-object v4, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_7f

    .line 38
    iget-object v4, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/CharSequence;

    .line 46
    iget-object v5, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 48
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_7c

    .line 54
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 59
    move-result v4

    .line 60
    iget-object v5, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x1

    .line 67
    sub-int/2addr v5, v6

    .line 68
    if-ne v3, v5, :cond_77

    .line 70
    const/4 v5, -0x1

    .line 71
    if-eq v4, v5, :cond_77

    .line 73
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 75
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 78
    move-result-object v5

    .line 79
    instance-of v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    if-eqz v5, :cond_77

    .line 83
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 85
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 91
    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 94
    move-result v5

    .line 95
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 97
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 103
    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 106
    move-result v7

    .line 107
    if-lt v4, v5, :cond_70

    .line 109
    if-le v4, v7, :cond_6f

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move v6, v0

    .line 113
    :cond_70
    :goto_70
    if-eqz v6, :cond_77

    .line 115
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 117
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 120
    :cond_77
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 122
    invoke-virtual {v5, v4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(I)V

    .line 125
    :cond_7c
    add-int/lit8 v3, v3, 0x1

    .line 127
    goto :goto_1d

    .line 128
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_c

    .line 131
    :cond_82
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;-><init>()V

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
    if-eqz v0, :cond_2d

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mIsLoading:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_2d

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 14
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mIsLoading:Z

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 29
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;

    .line 31
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)V

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x0

    .line 41
    new-array v1, v1, [Ljava/lang/Void;

    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method private onSortCallback()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->setFileListResult()V

    .line 45
    :cond_2c
    return-void
.end method

.method private refreshAdapter(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_15

    .line 11
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v2, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;Z)V

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 24
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 26
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 31
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 33
    if-ne v0, v2, :cond_78

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 37
    const/16 v2, 0xb

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v0, :cond_34

    .line 42
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v0, v4, v3, v1, v2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 55
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 57
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 60
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mColumnType:I

    .line 62
    const/16 v4, 0x3c

    .line 64
    if-ne v0, v4, :cond_55

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 71
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 73
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 75
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 78
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 80
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 82
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 85
    goto :goto_6b

    .line 86
    :cond_55
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 88
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 91
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    .line 93
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 95
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 101
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 103
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 105
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 108
    :goto_6b
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 110
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    if-eqz p1, :cond_7b

    .line 115
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 117
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 120
    goto :goto_7b

    .line 121
    :cond_78
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->initLayoutManager()V

    .line 124
    :cond_7b
    :goto_7b
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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileListRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->showEmptyView()V

    .line 33
    return-void
.end method

.method private showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 31
    const/4 v2, 0x0

    .line 32
    const/16 v3, 0x8

    .line 34
    if-eqz v1, :cond_2b

    .line 36
    if-eqz v0, :cond_27

    .line 38
    move v4, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v4, v3

    .line 41
    :goto_28
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 44
    :cond_2b
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 46
    if-eqz v0, :cond_31

    .line 48
    move v4, v2

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v4, v3

    .line 51
    :goto_32
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 56
    if-nez v0, :cond_3a

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v2, v3

    .line 60
    :goto_3b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 65
    if-eqz v0, :cond_45

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 72
    :goto_47
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 75
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->isEditMode()Z

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

.method public handleHover(Z)V
    .registers 2

    return-void
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
    if-ne p1, p3, :cond_15

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFabMenuFunctionLayout:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->closeIfExpand()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_14
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->exitActionMode()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    const p1, 0x7f12032d

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mColumnType:I

    .line 31
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

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
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    .line 16
    :cond_f
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1e

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    if-eqz v0, :cond_1e

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->onRefreshFileList(Z)V

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 33
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 35
    if-ne v0, v1, :cond_31

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 39
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/d;

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v1, v2, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    const-wide/16 v2, 0x50

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    :cond_31
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    sparse-switch v1, :sswitch_data_3c

    .line 15
    goto :goto_2f

    .line 16
    :sswitch_f
    const/16 p1, 0x32

    .line 18
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->handleSwitchViewType(I)V

    .line 21
    return v2

    .line 22
    :sswitch_15
    const/16 p1, 0x3c

    .line 24
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->handleSwitchViewType(I)V

    .line 27
    return v2

    .line 28
    :sswitch_1b
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 30
    goto :goto_2f

    .line 31
    :sswitch_1e
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 33
    goto :goto_2f

    .line 34
    :sswitch_21
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 36
    goto :goto_2f

    .line 37
    :sswitch_24
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 39
    goto :goto_2f

    .line 40
    :sswitch_27
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 42
    goto :goto_2f

    .line 43
    :sswitch_2a
    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->onRefreshFileList(Z)V

    .line 47
    return v2

    .line 48
    :goto_2f
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 50
    invoke-static {v1, v0}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 53
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->onSortCallback()V

    .line 56
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :sswitch_data_3c
    .sparse-switch
        0x7f0a01ec -> :sswitch_2a
        0x7f0a0266 -> :sswitch_27
        0x7f0a0267 -> :sswitch_24
        0x7f0a0268 -> :sswitch_21
        0x7f0a0269 -> :sswitch_1e
        0x7f0a026b -> :sswitch_1b
        0x7f0a026d -> :sswitch_15
        0x7f0a026e -> :sswitch_f
    .end sparse-switch
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object p3

    .line 5
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->initCategory(Landroid/os/Bundle;)V

    .line 8
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 10
    iget-object p3, p3, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 12
    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 18
    if-eqz p3, :cond_1a

    .line 20
    invoke-virtual {p3}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    .line 23
    move-result-object p3

    .line 24
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->initCategory(Landroid/os/Bundle;)V

    .line 27
    :cond_1a
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    if-eqz p3, :cond_2e

    .line 31
    const p3, 0x7f0d00b1

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRootView:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->iniView()V

    .line 44
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mRootView:Landroid/view/View;

    .line 46
    return-object p1

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    const-string p2, "category can not be null"

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1
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
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

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
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onResume()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$5;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V

    .line 9
    const-wide/16 v1, 0x64

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 14
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_c

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 9
    move-result p1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->handleSwitchViewType(I)V

    .line 13
    :cond_c
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
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    if-eqz p1, :cond_19

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mFileNameList:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 23
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mStartIndex:I

    .line 26
    :cond_19
    return-void
.end method
