.class public Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;
.super Lcom/android/fileexplorer/fragment/AbsActionBarFragment;
.source "RecentSecondaryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;
.implements Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentSecondaryFragment"


# instance fields
.field private groupCachePoolSize:I

.field public isActionMode:Z

.field private mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

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

.field private mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field public mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

.field private mIsCloud:Z

.field public mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

.field private mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mPkgName:Ljava/lang/String;

.field private mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

.field public mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field public mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

.field private padCachePoolSize:I

.field private phoneCachePoolSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    .line 4
    const/16 v0, 0x28

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    .line 8
    const/16 v0, 0xf

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->phoneCachePoolSize:I

    .line 12
    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->groupCachePoolSize:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->lambda$setListGridMode$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->lambda$initUI$3(II)V

    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->lambda$initActionBar$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->lambda$initActionBar$0(Landroid/view/View;)V

    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 8
    return-object v0
.end method

.method private getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setIsFixedSize(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    .line 17
    move-result-object v1

    .line 18
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 27
    const v2, 0x7f0a03e3

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 41
    return-object v0
.end method

.method private initActionBar()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAppName:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->isToBack()Z

    .line 27
    move-result v2

    .line 28
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    .line 31
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f0a0062

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setListGridMode(Landroid/widget/ImageView;)V

    .line 51
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/android/fileexplorer/fragment/e;

    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/fragment/e;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;I)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 75
    move-result-object v0

    .line 76
    const v1, 0x7f0a0074

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/android/fileexplorer/fragment/e;

    .line 85
    const/4 v2, 0x2

    .line 86
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/fragment/e;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;I)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method private initData()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pkg_name"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    .line 13
    const-string v2, "app_name"

    .line 15
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAppName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private initPresenter()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mContext:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v1, p0, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;Ljava/lang/String;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 12
    return-void
.end method

.method private initUI()V
    .registers 5

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 53
    new-instance v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 55
    invoke-direct {v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 61
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setUpRecyclerPool()V

    .line 64
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initItemDecoration()V

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 69
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 76
    new-instance v1, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;

    .line 78
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 92
    new-instance v1, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$2;

    .line 94
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    .line 97
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 100
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 102
    new-instance v1, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$3;

    .line 104
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    .line 107
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 110
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 112
    const/4 v1, 0x1

    .line 113
    if-nez v0, :cond_81

    .line 115
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 122
    new-instance v2, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$4;

    .line 124
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    .line 130
    :cond_81
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 132
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 134
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 141
    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    .line 144
    invoke-direct {v0, v2, v1, v3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;-><init>(Landroid/content/Context;ZLjava/util/List;)V

    .line 147
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 149
    const/4 v1, 0x2

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setRefreshMode(I)V

    .line 153
    new-instance v0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;

    .line 155
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 157
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 159
    invoke-direct {v0, v1, v2}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    .line 162
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 164
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 166
    new-instance v2, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;

    .line 168
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 170
    invoke-direct {v2, v3, v0}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 173
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 178
    new-instance v1, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;

    .line 180
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 182
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 184
    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 192
    new-instance v1, Lcom/android/fileexplorer/fragment/f;

    .line 194
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/f;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 202
    new-instance v1, Lcom/android/fileexplorer/fragment/f;

    .line 204
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/f;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 212
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 214
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 219
    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 221
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 223
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 234
    move-result v2

    .line 235
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 237
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    .line 240
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 242
    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 244
    if-nez v1, :cond_fb

    .line 246
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 248
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 250
    if-nez v1, :cond_fe

    .line 252
    :cond_fb
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    .line 255
    :cond_fe
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 257
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 262
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 264
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 266
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 269
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 271
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    .line 276
    new-instance v0, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 278
    invoke-direct {v0}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 283
    const v2, 0x7f0a02d8

    .line 286
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 292
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 299
    return-void
.end method

.method private synthetic lambda$initActionBar$0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 4
    return-void
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getPageNameByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickSearch(Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 15
    return-void
.end method

.method private synthetic lambda$initUI$3(II)V
    .registers 4

    .line 1
    const/4 p1, 0x2

    .line 2
    if-ne p2, p1, :cond_5

    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    :goto_6
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->isActionMode:Z

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 11
    if-eqz p1, :cond_f

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    .line 16
    :cond_f
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    .line 22
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->isActionMode:Z

    .line 24
    invoke-direct {p2, v0}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    .line 27
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method private synthetic lambda$setListGridMode$2(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 5
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 7
    rsub-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->onViewModeChanged(I)V

    .line 12
    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 5
    if-nez v0, :cond_17

    .line 7
    const v0, 0x7f08022e

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    const v0, 0x7f1101ea

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    goto :goto_27

    .line 24
    :cond_17
    const v0, 0x7f08022b

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    const v0, 0x7f1101eb

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    :goto_27
    new-instance v0, Lcom/android/fileexplorer/fragment/e;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/e;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;I)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private setUpRecyclerPool()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 9
    if-eqz v1, :cond_d

    .line 11
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->phoneCachePoolSize:I

    .line 16
    :goto_f
    const/4 v3, 0x4

    .line 17
    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x3

    .line 27
    if-eqz v1, :cond_1f

    .line 29
    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->phoneCachePoolSize:I

    .line 34
    :goto_21
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x1

    .line 44
    iget v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    .line 46
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x2

    .line 56
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->groupCachePoolSize:I

    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 63
    const/16 v1, 0xf

    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 68
    return-void
.end method

.method private startLoadFiles()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    .line 15
    return-void
.end method


# virtual methods
.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;Z)V

    return-void
.end method

.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;Z)V
    .registers 7

    .line 2
    sget-object v0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$6;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_51

    const/4 v3, 0x2

    if-eq p1, v3, :cond_18

    const/4 v3, 0x3

    if-eq p1, v3, :cond_18

    const/4 v3, 0x4

    if-eq p1, v3, :cond_18

    return-void

    .line 3
    :cond_18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 4
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {v3, p1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 5
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 6
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 8
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz p1, :cond_38

    move v1, v0

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_41

    move v0, v2

    :cond_41
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_4d

    :cond_4b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    :goto_4d
    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void

    .line 11
    :cond_51
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const p2, 0x7f11023b

    invoke-virtual {p1, v1, p2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method public finishPullRefresh(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 18
    return-void
.end method

.method public getContentInsetView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->RecentSecondary:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 72
    move-result v7

    .line 73
    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    .line 76
    iput-object v6, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 78
    invoke-virtual {v6, v3, v2, v4, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 83
    return-object v0
.end method

.method public getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 18
    return-object v0
.end method

.method public getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$5;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$5;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 8
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b9

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

.method public getSpanCount()I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->removeItemDecoration()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 22
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 24
    if-nez v0, :cond_28

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 30
    if-eqz v0, :cond_28

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 41
    :cond_28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 43
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 52
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 59
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initActionBar()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initUI()V

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->startLoadFiles()V

    .line 10
    return-void
.end method

.method public interceptBackPress()Z
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 18
    const-class v3, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 20
    const/16 v4, 0x3e8

    .line 22
    invoke-direct {v2, v4, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v1, v2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method public isToBack()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCloudStatusChanged(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    .line 3
    const-string v1, "cloud"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    if-nez p1, :cond_15

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 16
    if-eqz p1, :cond_1c

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

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
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    .line 28
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initData()V

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initPresenter()V

    .line 34
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_39

    .line 40
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_39

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    .line 48
    const-string v0, "cloud"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_39

    .line 56
    const/4 p1, 0x1

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    const/4 p1, 0x0

    .line 59
    :goto_3a
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mIsCloud:Z

    .line 61
    if-eqz p1, :cond_45

    .line 63
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 70
    :cond_45
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
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 18
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    if-eqz v1, :cond_33

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 20
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 31
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

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

.method public onRecentChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 4
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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    .line 13
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

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
    const-string p2, "RecentSecondaryFragment"

    .line 31
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 36
    instance-of p2, p1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 38
    if-eqz p2, :cond_31

    .line 40
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initItemDecoration()V

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
    iget p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDensity:F

    .line 68
    cmpl-float p2, p2, p1

    .line 70
    if-eqz p2, :cond_5c

    .line 72
    iput p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDensity:F

    .line 74
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 76
    if-eqz p1, :cond_5c

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5c

    .line 84
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

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

.method public onScanFinish(I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    .line 8
    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 18
    if-eqz v1, :cond_16

    .line 20
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 25
    if-eqz v0, :cond_21

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 29
    if-eqz v1, :cond_21

    .line 31
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 40
    if-eqz v1, :cond_2c

    .line 42
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 47
    if-eqz v0, :cond_37

    .line 49
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 51
    if-eqz v1, :cond_37

    .line 53
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 56
    :cond_37
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0a0062

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    if-nez v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 26
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 28
    if-nez v1, :cond_2e

    .line 30
    const v1, 0x7f08022e

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    const v1, 0x7f1101ea

    .line 39
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    goto :goto_3e

    .line 47
    :cond_2e
    const v1, 0x7f08022b

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    const v1, 0x7f1101eb

    .line 56
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    :goto_3e
    return-void
.end method

.method public setLayoutManager(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    if-eqz v0, :cond_45

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_45

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initItemDecoration()V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 20
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 27
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 29
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 47
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 49
    if-nez v0, :cond_38

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 53
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 59
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    .line 62
    :goto_3d
    if-eqz p1, :cond_44

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 69
    :cond_44
    return-void

    .line 70
    :cond_45
    :goto_45
    const-string p1, "RecentSecondaryFragment"

    .line 72
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 74
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
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

.method public switchViewMode()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setDisplayModeIcon()V

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setLayoutManager(Z)V

    .line 16
    return-void
.end method

.method public updateFiles(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    if-nez p2, :cond_30

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 48
    goto :goto_34

    .line 49
    :cond_30
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setLayoutManager(Z)V

    .line 53
    :goto_34
    return-void
.end method
