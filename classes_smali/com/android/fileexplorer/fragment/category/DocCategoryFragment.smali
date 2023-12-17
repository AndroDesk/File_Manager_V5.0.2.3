.class public Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;
.super Lcom/android/fileexplorer/fragment/BaseTabFragment;
.source "DocCategoryFragment.java"


# static fields
.field private static final CHOICE_MODE:Ljava/lang/String; = "CHOICE_MODE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIndex:I

.field public tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

.field private viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    const-string v0, "DocCategoryFragment"

    sput-object v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/view/ScrollControlViewPager;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->lambda$initView$0()V

    return-void
.end method

.method private getParamsByPos(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    return-object p1

    :cond_13
    const-string p1, "others"

    return-object p1

    :cond_16
    const-string p1, "ppt"

    return-object p1

    :cond_19
    const-string p1, "pdf"

    return-object p1

    :cond_1c
    const-string p1, "excel"

    return-object p1

    :cond_1f
    const-string p1, "doc"

    return-object p1

    :cond_22
    const-string p1, "all"

    return-object p1
.end method

.method private getParamsByPosFab(I)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 3

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p1

    :cond_14
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p1

    :cond_17
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PPT:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p1

    :cond_1a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p1

    :cond_1d
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->XLS:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p1

    :cond_20
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Word:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p1

    :cond_23
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p1
.end method

.method private synthetic lambda$initView$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->mIndex:I

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getParamsByPosFab(I)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "CHOICE_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v4, v3

    :goto_1e
    if-ge v2, v4, :cond_2c

    aget-object v5, v3, v2

    invoke-static {v5, v1}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0082

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    const-string v0, "doc"

    return-object v0
.end method

.method public getPageTitles()[Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

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

.method public initView(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->initView(Landroid/view/View;)V

    const v0, 0x7f032e65

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    const/4 p1, 0x0

    move v0, p1

    :goto_14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getMyPagerAdapter()Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3e

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getMyPagerAdapter()Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->selectedTabPosition:Landroidx/lifecycle/q;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/ScrollControlViewPager;->setScrollEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    new-instance v0, Landroidx/activity/b;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f4e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onBack()Z
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/c0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    new-instance v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    return-void
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    :cond_a
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2a

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_d  #0x7f0a0263
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_12  #0x7f0a0262
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_17  #0x7f0a0261
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_1c  #0x7f0a0260
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_21  #0x7f0a025f
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_25  #0x7f0a025e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    :goto_29
    return v1

    :pswitch_data_2a
    .packed-switch 0x7f0a025e
        :pswitch_25  #7f0a025e
        :pswitch_21  #7f0a025f
        :pswitch_1c  #7f0a0260
        :pswitch_17  #7f0a0261
        :pswitch_12  #7f0a0262
        :pswitch_d  #7f0a0263
    .end packed-switch
.end method

.method public onKeyShortcut(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->onUserVisible(Z)V

    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    return-void
.end method

.method public reverseEmptyViewState()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    :cond_a
    return-void
.end method

.method public setCurrentFragment(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->setCurrentFragment(I)V

    iput p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->mIndex:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getParamsByPos(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "click_doc_tab"

    const-string v1, "page_category"

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
