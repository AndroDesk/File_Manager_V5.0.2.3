.class public Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;
.source "PadBaseCategoryFragment.java"

# interfaces
.implements Lcom/fileexplorer/advert/listenter/AdLoadListener;


# static fields
.field private static final AD_PLACE_STANDARD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PadBaseCategoryFragment"


# instance fields
.field public mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;)Lcom/android/fileexplorer/model/AdFileInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Lcom/android/fileexplorer/model/AdFileInfo;)Lcom/android/fileexplorer/model/AdFileInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->addAdToFileInfoDateGroups(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->notifyItemInsertedAd(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->lambda$setListGridMode$0(Landroid/view/View;)V

    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 8
    return-object v0
.end method

.method private getNativeAdView(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    sget-object v0, Lcom/fileexplorer/advert/config/NativeAdConst;->CATEGORY_POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;

    .line 20
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;)V

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/fileexplorer/advert/AdManagerController;->getAdView(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdViewListener;)V

    .line 26
    return-void
.end method

.method private initActionBar()V
    .registers 4

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isToBack()Z

    .line 19
    move-result v2

    .line 20
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0a0062

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->setListGridMode(Landroid/widget/ImageView;)V

    .line 43
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$1;

    .line 53
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method private synthetic lambda$setListGridMode$0(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 9
    return-void
.end method

.method private notifyItemInsertedAd(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/fileexplorer/advert/config/NativeAdConst;->CATEGORY_POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_14

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 11
    if-eqz p1, :cond_14

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 15
    const/4 v1, 0x2

    .line 16
    aget p1, p1, v1

    .line 18
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 21
    :cond_14
    return-void
.end method

.method private onDestroyAd()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isShowAdInCategory()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "1.301.1.11"

    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 17
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "1.301.1.9"

    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 29
    return-void
.end method

.method private onDestroyAdForDislike()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 9
    const/4 v2, 0x0

    .line 10
    aget v1, v1, v2

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 18
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 24
    const/4 v2, 0x1

    .line 25
    aget v1, v1, v2

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 34
    const/4 v2, 0x2

    .line 35
    aget v1, v1, v2

    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 40
    goto :goto_2f

    .line 41
    :catch_28
    const-string v0, "PadBaseCategoryFragment"

    .line 43
    const-string v1, "onDestroyAdForDislike: ad remove fail"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2f
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->onDestroyAd()V

    .line 51
    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    const v0, 0x7f0802aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    new-instance v0, Lcom/android/cloud/fragment/e;

    .line 9
    const/4 v1, 0x7

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public adDisliked(Ljava/lang/String;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 3
    if-eqz p1, :cond_a

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mIsDislike:Z

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->onDestroyAdForDislike()V

    .line 11
    :cond_a
    return-void
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00af

    return v0
.end method

.method public getPageCount()I
    .registers 2

    const/4 v0, 0x0

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

.method public getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 7
    const v2, 0x7f0a03e3

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    .line 19
    return-object v0
.end method

.method public initItemDecoration(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemDecoration(I)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1e

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 31
    :cond_1e
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initActionBar()V

    .line 34
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 36
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 41
    const v1, 0x7f0a02d8

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 50
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 57
    return-void
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public loadBusinessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 17
    move-result-object v2

    .line 18
    const/4 v5, 0x0

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 30
    move-result-object p3

    .line 31
    invoke-static {p3}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 34
    move-result-object p3

    .line 35
    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 41
    new-instance p3, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    .line 43
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 45
    invoke-direct {p3, p2, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    .line 48
    return-object p3
.end method

.method public onBack()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    .line 12
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onBack()Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 6
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 16
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 22
    :cond_15
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->onDestroyAd()V

    .line 25
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
    const-string p2, "PadBaseCategoryFragment"

    .line 28
    invoke-static {p2, p1}, Lcom/fileexplorer/advert/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initActionBar()V

    .line 7
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
    const-string v0, "PadBaseCategoryFragment"

    .line 20
    invoke-static {v0, p2}, Lcom/fileexplorer/advert/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->getNativeAdView(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onUserVisible(Z)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    .line 15
    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->removeItemDecoration()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 10
    if-eqz v1, :cond_e

    .line 12
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 15
    :cond_e
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    .line 4
    return-void
.end method
