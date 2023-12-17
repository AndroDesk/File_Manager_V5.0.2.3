.class public abstract Lcom/android/cloud/fragment/BaseCloudFragment;
.super Lcom/android/fileexplorer/fragment/AbsActionBarFragment;
.source "BaseCloudFragment.java"

# interfaces
.implements Lcom/android/cloud/fragment/presenter/CloudFileContract$View;
.implements Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;
.implements Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;
    }
.end annotation


# static fields
.field public static final CATEGORY_KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CloudFileFragment"


# instance fields
.field public isActionMode:Z

.field public mAccount:Landroid/accounts/Account;

.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public mContainerView:Lcom/android/cloud/widget/ListContainerView;

.field public mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mHasPermission:Z

.field public mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mPermissionView:Lmiuix/core/widget/NestedScrollView;

.field public mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

.field public mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

.field public mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field public mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field public mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->isActionMode:Z

    .line 7
    return-void
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method private getColumnType()I
    .registers 2

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 9
    return v0
.end method

.method private initCloudFilesAdapter()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 12
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setIsCloudFile(Ljava/lang/Boolean;)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/cloud/fragment/BaseCloudFragment;->setLayoutManager(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 30
    new-instance v1, Lcom/android/cloud/fragment/BaseCloudFragment$4;

    .line 32
    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/BaseCloudFragment$4;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    .line 38
    return-void
.end method

.method private initEventBus()V
    .registers 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method private initListContainerView(Landroid/view/View;)V
    .registers 4

    .line 1
    const v0, 0x7f0a0232

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/cloud/widget/ListContainerView;

    .line 10
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 12
    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getRecyclerView()Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 27
    const v0, 0x7f0a03d2

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lmiuix/springback/view/SpringBackLayout;

    .line 36
    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 38
    return-void
.end method

.method private initListView()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/BaseCloudFragment$2;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 7
    invoke-direct {v0, p0, v1, v2}, Lcom/android/cloud/fragment/BaseCloudFragment$2;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 12
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

    .line 21
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 23
    new-instance v1, Lcom/android/cloud/fragment/BaseCloudFragment$3;

    .line 25
    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/BaseCloudFragment$3;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 31
    return-void
.end method

.method private initSortData()V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    return-void
.end method


# virtual methods
.method public checkAccountIfInvalid()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_43

    .line 23
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->clearCloudData()V

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 28
    if-eqz v1, :cond_2b

    .line 30
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2b

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 38
    invoke-virtual {v1}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 44
    :cond_2b
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 46
    if-eqz v1, :cond_3a

    .line 48
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3a

    .line 54
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 56
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 59
    :cond_3a
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    .line 61
    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 66
    const/4 v0, 0x1

    .line 67
    return v0

    .line 68
    :cond_43
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    .line 70
    if-nez v1, :cond_49

    .line 72
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    .line 74
    :cond_49
    const-string v0, "CloudFileFragment"

    .line 76
    const-string v1, "account is valid"

    .line 78
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    return v0
.end method

.method public checkValid()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public clearCloudData()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudDataInited(Ljava/lang/Boolean;)V

    .line 17
    return-void
.end method

.method public abstract displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
.end method

.method public finishPullRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 8
    :cond_7
    return-void
.end method

.method public getContentInsetView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 3
    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public abstract getLayoutRes()I
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "CloudFileFragment"

    return-object v0
.end method

.method public getMarginMiddle()I
    .registers 2

    const v0, 0x7f070244

    return v0
.end method

.method public getMarginSide()I
    .registers 2

    const v0, 0x7f070246

    return v0
.end method

.method public getModeType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02d8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public abstract initActionBar()V
.end method

.method public initDecoration()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 8
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getColumnType()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v1, v0, :cond_5b

    .line 16
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v0

    .line 31
    const v3, 0x7f07028f

    .line 34
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v3

    .line 42
    const v4, 0x7f070756

    .line 45
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v3

    .line 49
    const v4, 0x7f0701d4

    .line 52
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 55
    move-result v4

    .line 56
    const v5, 0x7f0701d1

    .line 59
    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 62
    move-result v5

    .line 63
    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 65
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 68
    move-result v7

    .line 69
    invoke-direct {v6, v0, v3, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    .line 72
    iput-object v6, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 74
    invoke-virtual {v6, v5, v4, v2, v2}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 77
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 79
    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 81
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 84
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 86
    if-eqz v0, :cond_67

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 91
    goto :goto_67

    .line 92
    :cond_5b
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 94
    if-eqz v0, :cond_67

    .line 96
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 99
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 101
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 104
    :cond_67
    :goto_67
    return-void
.end method

.method public abstract initPresenter(Landroid/os/Bundle;)V
.end method

.method public abstract initSortView(Landroid/view/View;)V
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initListContainerView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initCloudFilesAdapter()V

    .line 7
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initSortData()V

    .line 10
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initActionBar()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initSortView(Landroid/view/View;)V

    .line 16
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initListView()V

    .line 19
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initEventBus()V

    .line 22
    return-void
.end method

.method public isToBack()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "bundle_key_istobackstack"

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public onActionModeChanged(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->isActionMode:Z

    .line 3
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 16
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 21
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 16
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 18
    if-nez v0, :cond_15

    .line 20
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_15
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onBackPressed()Z

    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public onBackgroundSyncDataUpdate()V
    .registers 4

    .line 1
    const-string v0, "MiDrive_LOG"

    .line 3
    const-string v1, "onBackgroundSyncDataUpdate"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 15
    return-void
.end method

.method public onCloudChangeEvent(Lcom/android/cloud/event/CloudChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 8
    return-void
.end method

.method public onCloudDataInited()V
    .registers 1

    return-void
.end method

.method public onCloudItemLongClick(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0, v0, p1, p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    .line 12
    :cond_b
    return-void
.end method

.method public onCloudStatusChanged(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 3
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 10
    goto :goto_1a

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 13
    if-eqz p1, :cond_1a

    .line 15
    const-string p1, "MiDrive_LOG"

    .line 17
    const-string v0, "onCloudStatusChanged"

    .line 19
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v0, 0x7f12011f

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 22
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 24
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    .line 34
    new-instance v0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/cloud/fragment/BaseCloudFragment$1;)V

    .line 40
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    .line 42
    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 44
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 46
    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 49
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 51
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->setupView(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    .line 54
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 61
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initPresenter(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 6
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 16
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 22
    :cond_15
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    const-string v0, "CloudFileFragment"

    .line 6
    const-string v1, "onDestroyView: "

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->onDestroy()V

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->detachView()V

    .line 25
    :cond_18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 39
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 46
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    .line 48
    if-eqz v0, :cond_3a

    .line 50
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->stopObserveSyncComplete(Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    .line 59
    :cond_3a
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    sparse-switch p1, :sswitch_data_e2

    .line 10
    goto/16 :goto_e1

    .line 12
    :sswitch_b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    iput v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 16
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    .line 21
    goto/16 :goto_e1

    .line 23
    :sswitch_16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 25
    iput v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 27
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 29
    invoke-virtual {p1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    .line 32
    goto/16 :goto_e1

    .line 34
    :sswitch_21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 36
    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 38
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 43
    move-result v2

    .line 44
    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 46
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 55
    goto/16 :goto_e1

    .line 57
    :sswitch_38
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 59
    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 61
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 66
    move-result v3

    .line 67
    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 69
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 74
    move-result v2

    .line 75
    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 78
    goto/16 :goto_e1

    .line 80
    :sswitch_4f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 82
    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 84
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 89
    move-result v2

    .line 90
    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 92
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 101
    goto/16 :goto_e1

    .line 103
    :sswitch_66
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 105
    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 107
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 112
    move-result v3

    .line 113
    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 115
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 120
    move-result v2

    .line 121
    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 124
    goto :goto_e1

    .line 125
    :sswitch_7c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 127
    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 129
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 134
    move-result v2

    .line 135
    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 137
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 142
    move-result v0

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 146
    goto :goto_e1

    .line 147
    :sswitch_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 149
    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 151
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 153
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 156
    move-result v3

    .line 157
    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 159
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 161
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result v2

    .line 165
    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 168
    goto :goto_e1

    .line 169
    :sswitch_a8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 171
    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 173
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 178
    move-result v2

    .line 179
    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 181
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 186
    move-result v0

    .line 187
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 190
    goto :goto_e1

    .line 191
    :sswitch_be
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 193
    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 195
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 197
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 200
    move-result v3

    .line 201
    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 203
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 208
    move-result v2

    .line 209
    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 212
    goto :goto_e1

    .line 213
    :sswitch_d4
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 215
    if-eqz p1, :cond_e1

    .line 217
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 219
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getCurrentParentId()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->createFolder(Ljava/lang/String;)V

    .line 226
    :cond_e1
    :goto_e1
    return v1

    .line 227
    :sswitch_data_e2
    .sparse-switch
        0x7f0a01eb -> :sswitch_d4
        0x7f0a03af -> :sswitch_be
        0x7f0a03b0 -> :sswitch_a8
        0x7f0a03b4 -> :sswitch_92
        0x7f0a03b5 -> :sswitch_7c
        0x7f0a03b6 -> :sswitch_66
        0x7f0a03b7 -> :sswitch_4f
        0x7f0a03ba -> :sswitch_38
        0x7f0a03bb -> :sswitch_21
        0x7f0a048f -> :sswitch_16
        0x7f0a0492 -> :sswitch_b
    .end sparse-switch
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_f

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 11
    if-eqz p1, :cond_f

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 16
    :cond_f
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    if-eqz v1, :cond_2e

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 31
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 42
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    :cond_2e
    return-void
.end method

.method public onNewFolder()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 3
    const v1, 0x7f0a01eb

    .line 6
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onPause()V

    .line 4
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->stopObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    .line 11
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1a

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1a

    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setLayoutManager(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 22
    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 24
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 9
    move-result v1

    .line 10
    if-eq v0, v1, :cond_2c

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_28

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initView(Landroid/view/View;)V

    .line 29
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 40
    goto :goto_39

    .line 41
    :cond_28
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->showNoPermissionView()V

    .line 44
    goto :goto_39

    .line 45
    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_39

    .line 51
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p1

    .line 10
    sget-object v1, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 15
    move-result-object v1

    .line 16
    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 21
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortOrderChanged(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 6
    sget-object v1, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 17
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onViewModeChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    .line 9
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    .line 4
    return-void
.end method

.method public openFile(ILcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 6
    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 8
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v3, "item is cloud:"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "MiDrive_LOG"

    .line 31
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "云盘tab页"

    .line 36
    invoke-static {v0, v2}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileOpen(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v5, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_b0

    .line 59
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_b0

    .line 69
    const-string p1, "releaseFileCache:"

    .line 71
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object p1

    .line 75
    iget-object p2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_86

    .line 101
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 104
    move-result-object p2

    .line 105
    sget-object p3, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 107
    if-ne p2, p3, :cond_86

    .line 109
    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 111
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 118
    move-result-object p3

    .line 119
    invoke-static {p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_af

    .line 125
    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 127
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {p2, p1, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Ljava/util/List;)V

    .line 134
    goto :goto_af

    .line 135
    :cond_86
    if-eqz p1, :cond_aa

    .line 137
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 140
    move-result-object p2

    .line 141
    sget-object p3, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 143
    if-eq p2, p3, :cond_98

    .line 145
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 148
    move-result-object p2

    .line 149
    sget-object p3, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    .line 151
    if-ne p2, p3, :cond_aa

    .line 153
    :cond_98
    new-instance p2, Ljava/util/ArrayList;

    .line 155
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object p3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 163
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 166
    move-result-wide v0

    .line 167
    invoke-static {p3, p2, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    .line 170
    goto :goto_af

    .line 171
    :cond_aa
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 173
    invoke-static {p1, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 176
    :cond_af
    :goto_af
    return-void

    .line 177
    :cond_b0
    const-string v3, "pic"

    .line 179
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_c4

    .line 185
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 187
    invoke-static {p1, p3, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    .line 190
    const-string p1, "图片"

    .line 192
    invoke-static {p1, v2}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    goto/16 :goto_1a5

    .line 197
    :cond_c4
    const-string v3, "video"

    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v3

    .line 203
    const-string v4, ""

    .line 205
    if-eqz v3, :cond_fd

    .line 207
    iget-wide v5, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 209
    const-wide/32 v7, 0x5f5e100

    .line 212
    cmp-long v3, v5, v7

    .line 214
    if-gez v3, :cond_fd

    .line 216
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_f6

    .line 224
    iget-object v5, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 226
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    .line 233
    move-result-object v7

    .line 234
    const/4 v8, 0x1

    .line 235
    iget-wide v9, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 237
    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 240
    const-string p1, "视频"

    .line 242
    invoke-static {p1, v2}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    goto/16 :goto_1a5

    .line 247
    :cond_f6
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 249
    invoke-static {v0, p2, p3, p1, v4}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickLocalFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;ILjava/lang/String;)V

    .line 252
    goto/16 :goto_1a5

    .line 254
    :cond_fd
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    .line 258
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 264
    move-result-object v5

    .line 265
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    move-result v5

    .line 269
    if-nez v5, :cond_11a

    .line 271
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 274
    move-result-object v5

    .line 275
    const-string v6, "-"

    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_18a

    .line 283
    :cond_11a
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v5, v6}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 294
    move-result-object v5

    .line 295
    if-eqz v5, :cond_14c

    .line 297
    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 300
    move-result-object v6

    .line 301
    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 303
    if-ne v6, v7, :cond_14c

    .line 305
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 307
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 314
    move-result-object p2

    .line 315
    invoke-static {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    .line 318
    move-result p1

    .line 319
    if-nez p1, :cond_14b

    .line 321
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 323
    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 325
    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 328
    move-result-object p3

    .line 329
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showUploadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/cloud/bean/CloudFileInfo;)V

    .line 332
    :cond_14b
    return-void

    .line 333
    :cond_14c
    if-eqz v5, :cond_18a

    .line 335
    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 338
    move-result-object v6

    .line 339
    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 341
    if-eq v6, v7, :cond_15e

    .line 343
    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 346
    move-result-object v6

    .line 347
    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    .line 349
    if-ne v6, v7, :cond_18a

    .line 351
    :cond_15e
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getSize()J

    .line 354
    move-result-wide p1

    .line 355
    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 358
    move-result-wide v1

    .line 359
    cmp-long p1, p1, v1

    .line 361
    if-lez p1, :cond_174

    .line 363
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getSize()J

    .line 366
    move-result-wide p1

    .line 367
    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 370
    move-result-wide v1

    .line 371
    sub-long/2addr p1, v1

    .line 372
    goto :goto_178

    .line 373
    :cond_174
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getSize()J

    .line 376
    move-result-wide p1

    .line 377
    :goto_178
    new-instance p3, Ljava/util/ArrayList;

    .line 379
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 391
    invoke-static {v0, p3, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestContinueUpload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    .line 394
    return-void

    .line 395
    :cond_18a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 401
    move-result v0

    .line 402
    const-string v5, "点击打开未缓存的云文件"

    .line 404
    if-nez v0, :cond_1af

    .line 406
    new-instance v0, Ljava/io/File;

    .line 408
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_1a6

    .line 417
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 419
    invoke-static {v0, p2, p3, p1, v4}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickLocalFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;ILjava/lang/String;)V

    .line 422
    :goto_1a5
    return-void

    .line 423
    :cond_1a6
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 425
    invoke-static {p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 428
    invoke-static {v1, v5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void

    .line 432
    :cond_1af
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 434
    invoke-static {p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 437
    invoke-static {v1, v5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public abstract openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
.end method

.method public requestRefresh(Z)V
    .registers 5

    .line 1
    if-eqz p1, :cond_10

    .line 3
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    .line 11
    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 24
    :goto_17
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_1e

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 14
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    .line 21
    if-eqz p1, :cond_1a

    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setLayoutManager(Z)V

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initDecoration()V

    .line 30
    return-void

    .line 31
    :cond_1e
    :goto_1e
    const-string p1, "CloudFileFragment"

    .line 33
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 35
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setLayoutManager(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    if-eqz v0, :cond_39

    .line 5
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_39

    .line 10
    :cond_9
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getColumnType()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1e

    .line 17
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 26
    move-result v2

    .line 27
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 30
    goto :goto_27

    .line 31
    :cond_1e
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 40
    :goto_27
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 42
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initDecoration()V

    .line 50
    if-eqz p1, :cond_38

    .line 52
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 54
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    .line 57
    :cond_38
    return-void

    .line 58
    :cond_39
    :goto_39
    const-string p1, "CloudFileFragment"

    .line 60
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 62
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    :cond_d
    return-void
.end method

.method public showLoading(ZI)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 11
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 14
    :goto_d
    return-void
.end method

.method public showNoPermissionView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a022a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    const v1, 0x7f0a042e

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/Button;

    .line 23
    new-instance v1, Lcom/android/cloud/fragment/BaseCloudFragment$1;

    .line 25
    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/BaseCloudFragment$1;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public showToast(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    return-void
.end method

.method public startSyncCloudData()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    .line 11
    if-nez v0, :cond_14

    .line 13
    const-string v0, "CloudFileFragment"

    .line 15
    const-string v1, "mAccount is null"

    .line 17
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudAccountName(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    .line 34
    iget-object v3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    .line 39
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 45
    return-void
.end method

.method public switchViewMode()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_12

    .line 12
    :cond_b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

    .line 19
    :cond_12
    :goto_12
    return-void
.end method

.method public updateChoiceItems()V
    .registers 1

    return-void
.end method

.method public updateCloudNotify(Z)V
    .registers 2

    return-void
.end method

.method public updateFiles(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "MiDrive_LOG"

    .line 3
    if-nez p1, :cond_a

    .line 5
    const-string p1, "source is null"

    .line 7
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    const-string v1, "replace data size:"

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 33
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->replaceData(Ljava/util/List;)V

    .line 36
    if-nez p2, :cond_34

    .line 38
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 40
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    .line 47
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 49
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

    .line 57
    :goto_38
    return-void
.end method

.method public updatePathGallery(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
