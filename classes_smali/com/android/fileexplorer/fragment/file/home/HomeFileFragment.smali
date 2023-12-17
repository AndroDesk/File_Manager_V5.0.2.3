.class public Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;
.super Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;
.source "HomeFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;,
        Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;
    }
.end annotation


# static fields
.field private static final CATEGORY_KEY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SPAN_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private count:I

.field private entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

.field public gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public isActionMode:Z

.field public listGridView:Landroid/widget/ImageView;

.field private mAllHomeFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnOpen:Landroid/widget/Button;

.field private mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

.field private mCategoryDivider:Landroid/view/View;

.field private mCategoryHeaderBar:Landroid/view/View;

.field private mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mCategoryMoreIv:Landroid/widget/ImageView;

.field private mContentInset:Landroid/graphics/Rect;

.field private mDensity:F

.field public mIndicatorRl:Landroid/widget/RelativeLayout;

.field private mIsInterstitialAdSuccess:Z

.field private mIsRefreshFile:Z

.field public mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mNoPermissionView:Landroid/view/View;

.field public mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

.field public mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

.field public mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

.field public mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

.field public mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field public mStorage:Landroid/widget/TextView;

.field public newFolderView:Landroid/view/View;

.field public otherNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

.field public sortMenuView:Landroid/view/View;

.field private updateUITask:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    const-string v0, "HomeFileFragment"

    sput-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->CATEGORY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mAllHomeFiles:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUITask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    return p1
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->lambda$initCategoryEntryView$1(Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;Landroid/view/View;)V

    return-void
.end method

.method private fillListGridModeImageView(Landroid/widget/ImageView;Z)V
    .registers 3

    return-void
.end method

.method private getColumnType()I
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    return v0
.end method

.method private handleActionBar(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private handleCategoryView(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_f

    if-eqz p1, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    move v3, v1

    :goto_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryHeaderBar:Landroid/view/View;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    move v3, v1

    :goto_18
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryDivider:Landroid/view/View;

    if-eqz v0, :cond_22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_35

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->registerCoordinateScrollViewAgain()V

    return-void
.end method

.method private handleDisplayChanged(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleCategoryView(Z)V

    return-void
.end method

.method private handleMenuView()V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const v3, 0x7f0700f9

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2d

    :cond_2c
    move v3, v1

    :goto_2d
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->listGridView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->fillListGridModeImageView(Landroid/widget/ImageView;Z)V

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v0, :cond_46

    return-void

    :cond_46
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032df4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->fillListGridModeImageView(Landroid/widget/ImageView;Z)V

    :cond_7d
    return-void
.end method

.method private initActionBar()V
    .registers 1

    return-void
.end method

.method private initCategoryEntryView(Landroid/view/View;)V
    .registers 9

    iget v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    const v0, 0x7f032ce1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f032c5c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryHeaderBar:Landroid/view/View;

    const v0, 0x7f032f82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryMoreIv:Landroid/widget/ImageView;

    const v1, 0x7f182f02

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f032ce0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryDivider:Landroid/view/View;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f070280

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07027f

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f070275

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070274

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;-><init>(III)V

    const v0, 0x7f070273

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v5, v4, v3, v1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->otherNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    new-instance v4, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;

    new-instance v6, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;

    invoke-direct {v6, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    invoke-direct {v4, v6}, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;-><init>(Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    const v0, 0x7f032c20

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, v5}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/recyclerview/widget/f;

    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/ItemTouchAdapter;)V

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setItemTouchHelper(Landroidx/recyclerview/widget/f;)V

    return-void
.end method

.method private initListView(I)V
    .registers 10

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initListView: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v6, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    move-object v2, v0

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setAdapter(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    return-void
.end method

.method private initOtherEntryView(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    const v0, 0x7f032cec

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f032e73

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mStorage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_32

    move v0, v1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getOtherEnterGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    invoke-direct {p1, v0, v1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method private synthetic lambda$initCategoryEntryView$1(Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryMoreIv:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onNewFolder()V

    return-void
.end method

.method private refreshViewModeAndSortType(Z)V
    .registers 4

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-eq v0, v1, :cond_15

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onViewModeChanged(I)V

    :cond_15
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    if-eq v0, v1, :cond_24

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->getMethod(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    :cond_24
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onSortOrderChanged(Z)V

    :cond_3d
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method

.method private registerCoordinateScrollViewAgain()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->registerCoordinateScrollView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mContentInset:Landroid/graphics/Rect;

    if-eqz v0, :cond_15

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_15
    return-void
.end method

.method private registerCoordinatedListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->registerCoordinateScrollView(Landroid/view/View;)V

    return-void
.end method

.method private setCategoryMoreExpanding(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->isItemMoved()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setItemMove(Z)V

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    if-eqz p1, :cond_23

    goto :goto_28

    :cond_23
    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_28
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateCategories(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setExpanding(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->setExpanding(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryMoreIv:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;Z)V
    .registers 3

    return-void
.end method

.method private startLoadDynamicCategory()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    :cond_b
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startNewBuildVOListTask(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;-><init>(Ljava/util/List;Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateFabPreference()V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->CATEGORY_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setAdapter(Z)V

    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public dismissToastView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0329b9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    :cond_14
    return-void
.end method

.method public exitActionMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

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

.method public finishPullRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    :cond_7
    return-void
.end method

.method public getDataBackToFront()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDataBackToFront()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onUpdateUI()V

    :cond_a
    return-void
.end method

.method public getFileTransferDestType()I
    .registers 2

    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    return v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d01ab

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherEnterGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .registers 4

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    return-object v0
.end method

.method public initDecoration()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getColumnType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

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

    iput-object v6, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v6, v5, v4, v2, v2}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz v0, :cond_67

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    goto :goto_67

    :cond_5b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz v0, :cond_67

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_67
    :goto_67
    return-void
.end method

.method public initEmptyView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f032f4e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const v0, 0x7f032efe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const v0, 0x7f032efc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f032efd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    const v0, 0x7f0329b8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mBtnToSetting:Landroid/widget/Button;

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    goto :goto_7d

    :cond_73
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    :goto_7d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initUI(Lcom/android/fileexplorer/model/StorageInfo;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initListView(I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const v0, 0x7f032efe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f4e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const v0, 0x7f032efc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efd

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032f62

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x1

    if-nez v0, :cond_80

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    :cond_80
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    new-instance v0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    new-instance v2, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    const-string v0, "PAGE_"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v2, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->otherNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    iget v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    if-gt v0, v1, :cond_e5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initOtherEntryView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initCategoryEntryView(Landroid/view/View;)V

    :cond_e5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->otherNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->homeFileIsNeedRefresh()Landroidx/lifecycle/q;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    const v0, 0x7f032dc1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->newFolderView:Landroid/view/View;

    const v0, 0x7f032e75

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->newFolderView:Landroid/view/View;

    new-instance v0, Lcom/android/cloud/fragment/e;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleMenuView()V

    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

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

.method public onActionModeChange(Lcom/android/fileexplorer/event/ActionModeChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x6a

    if-eq p1, p3, :cond_8

    goto :goto_16

    :cond_8
    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBack111"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02f4

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->openDocumentUi(Landroid/content/Context;)V

    :cond_12
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mContentInset:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2a

    :cond_28
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mContentInset:Landroid/graphics/Rect;

    :goto_2a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12011e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    if-eqz p1, :cond_2a

    new-instance p1, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_2a
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->onDestroyView()V

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroyView: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onDestroy()V

    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    if-eqz v0, :cond_39

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    :cond_39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUITask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDirectoryDisplayChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDirectoryDisplayChanged(Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    :cond_8
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_57

    :cond_13
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onEventMainThread: event = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/event/FileChangeEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_54

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->isViewMode()Z

    move-result p1

    if-nez p1, :cond_57

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_57

    :cond_54
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    :cond_57
    :goto_57
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

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onViewModeChanged(I)V

    goto/16 :goto_e1

    :sswitch_16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onViewModeChanged(I)V

    goto/16 :goto_e1

    :sswitch_21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto/16 :goto_e1

    :sswitch_38
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto/16 :goto_e1

    :sswitch_4f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto/16 :goto_e1

    :sswitch_66
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_7c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_a8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_be
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    goto :goto_e1

    :sswitch_d4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz p1, :cond_e1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolder(Ljava/lang/String;Z)V

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

.method public onKeyShortcut(I)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    goto :goto_15

    :cond_7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    :cond_15
    :goto_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    :cond_8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_f
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2e
    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_60

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_25

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_25
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleMenuView()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mStorage:Landroid/widget/TextView;

    sget-object v2, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    if-eq p2, v2, :cond_31

    const/16 v2, 0x8

    goto :goto_32

    :cond_31
    move v2, v0

    :goto_32
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_60

    iput p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    :cond_60
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object p1

    const v2, 0x7f0d006c

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy(I)V

    sget-object p1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    if-eq p2, p1, :cond_6f

    move v0, v1

    :cond_6f
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    return-void
.end method

.method public onNewFolder()V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    const v1, 0x7f0a01eb

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    return-void
.end method

.method public onOtgChangeEvent(Lcom/android/fileexplorer/event/OtgChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    return-void
.end method

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    return-void
.end method

.method public onPadNavigationChange(Lcom/android/fileexplorer/event/PadNavigationChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onResume()V

    :cond_d
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    if-eqz p1, :cond_68

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_24

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleMenuView()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initActionBar()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mStorage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_39

    const/16 p2, 0x8

    goto :goto_3a

    :cond_39
    const/4 p2, 0x0

    :goto_3a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_68

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_68

    iput p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz p1, :cond_68

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    :cond_68
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object p1

    const p2, 0x7f0d006c

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_52

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onResume()V

    goto :goto_4b

    :cond_46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initEmptyView(Landroid/view/View;)V

    :goto_4b
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    goto :goto_65

    :cond_52
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    if-eqz v0, :cond_65

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshViewModeAndSortType(Z)V

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onResume()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshFiles()V

    :cond_65
    :goto_65
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateFabPreference()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateFabPreference()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    return-void
.end method

.method public onUpdateFileListEvent(Lcom/android/fileexplorer/event/UpdateFileListEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserVisible: first = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    if-nez v0, :cond_29

    return-void

    :cond_29
    if-nez p1, :cond_2f

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshViewModeAndSortType(Z)V

    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->showPhoneTab(Lcom/android/fileexplorer/controller/FabPreference;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    :cond_12
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->registerCoordinatedListener()V

    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateFabPreference()V

    if-nez p1, :cond_9

    const p1, 0x7f0a0492

    goto :goto_c

    :cond_9
    const p1, 0x7f0a048f

    :goto_c
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/FoldScreenFragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUITask:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    :cond_13
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshViewModeAndSortType(Z)V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    :goto_1a
    return-void
.end method

.method public openDir(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    const-string p1, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    const/16 v2, 0x3e9

    invoke-direct {v0, v2, v1, p2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    return-void
.end method

.method public openFile(ILcom/android/fileexplorer/model/FileInfo;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    const-string v4, ""

    const-string v5, "手机tab页"

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->path:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 p1, 0x0

    return p1

    :cond_3e
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public processStartDrag()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processStartDrag()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAllChecked(Z)V

    :cond_b
    return-void
.end method

.method public refreshFiles()V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_1d

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    :cond_1c
    return-void

    :cond_1d
    :goto_1d
    sget-object p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "setAdapter: activity is null or mFileListView is null."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLayoutManager(Z)V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_4a

    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getColumnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_2d

    :cond_22
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_2d
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initDecoration()V

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    :cond_49
    return-void

    :cond_4a
    :goto_4a
    sget-object p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "setAdapter: activity is null or mFileListView is null."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDisconnectStorage()V
    .registers 2

    const v0, 0x7f1100ef

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public showEmpty(ZI)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_2e

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_1b

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_1d

    :cond_1b
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    :goto_1d
    invoke-virtual {p2, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz p1, :cond_25

    move v0, v1

    :cond_25
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_68

    :cond_2e
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4d

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {p2, p1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_68

    :cond_4d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_68
    return-void
.end method

.method public showInvalidStorage()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->backToViewMode()V

    const v0, 0x7f11014a

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->showToast(I)V

    return-void
.end method

.method public showToast(I)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :cond_5
    return-void
.end method

.method public startFileExplorer(Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->dismissToastView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public switchViewMode(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_28

    :cond_b
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setAdapter(Z)V

    :cond_28
    :goto_28
    return-void
.end method

.method public updateCategories(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setData(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public updateChoiceItems()V
    .registers 1

    return-void
.end method

.method public updateFiles(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDataChanged"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startNewBuildVOListTask(Ljava/util/List;)V

    goto :goto_30

    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_30

    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startNewBuildVOListTask(Ljava/util/List;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public updateStorageVolumes(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileEntryEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateStorageVolumes: volumes:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileEntryEntity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_57

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-nez v0, :cond_57

    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getExtendOpen()Z

    move-result v0

    if-eqz v0, :cond_57

    new-instance v0, Lcom/android/fileexplorer/model/FileEntryEntity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/model/FileEntryEntity;-><init>(Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lez v0, :cond_76

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->setData(Ljava/util/List;)V

    goto :goto_7b

    :cond_76
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public updateUI()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onUpdateUI()V

    :cond_7
    return-void
.end method
