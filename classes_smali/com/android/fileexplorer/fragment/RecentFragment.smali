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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/fileexplorer/fragment/RecentFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 27
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 32
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 34
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    .line 42
    const/16 v0, 0x28

    .line 44
    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    .line 46
    const/16 v0, 0xf

    .line 48
    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->phoneCachePoolSize:I

    .line 50
    const/4 v0, 0x5

    .line 51
    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->groupCachePoolSize:I

    .line 53
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->refreshLoadState(ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/RecentFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    .line 3
    return p0
.end method

.method public static synthetic access$1202(Lcom/android/fileexplorer/fragment/RecentFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    .line 3
    return p1
.end method

.method public static synthetic access$1212(Lcom/android/fileexplorer/fragment/RecentFragment;I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRealGroupCount:I

    .line 6
    return v0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/RecentFragment;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLastGroupTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$1302(Lcom/android/fileexplorer/fragment/RecentFragment;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLastGroupTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->filterGroup(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/util/List;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->calculateAdShowPlace(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->requestAd()V

    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->addAdTofileItemDateGroups(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/RecentFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->setupGroupListener(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->updateAdapter()V

    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshLoadStateRunnable:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2002(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshLoadStateRunnable:Ljava/lang/Runnable;

    .line 3
    return-object p1
.end method

.method public static synthetic access$2100(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    .line 3
    return p0
.end method

.method public static synthetic access$2302(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/model/AdFileItem;)Lcom/android/fileexplorer/model/AdFileItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 3
    return-object p1
.end method

.method public static synthetic access$2402(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/model/AdFileItem;)Lcom/android/fileexplorer/model/AdFileItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 3
    return-object p1
.end method

.method public static synthetic access$2500(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->notifyItemInsertedAd(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/RecentFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadingStop:Z

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadingStop:Z

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/RecentFragment;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDensity:F

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->reDrawStickView()V

    .line 4
    return-void
.end method

.method private adAddListenerAndReportPV()V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "1.301.1.12"

    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 15
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 18
    move-result-object v0

    .line 19
    const-string v2, "1.301.1.13"

    .line 21
    invoke-virtual {v0, v2, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 24
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->reportPV(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Lcom/fileexplorer/advert/AdManagerController;->reportPV(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private addAdTofileItemDateGroups(Ljava/lang/String;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 11
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v1, v2, :cond_16

    .line 21
    move v1, v4

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v3

    .line 24
    :goto_17
    if-eqz v0, :cond_cb

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_cb

    .line 32
    if-eqz p1, :cond_cb

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_29

    .line 40
    goto/16 :goto_cb

    .line 42
    :cond_29
    const-string v2, "1.301.1.12"

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    const/16 v5, 0x8

    .line 50
    const-string v6, "FE_AD_LOG"

    .line 52
    if-eqz v2, :cond_7c

    .line 54
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_7c

    .line 60
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 62
    aget v2, v2, v3

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 70
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 73
    move-result-object v2

    .line 74
    if-eqz v1, :cond_59

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 79
    move-result v7

    .line 80
    if-ne v7, v5, :cond_59

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 85
    move-result v7

    .line 86
    sub-int/2addr v7, v4

    .line 87
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    :cond_59
    iget-object v7, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 92
    aget v7, v7, v4

    .line 94
    iget-object v8, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 96
    invoke-interface {v2, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v7, "loadAd: load recent page top ad"

    .line 106
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v7, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 111
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 122
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_7c
    const-string v2, "1.301.1.13"

    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_cb

    .line 133
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_cb

    .line 139
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 141
    aget p1, p1, v3

    .line 143
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 149
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 152
    move-result-object p1

    .line 153
    if-eqz v1, :cond_a8

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 158
    move-result v0

    .line 159
    if-ne v0, v5, :cond_a8

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 164
    move-result v0

    .line 165
    sub-int/2addr v0, v4

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    :cond_a8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 171
    aget v0, v0, v4

    .line 173
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 175
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v0, "loadAd: load recent page bottom ad"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 190
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
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

    .line 1
    if-eqz p1, :cond_47

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_47

    .line 10
    :cond_9
    invoke-static {p1}, Lcom/android/fileexplorer/util/AdUtil;->getAdIndex(Ljava/util/List;)[I

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/util/AdUtil;->getRecentSecAdIndex(Ljava/util/List;)[I

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 22
    const-string p1, "calculateAdShowPlace mTopAdIndex: "

    .line 24
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    const-string v0, "FE_AD_LOG"

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v1, "calculateAdShowPlace mBottomAdIndex: "

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_47
    :goto_47
    return-void
.end method

.method private checkAdData(Ljava/lang/String;)Z
    .registers 5

    .line 1
    const-string v0, "1.301.1.12"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_15

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 13
    if-eqz p1, :cond_13

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v2

    .line 21
    :goto_14
    return v1

    .line 22
    :cond_15
    const-string v0, "1.301.1.13"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_28

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 32
    if-eqz p1, :cond_26

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 36
    if-eqz p1, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, v2

    .line 40
    :goto_27
    return v1

    .line 41
    :cond_28
    return v2
.end method

.method private checkIfNeedScanFile(Z)V
    .registers 6

    .line 1
    if-nez p1, :cond_1e

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getLastScanTime()J

    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->isMoreThanFiveMins(J)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3b

    .line 31
    :cond_1e
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 39
    const-string v0, "RecentFragment"

    .line 41
    const-string v1, "checkIfNeedScanFile real"

    .line 43
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    .line 49
    if-eqz p1, :cond_3b

    .line 51
    const-string p1, "scan_file"

    .line 53
    const-string v0, "name"

    .line 55
    const-string v1, "recent2Front"

    .line 57
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
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

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_70

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 26
    if-eqz v1, :cond_6c

    .line 28
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_6c

    .line 34
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2c

    .line 44
    goto :goto_6c

    .line 45
    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_62

    .line 51
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v2

    .line 59
    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_62

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 71
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    const-string v5, "com.xlredapple.camera"

    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_5e

    .line 83
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    const-string v4, "com.xlredapple.screenshot"

    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3a

    .line 95
    :cond_5e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 98
    goto :goto_3a

    .line 99
    :cond_62
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 102
    move-result v1

    .line 103
    if-gtz v1, :cond_d

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 108
    goto :goto_d

    .line 109
    :cond_6c
    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 112
    goto :goto_d

    .line 113
    :cond_70
    return-object v0
.end method

.method private getDateFirstIn()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    .line 25
    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 8
    return-object v0
.end method

.method private getNativeAdView(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "getNativeAdView:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "FE_AD_LOG"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 25
    if-eqz v0, :cond_22

    .line 27
    const-string v0, "1.301.1.12"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2e

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 37
    if-eqz v0, :cond_2f

    .line 39
    const-string v0, "1.301.1.13"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2f

    .line 47
    :cond_2e
    return-void

    .line 48
    :cond_2f
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/android/fileexplorer/fragment/RecentFragment$12;

    .line 54
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$12;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 57
    invoke-virtual {v0, p1, v1}, Lcom/fileexplorer/advert/AdManagerController;->getAdView(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdViewListener;)V

    .line 60
    return-void
.end method

.method private getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 5
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_f

    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-eqz v0, :cond_1c

    .line 19
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupListener()Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 31
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>()V

    .line 34
    :goto_21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 36
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setIsFixedSize(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 41
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    .line 44
    move-result-object v1

    .line 45
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 54
    const v2, 0x7f0a03e3

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 68
    return-object v0
.end method

.method private handleActionBar(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    const-string v1, "mActionView"

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/ReflectUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 13
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    .line 15
    if-nez v1, :cond_3d

    .line 17
    if-eqz p1, :cond_17

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    .line 23
    goto :goto_3d

    .line 24
    :cond_17
    const/16 p1, 0x8

    .line 26
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_3d

    .line 30
    :catch_1d
    move-exception p1

    .line 31
    goto :goto_20

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    :goto_20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v1, "actionbar reflect exception"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string v0, "RecentFragment"

    .line 59
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method

.method private initActionBar()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const v1, 0x7f110075

    .line 11
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 22
    return-void
.end method

.method private initFabPreference()V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/RecentFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    return-void
.end method

.method private synthetic lambda$getGroupListener$0(Landroid/view/View;II)Z
    .registers 7

    .line 1
    const/4 p1, 0x0

    .line 2
    if-gez p3, :cond_4

    .line 4
    move p3, p1

    .line 5
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    .line 7
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 12
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 18
    if-eqz v0, :cond_40

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 22
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 28
    iget-object v0, p3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->packageName:Ljava/lang/String;

    .line 30
    const-string v1, "pkg_name"

    .line 32
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p3, p3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->appName:Ljava/lang/String;

    .line 37
    const-string v0, "app_name"

    .line 39
    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 p3, 0x1

    .line 43
    const-string v0, "bundle_key_istobackstack"

    .line 45
    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 51
    move-result-object p3

    .line 52
    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 54
    const/16 v1, 0x3e8

    .line 56
    const-class v2, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 58
    invoke-direct {v0, v1, v2, p2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p3, v0}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 64
    return p1

    .line 65
    :cond_40
    const-string p2, "RecentFragment"

    .line 67
    const-string p3, "class cast error"

    .line 69
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return p1
.end method

.method private loadLocalFileGroupInfo(ZZ)V
    .registers 15

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    .line 3
    const-string v1, "RecentFragment"

    .line 5
    if-nez v0, :cond_4c

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_4c

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 16
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-ne v0, v2, :cond_1b

    .line 26
    move v8, v3

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v8, v4

    .line 29
    :goto_1c
    if-eqz v8, :cond_2a

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isApptagListInited()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2a

    .line 37
    const-string p1, "apptag list not inited"

    .line 39
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 43
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    move-result-wide v9

    .line 47
    iput-boolean v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshOnVisible:Z

    .line 49
    iput-boolean v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 53
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 56
    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$11;

    .line 58
    move-object v5, v0

    .line 59
    move-object v6, p0

    .line 60
    move v7, p1

    .line 61
    move v11, p2

    .line 62
    invoke-direct/range {v5 .. v11}, Lcom/android/fileexplorer/fragment/RecentFragment$11;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;ZZJZ)V

    .line 65
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 67
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 70
    move-result-object p1

    .line 71
    new-array p2, v4, [Ljava/lang/Void;

    .line 73
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void

    .line 77
    :cond_4c
    :goto_4c
    const-string p1, "loadLocalFileGroupInfo: not start"

    .line 79
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private notifyItemInsertedAd(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 5
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_f

    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    const-string v1, "1.301.1.12"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x2

    .line 24
    if-eqz v1, :cond_2a

    .line 26
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2a

    .line 32
    if-nez v0, :cond_2a

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 36
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 38
    aget v4, v4, v3

    .line 40
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 43
    :cond_2a
    const-string v1, "1.301.1.13"

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4d

    .line 51
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4d

    .line 57
    if-nez v0, :cond_4d

    .line 59
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 61
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 63
    if-nez v4, :cond_45

    .line 65
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 67
    aget v2, v2, v3

    .line 69
    goto :goto_4a

    .line 70
    :cond_45
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 72
    aget v3, v4, v3

    .line 74
    add-int/2addr v2, v3

    .line 75
    :goto_4a
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 78
    :cond_4d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkAdData(Ljava/lang/String;)Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5a

    .line 84
    if-eqz v0, :cond_5a

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 91
    :cond_5a
    return-void
.end method

.method private onDestroyAd()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "1.301.1.12"

    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 10
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "1.301.1.13"

    .line 16
    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 24
    return-void
.end method

.method private onDestroyAdDisLike(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "1.301.1.12"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_12

    .line 10
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 17
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 19
    :cond_12
    const-string v0, "1.301.1.13"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_23

    .line 27
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 34
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 36
    :cond_23
    return-void
.end method

.method private onDestroyAdForDislike(Lcom/android/fileexplorer/model/AdFileItem;Ljava/lang/String;[I)V
    .registers 5

    .line 1
    if-eqz p1, :cond_36

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileItem;->getAdListView()Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_36

    .line 9
    if-eqz p3, :cond_36

    .line 11
    :try_start_a
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    aget v0, p3, v0

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 26
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x1

    .line 31
    aget v0, p3, v0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 38
    const/4 v0, 0x2

    .line 39
    aget p3, p3, v0

    .line 41
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2c

    .line 44
    goto :goto_33

    .line 45
    :catch_2c
    const-string p1, "RecentFragment"

    .line 47
    const-string p3, "onDestroyAdForDislike: ad remove fail"

    .line 49
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_33
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->onDestroyAdDisLike(Ljava/lang/String;)V

    .line 55
    :cond_36
    return-void
.end method

.method private reDrawStickView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    .line 8
    :cond_7
    return-void
.end method

.method private refreshFileGroupInfo()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mIsLoading:Z

    .line 3
    if-nez v0, :cond_1f

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_1f

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 15
    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$10;

    .line 17
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$10;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v2, v2, [Ljava/lang/Void;

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method

.method private refreshLoadState(ZZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 14
    if-eqz p1, :cond_14

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 18
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->forceRefresh()V

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 23
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 26
    const-string p1, "RecentFragment"

    .line 28
    const-string p2, "onLoadMoreComplete"

    .line 30
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private registerContentObserver()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 16
    :cond_f
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 50
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 52
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    return-void
.end method

.method private requestAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "1.301.1.12"

    .line 11
    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->loadAd(Ljava/lang/String;)V

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 16
    if-nez v0, :cond_1e

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "1.301.1.13"

    .line 28
    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->loadAd(Ljava/lang/String;)V

    .line 31
    :cond_1e
    return-void
.end method

.method private setMaxFlingVelocity(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "androidx.recyclerview.widget.RecyclerView"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_17

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_4

    .line 24
    :cond_17
    const-string v1, "mMaxFlingVelocity"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 41
    goto :goto_2d

    .line 42
    :catch_29
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :goto_2d
    return-void
.end method

.method private setUpRecyclerPool()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 9
    if-eqz v1, :cond_d

    .line 11
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->phoneCachePoolSize:I

    .line 16
    :goto_f
    const/4 v3, 0x4

    .line 17
    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x3

    .line 27
    if-eqz v1, :cond_1f

    .line 29
    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->phoneCachePoolSize:I

    .line 34
    :goto_21
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x1

    .line 44
    iget v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->padCachePoolSize:I

    .line 46
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x2

    .line 56
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->groupCachePoolSize:I

    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 63
    const/16 v1, 0xf

    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 68
    return-void
.end method

.method private setupGroupListener(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 3
    xor-int/lit8 v1, p1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setExpandable(Z)V

    .line 8
    if-eqz p1, :cond_13

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupListener()Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnGroupClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnGroupClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    .line 26
    :goto_19
    return-void
.end method

.method private showCDDTipsIfNeed()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getIsApkUpdate()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_45

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyShowGuide()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_45

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowCDD()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_45

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_45

    .line 25
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 29
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    const v1, 0x7f110081

    .line 39
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 46
    const v1, 0x7f110080

    .line 49
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 52
    const v1, 0x7f110469

    .line 55
    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$9;

    .line 57
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$9;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 70
    :cond_45
    return-void
.end method

.method private showEmptyView(Z)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    .line 3
    if-eqz v0, :cond_9d

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 7
    if-eqz v0, :cond_9d

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_9d

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 18
    if-eqz v0, :cond_9d

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 34
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 39
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 41
    iget v3, v3, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 43
    sget-object v4, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 45
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v4

    .line 49
    if-eq v3, v4, :cond_33

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v2, v1

    .line 53
    :goto_34
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 58
    const/16 v2, 0x8

    .line 60
    if-eqz p1, :cond_3f

    .line 62
    move v3, v2

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v3, v1

    .line 65
    :goto_40
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 70
    if-eqz p1, :cond_49

    .line 72
    move v3, v1

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v3, v2

    .line 75
    :goto_4a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 85
    if-eqz p1, :cond_59

    .line 87
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 92
    :goto_5b
    invoke-virtual {v0, v3}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 97
    const v3, 0x7f0a004b

    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/Button;

    .line 106
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 110
    const v3, 0x7f0a004c

    .line 113
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    .line 119
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_93

    .line 125
    if-eqz p1, :cond_93

    .line 127
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    .line 139
    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$7;

    .line 141
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$7;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    goto :goto_9d

    .line 148
    :cond_93
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhone:Landroid/widget/Button;

    .line 150
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    .line 155
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_9d
    :goto_9d
    return-void
.end method

.method private showLoadingView()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    .line 3
    if-eqz v0, :cond_32

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 7
    if-eqz v0, :cond_32

    .line 9
    const/4 v1, 0x1

    .line 10
    const v2, 0x7f11023b

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 34
    const/16 v2, 0x8

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 48
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 51
    :cond_32
    return-void
.end method

.method private showNoPermissionView()V
    .registers 4

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a036b

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 42
    const v1, 0x102000a

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 61
    const/16 v2, 0x8

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_51

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_51
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    .line 84
    const v1, 0x7f0a02e2

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->noPermissionRes:Landroid/view/View;

    .line 93
    const v1, 0x7f0a042e

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/Button;

    .line 102
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnToSetting:Landroid/widget/Button;

    .line 104
    new-instance v1, Lcom/android/fileexplorer/fragment/RecentFragment$8;

    .line 106
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$8;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private unregisterContentObserver()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->cancelTask()V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 28
    :cond_1b
    return-void
.end method

.method private updateAdapter()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "RecentFragment"

    .line 8
    const-string v1, "updateAdapter"

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showEmptyView(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 24
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_22

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 32
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->updateCheckState()V

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 37
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 42
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method private updateFabPreference()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/RecentFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 11
    return-void
.end method


# virtual methods
.method public adDisliked(Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string p2, "1.301.1.12"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p2, :cond_22

    .line 20
    const-string p2, "1.301.1.13"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1d

    .line 28
    move-object p2, v0

    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdBottomFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 32
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBottomAdIndex:[I

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdTopFileItem:Lcom/android/fileexplorer/model/AdFileItem;

    .line 37
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTopAdIndex:[I

    .line 39
    :goto_26
    invoke-direct {p0, v0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->onDestroyAdForDislike(Lcom/android/fileexplorer/model/AdFileItem;Ljava/lang/String;[I)V

    .line 42
    return-void
.end method

.method public exitActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->exitActionMode()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getButtonInsertView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnImportFileFromOldPhoneView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getContentInsetView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    return-object v0
.end method

.method public getDataBackToFront()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkIfNeedScanFile(Z)V

    .line 5
    return-void
.end method

.method public getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f07028f

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f070756

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f07022f

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f07022c

    .line 41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 49
    const v5, 0x7f07022e

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v5

    .line 60
    const v6, 0x7f070231

    .line 63
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v5

    .line 67
    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 69
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 72
    move-result v7

    .line 73
    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    .line 76
    iput-object v6, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 78
    invoke-virtual {v6, v3, v2, v4, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 83
    return-object v0
.end method

.method public getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 12
    return-object v0
.end method

.method public getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$6;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$6;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 8
    return-object v0
.end method

.method public getGroupListener()Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/d;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/d;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 6
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

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    if-eqz v0, :cond_55

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_17

    .line 23
    goto :goto_55

    .line 24
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    const-string v3, "getOneHopShareData size:"

    .line 34
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v2

    .line 56
    const/4 v3, 0x1

    .line 57
    if-ne v2, v3, :cond_55

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 66
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_55

    .line 72
    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 74
    if-nez v2, :cond_55

    .line 76
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_54

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    return-object v0

    .line 86
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

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    if-eqz v0, :cond_4a

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_17

    .line 23
    goto :goto_4a

    .line 24
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4a

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 45
    if-eqz v2, :cond_20

    .line 47
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_39

    .line 57
    goto :goto_20

    .line 58
    :cond_39
    new-instance v3, Ljava/io/File;

    .line 60
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_20

    .line 75
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

.method public getSpanCount()I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 7
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public initItemDecoration()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->removeItemDecoration()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 22
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 24
    if-nez v0, :cond_28

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 30
    if-eqz v0, :cond_28

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 41
    :cond_28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 43
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 52
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 59
    return-void
.end method

.method public initUI()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a0163

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a03d2

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a036a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 42
    const v1, 0x7f0a036b

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    .line 53
    const/16 v1, 0x8

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNoPermissionView:Landroidx/core/widget/NestedScrollView;

    .line 60
    const v1, 0x7f0a02e2

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->noPermissionRes:Landroid/view/View;

    .line 69
    const v1, 0x7f0a042e

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/Button;

    .line 78
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mBtnToSetting:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 82
    const v1, 0x102000a

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 91
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 93
    new-instance v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 95
    invoke-direct {v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 101
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 103
    const v1, 0x7f0a02d8

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 112
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNested:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 114
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->setUpRecyclerPool()V

    .line 117
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    .line 120
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 122
    const/4 v1, 0x1

    .line 123
    if-nez v0, :cond_8b

    .line 125
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 132
    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$1;

    .line 134
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$1;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 137
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    .line 140
    :cond_8b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 142
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 144
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 147
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 149
    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$2;

    .line 151
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$2;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 154
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 159
    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$3;

    .line 161
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$3;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 164
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 167
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 169
    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$4;

    .line 171
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$4;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 174
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 177
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 179
    const-string v2, "PAGE_RecentFragment"

    .line 181
    invoke-virtual {p0, v0, v2}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 184
    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    .line 186
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getLastScanId()I

    .line 189
    move-result v0

    .line 190
    const/4 v2, -0x1

    .line 191
    if-ne v0, v2, :cond_ca

    .line 193
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showLoadingView()V

    .line 196
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 203
    :cond_ca
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 205
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 207
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 214
    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 217
    invoke-direct {v0, v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 220
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 222
    const/4 v2, 0x2

    .line 223
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setRefreshMode(I)V

    .line 226
    new-instance v0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;

    .line 228
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 230
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 232
    invoke-direct {v0, v2, v3}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    .line 235
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 237
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->adAddListenerAndReportPV()V

    .line 240
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 242
    new-instance v2, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;

    .line 244
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 246
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 248
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 251
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 256
    new-instance v2, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;

    .line 258
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 260
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 262
    invoke-direct {v2, v3, v0, v4}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 265
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 270
    new-instance v2, Lcom/android/fileexplorer/fragment/d;

    .line 272
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/d;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 275
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 280
    new-instance v2, Lcom/android/fileexplorer/fragment/RecentFragment$5;

    .line 282
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentFragment$5;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 285
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 290
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 292
    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 294
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 297
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 299
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 301
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 303
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 306
    move-result v2

    .line 307
    if-ne v0, v2, :cond_136

    .line 309
    move v0, v1

    .line 310
    goto :goto_137

    .line 311
    :cond_136
    const/4 v0, 0x0

    .line 312
    :goto_137
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->setupGroupListener(Z)V

    .line 315
    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 317
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 319
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 330
    move-result v3

    .line 331
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 333
    invoke-direct {v0, v2, v3, v4}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    .line 336
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 338
    sget-boolean v2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 340
    if-nez v2, :cond_15b

    .line 342
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 344
    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 346
    if-nez v2, :cond_15e

    .line 348
    :cond_15b
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    .line 351
    :cond_15e
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 353
    if-nez v0, :cond_169

    .line 355
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 357
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 359
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    .line 362
    :cond_169
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 364
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 366
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 369
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 371
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 373
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 376
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 378
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 384
    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

    .line 388
    new-instance v0, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 390
    invoke-direct {v0}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mNested:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 395
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 402
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initUI()V

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getDateFirstIn()V

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showNoPermissionView()V

    .line 17
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

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 p3, -0x1

    .line 5
    if-ne p2, p3, :cond_15

    .line 7
    const/16 p2, 0x6a

    .line 9
    if-ne p1, p2, :cond_15

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 15
    if-eqz p2, :cond_15

    .line 17
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->encrypt()V

    .line 22
    :cond_15
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->exitActionMode()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onBackgroundSyncDataUpdate()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 5
    return-void
.end method

.method public onCloudStatusChanged(Z)V
    .registers 3

    .line 1
    if-nez p1, :cond_13

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 5
    if-eqz p1, :cond_17

    .line 7
    const-string p1, "MiDrive_LOG"

    .line 9
    const-string v0, "Recent onCloudStatusChanged"

    .line 11
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 13
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "RecentFragment"

    .line 3
    const-string v1, "oncreate"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    .line 17
    const p1, 0x7f12011e

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 31
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2c

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2c

    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    :goto_2d
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 48
    if-eqz p1, :cond_38

    .line 50
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 57
    :cond_38
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 64
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 66
    if-nez p1, :cond_46

    .line 68
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showCDDTipsIfNeed()V

    .line 71
    :cond_46
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initFabPreference()V

    .line 74
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->registerContentObserver()V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    const-string v0, "RecentFragment"

    .line 3
    const-string v1, "onDestroy: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 15
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshFileGroupInfoTask:Landroid/os/AsyncTask;

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupRunnable:Ljava/lang/Runnable;

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshLoadStateRunnable:Ljava/lang/Runnable;

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 53
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->onDestroyAd()V

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz v0, :cond_4d

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 71
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->removeAllDelegate()V

    .line 74
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 76
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 78
    :cond_4d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 80
    if-eqz v0, :cond_5f

    .line 82
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    .line 89
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 91
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 96
    :cond_5f
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->unregisterContentObserver()V

    .line 99
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

.method public onDirectoryDisplayChanged(Z)V
    .registers 2

    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onFailed posId:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p1, ";errorCode:"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string p2, "FE_AD_LOG"

    .line 28
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onFileRemoved(Lcom/android/fileexplorer/event/FileRemovedEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/FileRemovedEvent;->getFilePath()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/Void;

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    if-eqz v0, :cond_f

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setNavigationChanging(Z)V

    .line 16
    :cond_f
    if-eqz p1, :cond_14

    .line 18
    const/4 v0, 0x2

    .line 19
    if-ne p1, v0, :cond_1b

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 28
    :cond_1b
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    if-eqz v1, :cond_33

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 20
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 31
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 40
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 52
    :cond_33
    return-void
.end method

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->exitActionMode()Z

    .line 4
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

.method public onRecentChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
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
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 10
    return-void
.end method

.method public onRecentHideChange(Lcom/fileexplorer/commonlibrary/event/RecentHideChangeEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_f

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_f

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move p1, v0

    .line 17
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v2, "onRecentHideChange, showCloud:"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "RecentFragment"

    .line 36
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 41
    if-eq v1, p1, :cond_3d

    .line 43
    if-eqz p1, :cond_34

    .line 45
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 60
    :goto_3b
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 62
    :cond_3d
    invoke-direct {p0, v0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 65
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v0, "responsiveLayoutState: "

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, "responsiveLayoutStateChanged:"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string p2, "RecentFragment"

    .line 31
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 36
    instance-of p2, p1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 38
    if-eqz p2, :cond_31

    .line 40
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    .line 50
    :cond_31
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5c

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    move-result-object p1

    .line 64
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 66
    iget p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDensity:F

    .line 68
    cmpl-float p2, p2, p1

    .line 70
    if-eqz p2, :cond_5c

    .line 72
    iput p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDensity:F

    .line 74
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 76
    if-eqz p1, :cond_5c

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5c

    .line 84
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 86
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    .line 93
    :cond_5c
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 9
    move-result v1

    .line 10
    if-eq v0, v1, :cond_27

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1e

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initView(Landroid/view/View;)V

    .line 23
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->showNoPermissionView()V

    .line 34
    :goto_21
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    .line 40
    :cond_27
    return-void
.end method

.method public onScanFinish(I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    .line 4
    const-string v0, "onScanFinish: "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mTimeCost1:Lcom/android/fileexplorer/util/TimeCost;

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", newFileCount = "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", showCloud: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "RecentFragment"

    .line 43
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/android/fileexplorer/apptag/CategoryHelper;->getInstance()Lcom/android/fileexplorer/apptag/CategoryHelper;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/CategoryHelper;->recentScanCountDown()V

    .line 53
    const/4 v0, 0x1

    .line 54
    if-le p1, v0, :cond_49

    .line 56
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mUiHasInit:Z

    .line 58
    if-eqz v0, :cond_49

    .line 60
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    .line 62
    if-eqz v0, :cond_49

    .line 64
    const v0, 0x7f0f0016

    .line 67
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 74
    :cond_49
    if-gez p1, :cond_65

    .line 76
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 78
    if-nez p1, :cond_65

    .line 80
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapterFileList:Ljava/util/List;

    .line 82
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_58

    .line 88
    goto :goto_65

    .line 89
    :cond_58
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 91
    if-eqz p1, :cond_70

    .line 93
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 96
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 98
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 101
    goto :goto_70

    .line 102
    :cond_65
    :goto_65
    new-instance p1, Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment$LoadFileGroupRunnable;-><init>(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/fragment/RecentFragment$1;)V

    .line 108
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLoadFileGroupRunnable:Ljava/lang/Runnable;

    .line 110
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 113
    :cond_70
    :goto_70
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->updateFabPreference()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 11
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-ne p1, v0, :cond_16

    .line 21
    move p1, v1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move p1, v2

    .line 24
    :goto_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 26
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setAllGroupExpand()V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 31
    xor-int/2addr p1, v1

    .line 32
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setExpandable(Z)V

    .line 35
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->reDrawStickView()V

    .line 38
    invoke-direct {p0, v2, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 41
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "onSuccess posId:"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const-string v0, "FE_AD_LOG"

    .line 20
    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->getNativeAdView(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->setUserVisible(Z)V

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "RecentFragment onUserInvisible"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "RecentFragment"

    .line 31
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 39
    if-eqz p1, :cond_54

    .line 41
    const/4 v0, -0x1

    .line 42
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_51

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_51

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 60
    if-eqz p1, :cond_51

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide v1

    .line 66
    iget-object v3, p1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 71
    move-result-wide v3

    .line 72
    invoke-static {v1, v2, v3, v4}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameDay(JJ)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_51

    .line 78
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 81
    move-result v0

    .line 82
    :cond_51
    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatHelper;->showRecentTab(I)V

    .line 85
    :cond_54
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->setUserVisible(Z)V

    .line 12
    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    .line 23
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_25

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_25

    .line 36
    move v0, v1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v0, v2

    .line 39
    :goto_26
    iget-boolean v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    .line 41
    if-eqz v3, :cond_5b

    .line 43
    iget-boolean v3, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 45
    if-eq v3, v0, :cond_5b

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v1, "show cloud change:"

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    const-string v1, "MiDrive_LOG"

    .line 66
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz v0, :cond_4e

    .line 71
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 78
    goto :goto_55

    .line 79
    :cond_4e
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 86
    :goto_55
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mShowCloud:Z

    .line 88
    invoke-direct {p0, v2, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 91
    return-void

    .line 92
    :cond_5b
    if-nez p1, :cond_8b

    .line 94
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    .line 96
    if-eqz p1, :cond_62

    .line 98
    goto :goto_8b

    .line 99
    :cond_62
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 101
    if-eqz p1, :cond_75

    .line 103
    invoke-virtual {p1}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->isStoreChangeNotDeal()Z

    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_75

    .line 109
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkIfNeedScanFile(Z)V

    .line 112
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mMediaStoreChangeObserver:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 114
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/service/MediaStoreChangeObserver;->setStoreChangeNotDeal(Z)V

    .line 117
    return-void

    .line 118
    :cond_75
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHasPermission:Z

    .line 120
    if-eqz p1, :cond_8b

    .line 122
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->checkIfNeedScanFile(Z)V

    .line 125
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->isScanning:Z

    .line 127
    if-nez p1, :cond_8b

    .line 129
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRefreshOnVisible:Z

    .line 131
    if-eqz p1, :cond_88

    .line 133
    invoke-direct {p0, v2, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->loadLocalFileGroupInfo(ZZ)V

    .line 136
    goto :goto_8b

    .line 137
    :cond_88
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->refreshFileGroupInfo()V

    .line 140
    :cond_8b
    :goto_8b
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->updateFabPreference()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->initItemDecoration()V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    if-eqz v0, :cond_18

    .line 16
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 18
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->getSpanCount()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 34
    if-nez p1, :cond_29

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 38
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    .line 41
    goto :goto_2e

    .line 42
    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 44
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    .line 47
    :goto_2e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->reDrawStickView()V

    .line 7
    if-eqz p1, :cond_44

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 11
    if-eqz p1, :cond_44

    .line 13
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 22
    move-result-object p1

    .line 23
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 27
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 29
    if-eq v0, v1, :cond_21

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->onViewModeChanged(I)V

    .line 34
    :cond_21
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 38
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 40
    if-ne v0, v1, :cond_3d

    .line 42
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 50
    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_41

    .line 62
    :cond_3d
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 66
    :cond_41
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 68
    goto :goto_47

    .line 69
    :cond_44
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentFragment;->exitActionMode()Z

    .line 72
    :goto_47
    return-void
.end method

.method public registerActivityCallback(Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mCallback:Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;

    .line 3
    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 18
    if-eqz v1, :cond_16

    .line 20
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 25
    if-eqz v0, :cond_21

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 29
    if-eqz v1, :cond_21

    .line 31
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 40
    if-eqz v1, :cond_2c

    .line 42
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 47
    if-eqz v0, :cond_37

    .line 49
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 51
    if-eqz v1, :cond_37

    .line 53
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 56
    :cond_37
    return-void
.end method
