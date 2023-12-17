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

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    const-string v0, "HomeFileFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mAllHomeFiles:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$1;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUITask:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 17
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 6
    if-eqz v0, :cond_f

    .line 8
    if-eqz p1, :cond_b

    .line 10
    move v3, v2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v3, v1

    .line 13
    :goto_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryHeaderBar:Landroid/view/View;

    .line 18
    if-eqz v0, :cond_1b

    .line 20
    if-eqz p1, :cond_17

    .line 22
    move v3, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v3, v1

    .line 25
    :goto_18
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryDivider:Landroid/view/View;

    .line 30
    if-eqz v0, :cond_22

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 37
    if-eqz v0, :cond_35

    .line 39
    if-nez p1, :cond_31

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 43
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    .line 46
    move-result p1

    .line 47
    if-lez p1, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v1, v2

    .line 51
    :goto_32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_35
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    .line 57
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->registerCoordinateScrollViewAgain()V

    .line 60
    return-void
.end method

.method private handleDisplayChanged(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleCategoryView(Z)V

    .line 4
    return-void
.end method

.method private handleMenuView()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_e

    .line 12
    const/16 v0, 0x8

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v1

    .line 16
    :goto_f
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    .line 18
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2c

    .line 37
    const v3, 0x7f0700f9

    .line 40
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 43
    move-result v3

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v3, v1

    .line 46
    :goto_2d
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    .line 51
    move-result v4

    .line 52
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 54
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 57
    move-result v5

    .line 58
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->listGridView:Landroid/widget/ImageView;

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->fillListGridModeImageView(Landroid/widget/ImageView;Z)V

    .line 66
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 68
    if-eqz v0, :cond_46

    .line 70
    return-void

    .line 71
    :cond_46
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_79

    .line 77
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_79

    .line 87
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    const v1, 0x7f0a0062

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_79

    .line 104
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/ImageView;

    .line 118
    const/4 v1, 0x1

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->fillListGridModeImageView(Landroid/widget/ImageView;Z)V

    .line 122
    :cond_79
    return-void
.end method

.method private initActionBar()V
    .registers 1

    return-void
.end method

.method private initCategoryEntryView(Landroid/view/View;)V
    .registers 9

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    .line 7
    const v0, 0x7f0a0177

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 18
    const v0, 0x7f0a01ca

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryHeaderBar:Landroid/view/View;

    .line 27
    const v0, 0x7f0a0214

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryMoreIv:Landroid/widget/ImageView;

    .line 38
    const v1, 0x7f110294

    .line 41
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0a0176

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryDivider:Landroid/view/View;

    .line 57
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x2

    .line 64
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 69
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    const v0, 0x7f070280

    .line 75
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 78
    move-result v0

    .line 79
    const v1, 0x7f07027f

    .line 82
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 85
    move-result v1

    .line 86
    const v3, 0x7f070275

    .line 89
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 92
    move-result v3

    .line 93
    const v4, 0x7f070274

    .line 96
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 99
    move-result v4

    .line 100
    new-instance v5, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    .line 102
    invoke-direct {v5, v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;-><init>(III)V

    .line 105
    const v0, 0x7f070273

    .line 108
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 111
    move-result v0

    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v5, v4, v3, v1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->setMargin(IIII)V

    .line 116
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 118
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 121
    new-instance v0, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->otherNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 129
    new-instance v4, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;

    .line 131
    new-instance v6, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;

    .line 133
    invoke-direct {v6, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 136
    invoke-direct {v4, v6}, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;-><init>(Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;)V

    .line 139
    invoke-direct {v0, v2, v3, v4}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 144
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 146
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    .line 151
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategories()Ljava/util/List;

    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    .line 161
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    .line 164
    const v0, 0x7f0a01b6

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object p1

    .line 171
    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    .line 173
    const/4 v1, 0x4

    .line 174
    invoke-direct {v0, v1, p0, v5}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance p1, Landroidx/recyclerview/widget/f;

    .line 182
    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;

    .line 184
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 186
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/ItemTouchAdapter;)V

    .line 189
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    .line 192
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 194
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 197
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 199
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setItemTouchHelper(Landroidx/recyclerview/widget/f;)V

    .line 202
    return-void
.end method

.method private initListView(I)V
    .registers 10

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 3
    const-string v1, "initListView: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;

    .line 10
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    iget-object v6, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 16
    move-object v2, v0

    .line 17
    move-object v3, p0

    .line 18
    move v7, p1

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;I)V

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setAdapter(Z)V

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 35
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;

    .line 37
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 43
    return-void
.end method

.method private initOtherEntryView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    .line 7
    const v0, 0x7f0a017a

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 18
    const v0, 0x7f0a03e5

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 27
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mStorage:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x8

    .line 39
    if-eqz v0, :cond_2a

    .line 41
    move v0, v1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    :goto_2b
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getOtherEnterGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;

    .line 69
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 72
    invoke-direct {p1, v0, v1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 75
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 79
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 93
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 95
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 98
    return-void
.end method

.method private synthetic lambda$initCategoryEntryView$1(Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    .line 4
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryMoreIv:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 9
    move-result p2

    .line 10
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    .line 13
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 23
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onNewFolder()V

    .line 4
    return-void
.end method

.method private refreshViewModeAndSortType(Z)V
    .registers 4

    .line 1
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object p1

    .line 11
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 15
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 17
    if-eq v0, v1, :cond_15

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onViewModeChanged(I)V

    .line 22
    :cond_15
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 26
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 28
    if-eq v0, v1, :cond_24

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->getMethod(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 37
    :cond_24
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 45
    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3d

    .line 57
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onSortOrderChanged(Z)V

    .line 62
    :cond_3d
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 64
    return-void
.end method

.method private registerCoordinateScrollViewAgain()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 12
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mContentInset:Landroid/graphics/Rect;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 22
    :cond_15
    return-void
.end method

.method private registerCoordinatedListener()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method private setCategoryMoreExpanding(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->isItemMoved()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1e

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 19
    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->getData()Ljava/util/List;

    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setItemMove(Z)V

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategories:Ljava/util/List;

    .line 33
    if-eqz p1, :cond_23

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    const/4 v2, 0x4

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    :goto_28
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateCategories(Ljava/util/List;)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setExpanding(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 51
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->setExpanding(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryMoreIv:Landroid/widget/ImageView;

    .line 56
    xor-int/lit8 p1, p1, 0x1

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 61
    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;Z)V
    .registers 3

    return-void
.end method

.method private startLoadDynamicCategory()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    .line 12
    :cond_b
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v1, v1, [Ljava/lang/Void;

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    .line 3
    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;-><init>(Ljava/util/List;Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Void;

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 18
    return-void
.end method

.method private updateFabPreference()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->CATEGORY_KEY:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 11
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "title"

    .line 13
    const-string v2, ""

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "android.intent.action.VIEW"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 25
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setAdapter(Z)V

    .line 36
    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public dismissToastView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a042f

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    .line 17
    :cond_10
    return-void
.end method

.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

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

.method public finishPullRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 8
    :cond_7
    return-void
.end method

.method public getDataBackToFront()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDataBackToFront()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onUpdateUI()V

    .line 11
    :cond_a
    return-void
.end method

.method public getFileTransferDestType()I
    .registers 2

    .line 1
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    .line 3
    return v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d01ab

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOtherEnterGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .registers 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 11
    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;

    .line 13
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 19
    return-object v0
.end method

.method public initDecoration()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getColumnType()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v1, v0, :cond_5b

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

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
    iput-object v6, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 74
    invoke-virtual {v6, v5, v4, v2, v2}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 79
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 81
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 84
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 86
    if-eqz v0, :cond_67

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 91
    goto :goto_67

    .line 92
    :cond_5b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 94
    if-eqz v0, :cond_67

    .line 96
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 101
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 104
    :cond_67
    :goto_67
    return-void
.end method

.method public initEmptyView(Landroid/view/View;)V
    .registers 4

    .line 1
    const v0, 0x7f0a02d8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 12
    const v0, 0x7f0a0368

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 23
    const v0, 0x7f0a036a

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 34
    const v0, 0x7f0a036b

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    .line 43
    const v0, 0x102000a

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 52
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    .line 56
    const v0, 0x7f0a042e

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/Button;

    .line 65
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mBtnToSetting:Landroid/widget/Button;

    .line 67
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz p1, :cond_5f

    .line 72
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 74
    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 79
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 82
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 88
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 90
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 92
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 95
    goto :goto_69

    .line 96
    :cond_5f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 98
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 101
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 103
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 106
    :goto_69
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 108
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 111
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 113
    const/16 v1, 0x8

    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public initUI(Lcom/android/fileexplorer/model/StorageInfo;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initListView(I)V

    .line 4
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v0, 0x7f0a0163

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 14
    const v0, 0x7f0a0368

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 27
    const v1, 0x7f0a02d8

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 36
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 38
    const v0, 0x7f0a036a

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 47
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 51
    const v1, 0x7f0a036b

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNoPermissionView:Landroid/view/View;

    .line 60
    const/16 v1, 0x8

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v0, 0x7f0a02f4

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/Button;

    .line 74
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 76
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 81
    const/4 v1, 0x1

    .line 82
    if-nez v0, :cond_68

    .line 84
    const v0, 0x102000a

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 93
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 100
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 102
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 105
    :cond_68
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 111
    new-instance v0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 121
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 123
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 131
    new-instance v2, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;

    .line 133
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 136
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    .line 139
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 148
    move-result-object v2

    .line 149
    invoke-static {v0, v2}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 155
    const-string v0, "PAGE_"

    .line 157
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move-result-object v0

    .line 161
    sget-object v2, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroidx/lifecycle/c0;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v0, v2}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 182
    const-class v2, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 184
    invoke-virtual {v0, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 190
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->otherNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 192
    iget v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->count:I

    .line 194
    if-gt v0, v1, :cond_cd

    .line 196
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 198
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initOtherEntryView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 203
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initCategoryEntryView(Landroid/view/View;)V

    .line 206
    :cond_cd
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->otherNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 208
    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->homeFileIsNeedRefresh()Landroidx/lifecycle/q;

    .line 211
    move-result-object v0

    .line 212
    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;

    .line 214
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    .line 217
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 220
    const v0, 0x7f0a0057

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    move-result-object v0

    .line 227
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->newFolderView:Landroid/view/View;

    .line 229
    const v0, 0x7f0a03e3

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 238
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    .line 240
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->newFolderView:Landroid/view/View;

    .line 242
    new-instance v0, Lcom/android/cloud/fragment/e;

    .line 244
    const/4 v1, 0x4

    .line 245
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleMenuView()V

    .line 254
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 256
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 259
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 261
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 268
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

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x6a

    .line 6
    if-eq p1, p3, :cond_8

    .line 8
    goto :goto_16

    .line 9
    :cond_8
    const/4 p1, -0x1

    .line 10
    if-ne p2, p1, :cond_16

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 16
    if-eqz p2, :cond_16

    .line 18
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal()V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 3

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_e
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    .line 17
    const-string v1, "onBack111"

    .line 19
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 24
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onBackPressed()Z

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a02f4

    .line 8
    if-ne p1, v0, :cond_12

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->openDocumentUi(Landroid/content/Context;)V

    .line 19
    :cond_12
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_28

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 12
    if-eqz v0, :cond_28

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mContentInset:Landroid/graphics/Rect;

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 34
    move-result v3

    .line 35
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mContentInset:Landroid/graphics/Rect;

    .line 43
    :goto_2a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011e

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 16
    if-eqz p1, :cond_2a

    .line 18
    new-instance p1, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;)V

    .line 27
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 31
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 43
    :cond_2a
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedHeaderLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 6
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->onDestroyView()V

    .line 9
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 11
    const-string v1, "onDestroyView: "

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 18
    if-eqz v0, :cond_16

    .line 20
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onDestroy()V

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_2f

    .line 35
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 38
    move-result-object v0

    .line 39
    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 41
    if-ne v0, v2, :cond_2f

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 48
    :cond_2f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    .line 50
    if-eqz v0, :cond_39

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;

    .line 58
    :cond_39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUITask:Ljava/lang/Runnable;

    .line 60
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public onDirectoryDisplayChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDirectoryDisplayChanged(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    .line 7
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    .line 9
    :cond_8
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 11
    if-eqz v0, :cond_57

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_57

    .line 20
    :cond_13
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 22
    const-string v1, "onEventMainThread: event = "

    .line 24
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/FileChangeEvent;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_54

    .line 50
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->isViewMode()Z

    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_57

    .line 56
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    .line 58
    if-eqz p1, :cond_57

    .line 60
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 62
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    move-result-object p1

    .line 70
    const-string v0, "android.intent.action.VIEW"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 77
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    .line 88
    :cond_57
    :goto_57
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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onViewModeChanged(I)V

    .line 21
    goto/16 :goto_e1

    .line 23
    :sswitch_16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 25
    iput v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 29
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onViewModeChanged(I)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 74
    move-result v2

    .line 75
    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 120
    move-result v2

    .line 121
    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 142
    move-result v0

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 161
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result v2

    .line 165
    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 186
    move-result v0

    .line 187
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 208
    move-result v2

    .line 209
    invoke-virtual {p1, v2, v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    .line 212
    goto :goto_e1

    .line 213
    :sswitch_d4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 215
    if-eqz p1, :cond_e1

    .line 217
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 219
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolder(Ljava/lang/String;Z)V

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

.method public onKeyShortcut(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_e

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_7

    .line 7
    goto :goto_15

    .line 8
    :cond_7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_15

    .line 14
    return v0

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_15

    .line 21
    return v0

    .line 22
    :cond_15
    :goto_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 25
    move-result p1

    .line 26
    return p1
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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    :cond_2e
    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p1, :cond_60

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 15
    if-eqz p1, :cond_25

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 19
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 22
    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    invoke-direct {p1, v2}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 33
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 35
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 38
    :cond_25
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleMenuView()V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mStorage:Landroid/widget/TextView;

    .line 43
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 45
    if-eq p2, v2, :cond_31

    .line 47
    const/16 v2, 0x8

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v2, v0

    .line 51
    :goto_32
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_60

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    move-result-object p1

    .line 68
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 70
    iget v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    .line 72
    cmpl-float v2, v2, p1

    .line 74
    if-eqz v2, :cond_60

    .line 76
    iput p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    .line 78
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 80
    if-eqz p1, :cond_60

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_60

    .line 88
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    .line 97
    :cond_60
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 100
    move-result-object p1

    .line 101
    const v2, 0x7f0d006c

    .line 104
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy(I)V

    .line 107
    sget-object p1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 109
    if-eq p2, p1, :cond_6f

    .line 111
    move v0, v1

    .line 112
    :cond_6f
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    .line 115
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    .line 118
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
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    return-void
.end method

.method public onOtgChangeEvent(Lcom/android/fileexplorer/event/OtgChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    .line 4
    return-void
.end method

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    .line 4
    return-void
.end method

.method public onPadNavigationChange(Lcom/android/fileexplorer/event/PadNavigationChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 3
    if-eqz p1, :cond_d

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onResume()V

    .line 14
    :cond_d
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 6
    if-eqz p1, :cond_68

    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 14
    if-eqz p1, :cond_24

    .line 16
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 18
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 21
    new-instance p1, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->entryDecoration:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;

    .line 32
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 34
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 37
    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleMenuView()V

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initActionBar()V

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mStorage:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_39

    .line 55
    const/16 p2, 0x8

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    const/4 p2, 0x0

    .line 59
    :goto_3a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_68

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 75
    move-result-object p1

    .line 76
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 78
    iget p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    .line 80
    cmpl-float p2, p2, p1

    .line 82
    if-eqz p2, :cond_68

    .line 84
    iput p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mDensity:F

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 88
    if-eqz p1, :cond_68

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_68

    .line 96
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 98
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    .line 105
    :cond_68
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 108
    move-result-object p1

    .line 109
    const p2, 0x7f0d006c

    .line 112
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy(I)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 122
    move-result p1

    .line 123
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    .line 126
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startLoadDynamicCategory()V

    .line 129
    return-void
.end method

.method public onResume()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_52

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_46

    .line 19
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 23
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 34
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 58
    move-result v0

    .line 59
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    .line 62
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 67
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onResume()V

    .line 70
    goto :goto_4b

    .line 71
    :cond_46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initEmptyView(Landroid/view/View;)V

    .line 76
    :goto_4b
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 82
    goto :goto_65

    .line 83
    :cond_52
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 85
    if-eqz v0, :cond_65

    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshViewModeAndSortType(Z)V

    .line 91
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setCategoryMoreExpanding(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 96
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshFiles()V

    .line 102
    :cond_65
    :goto_65
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateFabPreference()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p1

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 12
    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    .line 17
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateFabPreference()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 8
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onSortMethodChanged(IZ)V

    .line 13
    return-void
.end method

.method public onUpdateFileListEvent(Lcom/android/fileexplorer/event/UpdateFileListEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    .line 4
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    .line 4
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    .line 15
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v2, "onUserVisible: first = "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 39
    if-nez v0, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    if-nez p1, :cond_2f

    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshViewModeAndSortType(Z)V

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 50
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->showPhoneTab(Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 53
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mHasPermission:Z

    .line 6
    if-eqz p1, :cond_12

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 15
    move-result p1

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->handleDisplayChanged(Z)V

    .line 19
    :cond_12
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->registerCoordinatedListener()V

    .line 7
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateFabPreference()V

    .line 4
    if-nez p1, :cond_9

    .line 6
    const p1, 0x7f0a0492

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    const p1, 0x7f0a048f

    .line 13
    :goto_c
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 15
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 21
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/FoldScreenFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_17

    .line 6
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_13

    .line 11
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mIsRefreshFile:Z

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUITask:Ljava/lang/Runnable;

    .line 15
    const-wide/16 v1, 0xc8

    .line 17
    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 20
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshViewModeAndSortType(Z)V

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    .line 27
    :goto_1a
    return-void
.end method

.method public openDir(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string p1, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 13
    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 15
    const/16 v2, 0x3e9

    .line 17
    invoke-direct {v0, v2, v1, p2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 23
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    const-string v4, ""

    .line 5
    const-string v5, "手机tab页"

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p3

    .line 9
    move v3, p1

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 7
    if-eqz v0, :cond_3e

    .line 9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 15
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->path:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3e

    .line 23
    new-instance v1, Ljava/io/File;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->path:Ljava/lang/String;

    .line 27
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3e

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/io/File;

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 44
    invoke-virtual {v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3e

    .line 61
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :cond_3e
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public processStartDrag()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processStartDrag()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public refreshFiles()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 17
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_1d

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    .line 23
    if-eqz p1, :cond_1c

    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    .line 29
    :cond_1c
    return-void

    .line 30
    :cond_1d
    :goto_1d
    sget-object p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 32
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 34
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public setLayoutManager(Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4a

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_4a

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getColumnType()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_22

    .line 19
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 23
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 30
    move-result v2

    .line 31
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 34
    goto :goto_2d

    .line 35
    :cond_22
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 39
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 46
    :goto_2d
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 50
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initDecoration()V

    .line 56
    if-eqz p1, :cond_49

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 71
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    .line 74
    :cond_49
    return-void

    .line 75
    :cond_4a
    :goto_4a
    sget-object p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 77
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 79
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public showDisconnectStorage()V
    .registers 2

    .line 1
    const v0, 0x7f1100ef

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 16
    return-void
.end method

.method public showEmpty(ZI)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-nez p2, :cond_2e

    .line 6
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 8
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 11
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 13
    if-eqz p1, :cond_10

    .line 15
    move v2, v0

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v2, v1

    .line 18
    :goto_11
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 30
    :goto_1d
    invoke-virtual {p2, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 33
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 35
    if-eqz p1, :cond_25

    .line 37
    move v0, v1

    .line 38
    :cond_25
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    goto :goto_68

    .line 47
    :cond_2e
    const/4 v2, 0x1

    .line 48
    if-ne p2, v2, :cond_4d

    .line 50
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 52
    invoke-virtual {p2, p1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 62
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 64
    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 67
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    goto :goto_68

    .line 78
    :cond_4d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 80
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 90
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 92
    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_68
    return-void
.end method

.method public showInvalidStorage()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->backToViewMode()V

    .line 7
    const v0, 0x7f11014a

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->showToast(I)V

    .line 13
    return-void
.end method

.method public showToast(I)V
    .registers 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 6
    :cond_5
    return-void
.end method

.method public startFileExplorer(Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->dismissToastView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 6
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 13
    return-void
.end method

.method public switchViewMode(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->checkValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_28

    .line 12
    :cond_b
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->LOG_TAG:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v2, "newType = "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->exitActionMode()Z

    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setAdapter(Z)V

    .line 41
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mCategoryAdapter:Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;->setData(Ljava/util/List;)V

    .line 8
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 3
    if-eqz v0, :cond_30

    .line 5
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    .line 7
    const-string v1, "onDataChanged"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    .line 14
    if-eqz v0, :cond_21

    .line 16
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 22
    if-ne v0, v1, :cond_21

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 30
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startNewBuildVOListTask(Ljava/util/List;)V

    .line 33
    goto :goto_30

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mBuildVOListTask:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;

    .line 36
    if-eqz v0, :cond_2d

    .line 38
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 44
    if-ne v0, v1, :cond_30

    .line 46
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->startNewBuildVOListTask(Ljava/util/List;)V

    .line 49
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "updateStorageVolumes: volumes:"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 25
    if-eqz v0, :cond_7b

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_34

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/fileexplorer/model/FileEntryEntity;

    .line 43
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1e

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 52
    goto :goto_1e

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_57

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_57

    .line 69
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 71
    if-nez v0, :cond_57

    .line 73
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getExtendOpen()Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_57

    .line 79
    new-instance v0, Lcom/android/fileexplorer/model/FileEntryEntity;

    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/model/FileEntryEntity;-><init>(Z)V

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 91
    move-result v0

    .line 92
    const/16 v1, 0x8

    .line 94
    if-lez v0, :cond_76

    .line 96
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_6c

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    const/4 v1, 0x0

    .line 110
    :goto_6d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 115
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->setData(Ljava/util/List;)V

    .line 118
    goto :goto_7b

    .line 119
    :cond_76
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method

.method public updateUI()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onUpdateUI()V

    .line 8
    :cond_7
    return-void
.end method
