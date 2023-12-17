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

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->isActionMode:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method private getColumnType()I
    .registers 2

    sget-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    return v0
.end method

.method private initCloudFilesAdapter()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setIsCloudFile(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v2}, Lcom/android/cloud/fragment/BaseCloudFragment;->setLayoutManager(Z)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    new-instance v1, Lcom/android/cloud/fragment/BaseCloudFragment$4;

    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/BaseCloudFragment$4;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    return-void
.end method

.method private initEventBus()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private initListContainerView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f032fa4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/widget/ListContainerView;

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getRecyclerView()Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    const v0, 0x7f032e44

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/springback/view/SpringBackLayout;

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    return-void
.end method

.method private initListView()V
    .registers 4

    new-instance v0, Lcom/android/cloud/fragment/BaseCloudFragment$2;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/cloud/fragment/BaseCloudFragment$2;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v1, Lcom/android/cloud/fragment/BaseCloudFragment$3;

    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/BaseCloudFragment$3;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    return-void
.end method

.method private initSortData()V
    .registers 2

    sget-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method


# virtual methods
.method public checkAccountIfInvalid()Z
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->clearCloudData()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-virtual {v1}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    :cond_2b
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    :cond_3a
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    const/4 v0, 0x1

    return v0

    :cond_43
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    if-nez v1, :cond_49

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    :cond_49
    const-string v0, "CloudFileFragment"

    const-string v1, "account is valid"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public checkValid()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public clearCloudData()V
    .registers 3

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudDataInited(Ljava/lang/Boolean;)V

    return-void
.end method

.method public abstract displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
.end method

.method public finishPullRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    :cond_7
    return-void
.end method

.method public getContentInsetView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v0

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f4e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract initActionBar()V
.end method

.method public initDecoration()V
    .registers 9

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getColumnType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5b

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07028f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070756

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0701d4

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0701d1

    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v7

    invoke-direct {v6, v0, v3, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    iput-object v6, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v6, v5, v4, v2, v2}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz v0, :cond_67

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    goto :goto_67

    :cond_5b
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz v0, :cond_67

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initListContainerView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initCloudFilesAdapter()V

    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initSortData()V

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initActionBar()V

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initSortView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initListView()V

    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initEventBus()V

    return-void
.end method

.method public isToBack()Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundle_key_istobackstack"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActionModeChanged(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->isActionMode:Z

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onBackgroundSyncDataUpdate()V
    .registers 4

    const-string v0, "MiDrive_LOG"

    const-string v1, "onBackgroundSyncDataUpdate"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    return-void
.end method

.method public onCloudChangeEvent(Lcom/android/cloud/event/CloudChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    return-void
.end method

.method public onCloudDataInited()V
    .registers 1

    return-void
.end method

.method public onCloudItemLongClick(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0, v0, p1, p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    :cond_b
    return-void
.end method

.method public onCloudStatusChanged(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    goto :goto_1a

    :cond_a
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz p1, :cond_1a

    const-string p1, "MiDrive_LOG"

    const-string v0, "onCloudStatusChanged"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    new-instance v0, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;Lcom/android/cloud/fragment/BaseCloudFragment$1;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->setupView(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initPresenter(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    :cond_15
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    const-string v0, "CloudFileFragment"

    const-string v1, "onDestroyView: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->onDestroy()V

    :cond_11
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->detachView()V

    :cond_18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->stopObserveSyncComplete(Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    :cond_3a
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_e2

    goto/16 :goto_e1

    :sswitch_b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    goto/16 :goto_e1

    :sswitch_16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    goto/16 :goto_e1

    :sswitch_21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto/16 :goto_e1

    :sswitch_38
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto/16 :goto_e1

    :sswitch_4f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto/16 :goto_e1

    :sswitch_66
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_7c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_a8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_be
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_d4
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    if-eqz p1, :cond_e1

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->getCurrentParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->createFolder(Ljava/lang/String;)V

    :cond_e1
    :goto_e1
    return v1

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

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_f
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_2e

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v1

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mGridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2e
    return-void
.end method

.method public onNewFolder()V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a01eb

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onPause()V

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->stopObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setLayoutManager(Z)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1a
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    if-eq v0, v1, :cond_2c

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    goto :goto_39

    :cond_28
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->showNoPermissionView()V

    goto :goto_39

    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v1, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortOrderChanged(Z)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    sget-object v1, Lcom/android/cloud/fragment/BaseCloudFragment;->CATEGORY_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onViewModeChanged(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

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

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item is cloud:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiDrive_LOG"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "云盘tab页"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileOpen(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b0

    const-string p1, "releaseFileCache:"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object p1

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p2

    sget-object p3, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    if-ne p2, p3, :cond_86

    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    move-result p2

    if-nez p2, :cond_af

    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p1

    invoke-static {p2, p1, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Ljava/util/List;)V

    goto :goto_af

    :cond_86
    if-eqz p1, :cond_aa

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p2

    sget-object p3, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    if-eq p2, p3, :cond_98

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p2

    sget-object p3, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    if-ne p2, p3, :cond_aa

    :cond_98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v0

    invoke-static {p3, p2, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    goto :goto_af

    :cond_aa
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_af
    :goto_af
    return-void

    :cond_b0
    const-string v3, "pic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, p3, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    const-string p1, "图片"

    invoke-static {p1, v2}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a5

    :cond_c4
    const-string v3, "video"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_fd

    iget-wide v5, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    const-wide/32 v7, 0x5f5e100

    cmp-long v3, v5, v7

    if-gez v3, :cond_fd

    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f6

    iget-object v5, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    iget-wide v9, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string p1, "视频"

    invoke-static {p1, v2}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a5

    :cond_f6
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, p2, p3, p1, v4}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickLocalFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;ILjava/lang/String;)V

    goto/16 :goto_1a5

    :cond_fd
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11a

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18a

    :cond_11a
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v5

    if-eqz v5, :cond_14c

    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v6

    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Upload_error:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v6, v7, :cond_14c

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    move-result p1

    if-nez p1, :cond_14b

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object p2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showUploadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/cloud/bean/CloudFileInfo;)V

    :cond_14b
    return-void

    :cond_14c
    if-eqz v5, :cond_18a

    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v6

    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    if-eq v6, v7, :cond_15e

    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v6

    sget-object v7, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v6, v7, :cond_18a

    :cond_15e
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getSize()J

    move-result-wide p1

    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_174

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getSize()J

    move-result-wide p1

    invoke-virtual {v5}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v1

    sub-long/2addr p1, v1

    goto :goto_178

    :cond_174
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getSize()J

    move-result-wide p1

    :goto_178
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, p3, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestContinueUpload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    return-void

    :cond_18a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "点击打开未缓存的云文件"

    if-nez v0, :cond_1af

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, p2, p3, p1, v4}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickLocalFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;ILjava/lang/String;)V

    :goto_1a5
    return-void

    :cond_1a6
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    invoke-static {v1, v5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1af
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    invoke-static {v1, v5}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
.end method

.method public requestRefresh(Z)V
    .registers 5

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    goto :goto_17

    :cond_10
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    :goto_17
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_1e

    :cond_b
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setLayoutManager(Z)V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initDecoration()V

    return-void

    :cond_1e
    :goto_1e
    const-string p1, "CloudFileFragment"

    const-string v0, "setAdapter: activity is null or mFileListView is null."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLayoutManager(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_9

    goto :goto_39

    :cond_9
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getColumnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_27

    :cond_1e
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_27
    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->initDecoration()V

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    :cond_38
    return-void

    :cond_39
    :goto_39
    const-string p1, "CloudFileFragment"

    const-string v0, "setAdapter: activity is null or mFileListView is null."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public showLoading(ZI)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    :goto_d
    return-void
.end method

.method public showNoPermissionView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032fbc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0329b8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/cloud/fragment/BaseCloudFragment$1;

    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/BaseCloudFragment$1;-><init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showToast(I)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startSyncCloudData()V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_14

    const-string v0, "CloudFileFragment"

    const-string v1, "mAccount is null"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudAccountName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSyncListener:Lcom/android/cloud/fragment/BaseCloudFragment$SyncCompleteListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    return-void
.end method

.method public switchViewMode()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

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

    const-string v0, "MiDrive_LOG"

    if-nez p1, :cond_a

    const-string p1, "source is null"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v1, "replace data size:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->replaceData(Ljava/util/List;)V

    if-nez p2, :cond_34

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    goto :goto_38

    :cond_34
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

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
