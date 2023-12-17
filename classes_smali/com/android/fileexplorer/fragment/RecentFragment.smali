.class public Lcom/android/fileexplorer/fragment/RecentFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "RecentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;
.implements Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;
.implements Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;
.implements Lcom/fileexplorer/advert/listenter/AdLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/RecentFragment$RefreshLoadStateRunnable;,
        Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;,
        Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;
    }
.end annotation


# static fields
.field private static final APP_GROUP_LIMIT:I = 0x8

.field private static final CATEGORY_KEY:Ljava/lang/String;

.field public static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final KEY_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final PAGE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RecentFragment"


# instance fields
.field private groupCachePoolSize:I

.field public isActionMode:Z

.field private isScanning:Z

.field private mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

.field private mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

.field private final mAdapterFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomAdIndex:[I

.field private mBtnImportFileFromOldPhone:Landroid/widget/Button;

.field private mBtnImportFileFromOldPhoneView:Landroid/view/View;

.field private mBtnToSetting:Landroid/widget/Button;

.field private mCallback:Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

.field private mDensity:F

.field public mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field public mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field private final mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPermission:Z

.field public mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

.field private mIsLoading:Z

.field private mLastGroupTime:J

.field public mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

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

.field private mLoadFileGroupRunnable:Ljava/lang/Runnable;

.field private mLoadingStop:Z

.field private final mLock:Ljava/lang/Object;

.field private mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

.field private mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

.field private mNested:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mNoPermissionView:Landroidx/core/widget/NestedScrollView;

.field private mRealGroupCount:I

.field public mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

.field public mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshLoadStateRunnable:Ljava/lang/Runnable;

.field private mRefreshOnVisible:Z

.field private mShowCloud:Z

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field public mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

.field private mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

.field private mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

.field private mTopAdIndex:[I

.field private mUiHasInit:Z

.field private noPermissionRes:Landroid/view/View;

.field private padCachePoolSize:I

.field private phoneCachePoolSize:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/fragment/RecentFragment;->CATEGORY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->phoneCachePoolSize:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->groupCachePoolSize:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->refreshLoadState(ZZ)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/RecentFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    return p0
.end method

.method public static synthetic access$1202(Lcom/android/fileexplorer/fragment/RecentFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    return p1
.end method

.method public static synthetic access$1212(Lcom/android/fileexplorer/fragment/RecentFragment;I)I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    return v0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/RecentFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLastGroupTime:J

    return-wide v0
.end method

.method public static synthetic access$1302(Lcom/android/fileexplorer/fragment/RecentFragment;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLastGroupTime:J

    return-wide p1
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->filterGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->calculateAdShowPlace(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->requestAd()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->addAdTofileItemDateGroups(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/RecentFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->setupGroupListener(Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->updateAdapter()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshLoadStateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshLoadStateRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    return p0
.end method

.method public static synthetic access$2302(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/model/AdFileItem;)Lcom/android/fileexplorer/model/AdFileItem;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    return-object p1
.end method

.method public static synthetic access$2402(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/model/AdFileItem;)Lcom/android/fileexplorer/model/AdFileItem;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    return-object p1
.end method

.method public static synthetic access$2500(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->notifyItemInsertedAd(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadingStop:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadingStop:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/RecentFragment;)F
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDensity:F

    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->reDrawStickView()V

    return-void
.end method

.method private adAddListenerAndReportPV()V
    .registers 4

    sget-boolean v0, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v1, "1.301.1.12"

    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v2, "1.301.1.13"

    invoke-virtual {v0, v2, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->reportPV(Ljava/lang/String;)V

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fileexplorer/advert/AdManagerController;->reportPV(Ljava/lang/String;)V

    return-void
.end method

.method private addAdTofileItemDateGroups(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_16

    move v1, v4

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    if-eqz v0, :cond_cb

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cb

    if-eqz p1, :cond_cb

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_cb

    :cond_29
    const-string v2, "1.301.1.12"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x8

    const-string v6, "FE_AD_LOG"

    if-eqz v2, :cond_7c

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    aget v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_59

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_59

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_59
    iget-object v7, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    aget v7, v7, v4

    iget-object v8, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    invoke-interface {v2, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAd: load recent page top ad"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    const-string v2, "1.301.1.13"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    aget p1, p1, v3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz v1, :cond_a8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_a8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadAd: load recent page bottom ad"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    :goto_cb
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/RecentFragment;Landroid/view/View;II)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/RecentFragment;->lambda$getGroupListener$0(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private calculateAdShowPlace(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_47

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_47

    :cond_9
    invoke-static {p1}, Lcom/android/fileexplorer/util/AdUtil;->getAdIndex(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    invoke-static {p1}, Lcom/android/fileexplorer/util/AdUtil;->getRecentSecAdIndex(Ljava/util/List;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    const-string p1, "calculateAdShowPlace mTopAdIndex: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FE_AD_LOG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateAdShowPlace mBottomAdIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method private checkAdData(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "1.301.1.12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    :cond_15
    const-string v0, "1.301.1.13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1

    :cond_28
    return v2
.end method

.method private checkIfNeedScanFile(Z)V
    .registers 6

    if-nez p1, :cond_1e

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->isMoreThanFiveMins(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_1e
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    const-string v0, "RecentFragment"

    const-string v1, "checkIfNeedScanFile real"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    if-eqz p1, :cond_3b

    const-string p1, "scan_file"

    const-string v0, "name"

    const-string v1, "recent2Front"

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method private filterGroup(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemDateGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemDateGroup;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_6c

    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.xlredapple.camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xlredapple.screenshot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_5e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3a

    :cond_62
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_6c
    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_70
    return-object v0
.end method

.method private getDateFirstIn()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    return-object v0
.end method

.method private getNativeAdView(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNativeAdView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FE_AD_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz v0, :cond_22

    const-string v0, "1.301.1.12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz v0, :cond_2f

    const-string v0, "1.301.1.13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2e
    return-void

    :cond_2f
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/RecentFragment$12;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$12;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/fileexplorer/advert/AdManagerController;->getAdView(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdViewListener;)V

    return-void
.end method

.method private getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1c

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupListener()Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    goto :goto_21

    :cond_1c
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>()V

    :goto_21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setIsFixedSize(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032e75

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    return-object v0
.end method

.method private handleActionBar(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    :try_start_4
    const-string v1, "mActionView"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/ReflectUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    if-nez v1, :cond_3d

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    goto :goto_3d

    :cond_17
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_3d

    :catch_1d
    move-exception p1

    goto :goto_20

    :catch_1f
    move-exception p1

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actionbar reflect exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private initActionBar()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v1, 0x7f110075

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private initFabPreference()V
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/fragment/RecentFragment;->CATEGORY_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method

.method private synthetic lambda$getGroupListener$0(Landroid/view/View;II)Z
    .registers 7

    const/4 p1, 0x0

    if-gez p3, :cond_4

    move p3, p1

    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    iget-object v0, p3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    const-string v1, "pkg_name"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    const-string v0, "app_name"

    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    const-string v0, "bundle_key_istobackstack"

    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p3

    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 v1, 0x3e8

    const-class v2, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p3, v0}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    return p1

    :cond_40
    const-string p2, "RecentFragment"

    const-string p3, "class cast error"

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private loadLocalFileGroupInfo(ZZ)V
    .registers 15

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    const-string v1, "RecentFragment"

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    if-nez v0, :cond_b

    goto :goto_4c

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1b

    move v8, v3

    goto :goto_1c

    :cond_1b
    move v8, v4

    :goto_1c
    if-eqz v8, :cond_2a

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isApptagListInited()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string p1, "apptag list not inited"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-boolean v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshOnVisible:Z

    iput-boolean v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$11;

    move-object v5, v0

    move-object v6, p0

    move v7, p1

    move v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/fileexplorer/fragment/RecentFragment$11;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;ZZJZ)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_4c
    :goto_4c
    const-string p1, "loadLocalFileGroupInfo: not start"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyItemInsertedAd(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "1.301.1.12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    if-nez v0, :cond_2a

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_2a
    const-string v1, "1.301.1.13"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-nez v0, :cond_4d

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    if-nez v4, :cond_45

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    aget v2, v2, v3

    goto :goto_4a

    :cond_45
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    aget v3, v4, v3

    add-int/2addr v2, v3

    :goto_4a
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_4d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    if-eqz v0, :cond_5a

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5a
    return-void
.end method

.method private onDestroyAd()V
    .registers 3

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v1, "1.301.1.12"

    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v1, "1.301.1.13"

    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    return-void
.end method

.method private onDestroyAdDisLike(Ljava/lang/String;)V
    .registers 4

    const-string v0, "1.301.1.12"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    :cond_12
    const-string v0, "1.301.1.13"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    :cond_23
    return-void
.end method

.method private onDestroyAdForDislike(Lcom/android/fileexplorer/model/AdFileItem;Ljava/lang/String;[I)V
    .registers 5

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileItem;->getAdListView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    if-eqz p3, :cond_36

    :try_start_a
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    aget v0, p3, v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    const/4 v0, 0x2

    aget p3, p3, v0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2c

    goto :goto_33

    :catch_2c
    const-string p1, "RecentFragment"

    const-string p3, "onDestroyAdForDislike: ad remove fail"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->onDestroyAdDisLike(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method private reDrawStickView()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    :cond_7
    return-void
.end method

.method private refreshFileGroupInfo()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$10;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$10;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1f
    :goto_1f
    return-void
.end method

.method private refreshLoadState(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->forceRefresh()V

    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    const-string p1, "RecentFragment"

    const-string p2, "onLoadMoreComplete"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerContentObserver()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    :cond_f
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private requestAd()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v1, "1.301.1.12"

    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->loadAd(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v1, "1.301.1.13"

    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->loadAd(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private setMaxFlingVelocity(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidx.recyclerview.widget.RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_17
    const-string v1, "mMaxFlingVelocity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2d
    return-void
.end method

.method private setUpRecyclerPool()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v1, :cond_d

    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    goto :goto_f

    :cond_d
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->phoneCachePoolSize:I

    :goto_f
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v1, :cond_1f

    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    goto :goto_21

    :cond_1f
    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->phoneCachePoolSize:I

    :goto_21
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->groupCachePoolSize:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    return-void
.end method

.method private setupGroupListener(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setExpandable(Z)V

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupListener()Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnGroupClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    goto :goto_19

    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnGroupClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    :goto_19
    return-void
.end method

.method private showCDDTipsIfNeed()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getIsApkUpdate()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyShowGuide()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowCDD()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110081

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110080

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110469

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$9;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$9;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_45
    return-void
.end method

.method private showEmptyView(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_a5

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v3, v3, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_33

    goto :goto_34

    :cond_33
    move v2, v1

    :goto_34
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/16 v2, 0x8

    if-eqz p1, :cond_3f

    move v3, v2

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_49

    move v3, v1

    goto :goto_4a

    :cond_49
    move v3, v2

    :goto_4a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_59

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_5b

    :cond_59
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    :goto_5b
    invoke-virtual {v0, v3}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f032ddd

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f032dda

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_9b

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$7;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$7;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a5

    :cond_9b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method private showLoadingView()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    const v2, 0x7f11023b

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    :cond_32
    return-void
.end method

.method private showNoPermissionView()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efd

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f032f74

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->noPermissionRes:Landroid/view/View;

    const v1, 0x7f0329b8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnToSetting:Landroid/widget/Button;

    new-instance v1, Lcom/android/fileexplorer/fragment/RecentFragment$8;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$8;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private unregisterContentObserver()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->cancelTask()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    :cond_1b
    return-void
.end method

.method private updateAdapter()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "RecentFragment"

    const-string v1, "updateAdapter"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showEmptyView(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->updateCheckState()V

    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateFabPreference()V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/fragment/RecentFragment;->CATEGORY_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method


# virtual methods
.method public adDisliked(Ljava/lang/String;I)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "1.301.1.12"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_22

    const-string p2, "1.301.1.13"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    move-object p2, v0

    goto :goto_26

    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    goto :goto_26

    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    :goto_26
    invoke-direct {p0, v0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->onDestroyAdForDislike(Lcom/android/fileexplorer/model/AdFileItem;Ljava/lang/String;[I)V

    return-void
.end method

.method public exitActionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->exitActionMode()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonInsertView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    return-object v0
.end method

.method public getContentInsetView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    return-object v0
.end method

.method public getDataBackToFront()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkIfNeedScanFile(Z)V

    return-void
.end method

.method public getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07028f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070756

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07022f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07022c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07022e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070231

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result v7

    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    iput-object v6, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v6, v3, v2, v4, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object v0
.end method

.method public getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object v0
.end method

.method public getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$6;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$6;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object v0
.end method

.method public getGroupListener()Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/d;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/d;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b9

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "RecentFragment"

    return-object v0
.end method

.method public getOneCopyShareData()Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_55

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getOneHopShareData size:"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_55

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v2, :cond_55

    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_55

    :cond_54
    return-object v0

    :cond_55
    :goto_55
    return-object v1
.end method

.method public getOneHopShareData()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_4a

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_20

    :cond_39
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    const-string v0, "recent"

    return-object v0
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

.method public getSpanCount()I
    .registers 2

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public initItemDecoration()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->removeItemDecoration()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public initUI()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efd

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f032f74

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->noPermissionRes:Landroid/view/View;

    const v1, 0x7f0329b8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnToSetting:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-direct {v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f4e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNested:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->setUpRecyclerPool()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$1;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    :cond_a7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$2;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$3;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$3;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$4;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$4;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const-string v2, "PAGE_RecentFragment"

    invoke-virtual {p0, v0, v2}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e6

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showLoadingView()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    :cond_e6
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setRefreshMode(I)V

    new-instance v0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-direct {v0, v2, v3}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->adAddListenerAndReportPV()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v2, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v2, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v2, Lcom/android/fileexplorer/fragment/d;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/d;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$5;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$5;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_152

    move v0, v1

    goto :goto_153

    :cond_152
    const/4 v0, 0x0

    :goto_153
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->setupGroupListener(Z)V

    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    sget-boolean v2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v2, :cond_177

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-nez v2, :cond_17a

    :cond_177
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    :cond_17a
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_185

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    :cond_185
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

    new-instance v0, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNested:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initUI()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getDateFirstIn()V

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showNoPermissionView()V

    :goto_10
    return-void
.end method

.method public isSupportOneCopyShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_15

    const/16 p2, 0x6a

    if-ne p1, p2, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    if-eqz p2, :cond_15

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->encrypt()V

    :cond_15
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->exitActionMode()Z

    move-result v0

    return v0
.end method

.method public onBackgroundSyncDataUpdate()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    return-void
.end method

.method public onCloudStatusChanged(Z)V
    .registers 3

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    if-eqz p1, :cond_17

    const-string p1, "MiDrive_LOG"

    const-string v0, "Recent onCloudStatusChanged"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_17

    :cond_13
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz v0, :cond_c

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "RecentFragment"

    const-string v1, "oncreate"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    const p1, 0x7f12011e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    move-result p1

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    if-eqz p1, :cond_38

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    :cond_38
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez p1, :cond_46

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showCDDTipsIfNeed()V

    :cond_46
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initFabPreference()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->registerContentObserver()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "RecentFragment"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshLoadStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->onDestroyAd()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->removeAllDelegate()V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    :cond_4d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    :cond_5f
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->unregisterContentObserver()V

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

.method public onDirectoryDisplayChanged(Z)V
    .registers 2

    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed posId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";errorCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FE_AD_LOG"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileRemoved(Lcom/android/fileexplorer/event/FileRemovedEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;

    invoke-virtual {p1}, Lcom/android/fileexplorer/event/FileRemovedEvent;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setNavigationChanging(Z)V

    :cond_f
    if-eqz p1, :cond_14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_1b
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result v1

    if-ne v0, v1, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->exitActionMode()Z

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

.method public onRecentChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    return-void
.end method

.method public onRecentHideChange(Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecentHideChange, showCloud:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentFragment"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    if-eq v1, p1, :cond_3d

    if-eqz p1, :cond_34

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    goto :goto_3b

    :cond_34
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    :goto_3b
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    :cond_3d
    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "responsiveLayoutState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "responsiveLayoutStateChanged:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecentFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    instance-of p2, p1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    if-eqz p2, :cond_31

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    :cond_31
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDensity:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_5c

    iput p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDensity:F

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    :cond_5c
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    if-eq v0, v1, :cond_27

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    goto :goto_21

    :cond_1e
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showNoPermissionView()V

    :goto_21
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    :cond_27
    return-void
.end method

.method public onScanFinish(I)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    const-string v0, "onScanFinish: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", newFileCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showCloud: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/CategoryHelper;->getInstance()Lcom/android/fileexplorer/apptag/CategoryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/CategoryHelper;->recentScanCountDown()V

    const/4 v0, 0x1

    if-le p1, v0, :cond_49

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    if-eqz v0, :cond_49

    const v0, 0x7f0f0016

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    :cond_49
    if-gez p1, :cond_65

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_58

    goto :goto_65

    :cond_58
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    goto :goto_70

    :cond_65
    :goto_65
    new-instance p1, Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/fragment/RecentFragment$1;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :cond_70
    :goto_70
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->updateFabPreference()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_16

    move p1, v1

    goto :goto_17

    :cond_16
    move p1, v2

    :goto_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setAllGroupExpand()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setExpandable(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->reDrawStickView()V

    invoke-direct {p0, v2, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)V
    .registers 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuccess posId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FE_AD_LOG"

    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->getNativeAdView(Ljava/lang/String;)V

    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->setUserVisible(Z)V

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentFragment onUserInvisible"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    if-eqz p1, :cond_54

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    if-eqz p1, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameDay(JJ)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v0

    :cond_51
    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatHelper;->showRecentTab(I)V

    :cond_54
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->setUserVisible(Z)V

    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    iget-boolean v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    if-eqz v3, :cond_5b

    iget-boolean v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    if-eq v3, v0, :cond_5b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show cloud change:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    goto :goto_55

    :cond_4e
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    :goto_55
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    invoke-direct {p0, v2, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    return-void

    :cond_5b
    if-nez p1, :cond_8b

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    if-eqz p1, :cond_62

    goto :goto_8b

    :cond_62
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    if-eqz p1, :cond_75

    invoke-virtual {p1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal()Z

    move-result p1

    if-eqz p1, :cond_75

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkIfNeedScanFile(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->setStoreChangeNotDeal(Z)V

    return-void

    :cond_75
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    if-eqz p1, :cond_8b

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkIfNeedScanFile(Z)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    if-nez p1, :cond_8b

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshOnVisible:Z

    if-eqz p1, :cond_88

    invoke-direct {p0, v2, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    goto :goto_8b

    :cond_88
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->refreshFileGroupInfo()V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->updateFabPreference()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_18

    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    goto :goto_2e

    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    :goto_2e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->reDrawStickView()V

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    if-eqz p1, :cond_44

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-eq v0, v1, :cond_21

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->onViewModeChanged(I)V

    :cond_21
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_3d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    :cond_41
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    goto :goto_47

    :cond_44
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->exitActionMode()Z

    :goto_47
    return-void
.end method

.method public registerActivityCallback(Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mCallback:Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_21

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_2c

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_37

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_37
    return-void
.end method
