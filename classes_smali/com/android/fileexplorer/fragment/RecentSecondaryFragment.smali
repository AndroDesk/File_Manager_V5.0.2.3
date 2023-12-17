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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->phoneCachePoolSize:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->groupCachePoolSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

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

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    return-object v0
.end method

.method private getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setIsFixedSize(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032e75

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    return-object v0
.end method

.method private initActionBar()V
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->isToBack()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032df4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setListGridMode(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/fragment/e;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032de2

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/fragment/e;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    const-string v2, "app_name"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAppName:Ljava/lang/String;

    return-void
.end method

.method private initPresenter()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    return-void
.end method

.method private initUI()V
    .registers 5

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

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-direct {v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setUpRecyclerPool()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initItemDecoration()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$4;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    :cond_8d
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;-><init>(Landroid/content/Context;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setRefreshMode(I)V

    new-instance v0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-direct {v0, v1, v2}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v2, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {v2, v3, v0}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v1, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v1, Lcom/android/fileexplorer/fragment/f;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/f;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    new-instance v1, Lcom/android/fileexplorer/fragment/f;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/f;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v1, :cond_107

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-nez v1, :cond_10a

    :cond_107
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    :cond_10a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    new-instance v0, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032f4e

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method private synthetic lambda$initActionBar$0(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    return-void
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getPageNameByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickSearch(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private synthetic lambda$initUI$3(II)V
    .registers 4

    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->isActionMode:Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    :cond_f
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->isActionMode:Z

    invoke-direct {p2, v0}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setListGridMode$2(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->onViewModeChanged(I)V

    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-nez v0, :cond_17

    const v0, 0x7f08022e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f1101ea

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_17
    const v0, 0x7f08022b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f1101eb

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_27
    new-instance v0, Lcom/android/fileexplorer/fragment/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/e;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUpRecyclerPool()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v1, :cond_d

    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    goto :goto_f

    :cond_d
    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->phoneCachePoolSize:I

    :goto_f
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v1, :cond_1f

    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    goto :goto_21

    :cond_1f
    iget v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->phoneCachePoolSize:I

    :goto_21
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->padCachePoolSize:I

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->groupCachePoolSize:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    return-void
.end method

.method private startLoadFiles()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    return-void
.end method


# virtual methods
.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;Z)V

    return-void
.end method

.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;Z)V
    .registers 7

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

    :cond_18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {v3, p1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz p1, :cond_38

    move v1, v0

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_41

    move v0, v2

    :cond_41
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_4d

    :cond_4b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    :goto_4d
    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void

    :cond_51
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const p2, 0x7f11023b

    invoke-virtual {p1, v1, p2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method public finishPullRefresh(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    return-void
.end method

.method public getContentInsetView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->RecentSecondary:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result v7

    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    iput-object v6, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v6, v3, v2, v4, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object v0
.end method

.method public getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object v0
.end method

.method public getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$5;-><init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b9

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

.method public getSpanCount()I
    .registers 2

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->removeItemDecoration()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initActionBar()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initUI()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->startLoadFiles()V

    return-void
.end method

.method public interceptBackPress()Z
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const-class v3, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    const/16 v4, 0x3e8

    invoke-direct {v2, v4, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isToBack()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCloudStatusChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    const-string v1, "cloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1c

    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz v0, :cond_c

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initData()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initPresenter()V

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCloudFiles()Z

    move-result p1

    if-nez p1, :cond_39

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPkgName:Ljava/lang/String;

    const-string v0, "cloud"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mIsCloud:Z

    if-eqz p1, :cond_45

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    :cond_45
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_1b
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result v1

    if-ne v0, v1, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public onRecentChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

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

    const-string p2, "RecentSecondaryFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    instance-of p2, p1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    if-eqz p2, :cond_31

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initItemDecoration()V

    :cond_31
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget p2, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDensity:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_5c

    iput p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDensity:F

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    :cond_5c
    return-void
.end method

.method public onScanFinish(I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mPresenter:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_21

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_2c

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_37

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_37
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032df4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-nez v1, :cond_32

    const v1, 0x7f08022e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1101ea

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_42

    :cond_32
    const v1, 0x7f08022b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1101eb

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_42
    return-void
.end method

.method public setLayoutManager(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-nez v0, :cond_9

    goto :goto_45

    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initItemDecoration()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    goto :goto_3d

    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mLayoutManager:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    :goto_3d
    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_44
    return-void

    :cond_45
    :goto_45
    const-string p1, "RecentSecondaryFragment"

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

.method public switchViewMode()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setDisplayModeIcon()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setLayoutManager(Z)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapterFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_30

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_34

    :cond_30
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->setLayoutManager(Z)V

    :goto_34
    return-void
.end method
