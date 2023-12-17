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

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 3
    const-string v0, "DocCategoryFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)Lcom/android/fileexplorer/view/ScrollControlViewPager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 3
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

    .line 1
    if-eqz p1, :cond_23

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_20

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1d

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1a

    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_17

    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_14

    .line 18
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 20
    return-object p1

    .line 21
    :cond_14
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    return-object p1

    .line 24
    :cond_17
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PPT:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    return-object p1

    .line 30
    :cond_1d
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->XLS:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 32
    return-object p1

    .line 33
    :cond_20
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Word:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 35
    return-object p1

    .line 36
    :cond_23
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 38
    return-object p1
.end method

.method private synthetic lambda$initView$0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 18
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->mIndex:I

    .line 3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getParamsByPosFab(I)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 6
    move-result-object v0

    .line 7
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    move-result-object v1

    .line 17
    const-string v3, "CHOICE_MODE"

    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_1a

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v2

    .line 28
    :goto_1b
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 30
    array-length v4, v3

    .line 31
    :goto_1e
    if-ge v2, v4, :cond_2c

    .line 33
    aget-object v5, v3, v2

    .line 35
    invoke-static {v5, v1}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_1e

    .line 45
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

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f03000a

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
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

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->initView(Landroid/view/View;)V

    .line 4
    const v0, 0x7f0a03f3

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2;

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    .line 15
    const/4 p1, 0x0

    .line 16
    move v0, p1

    .line 17
    :goto_10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getMyPagerAdapter()Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getCount()I

    .line 24
    move-result v1

    .line 25
    if-ge v0, v1, :cond_3a

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    .line 29
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getMyPagerAdapter()Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    new-instance v2, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;

    .line 50
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V

    .line 53
    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 58
    goto :goto_10

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    .line 61
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 63
    iget-object v1, v1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->selectedTabPosition:Landroidx/lifecycle/q;

    .line 65
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(I)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 80
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/ScrollControlViewPager;->setScrollEnabled(Z)V

    .line 83
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    .line 85
    new-instance v0, Landroidx/activity/b;

    .line 87
    const/4 v1, 0x7

    .line 88
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 96
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 101
    const v1, 0x7f0a02d8

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 110
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 117
    return-void
.end method

.method public isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
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
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->onBack()Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Landroidx/lifecycle/c0;

    .line 6
    invoke-direct {p1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 9
    const-class v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    .line 21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 28
    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    .line 30
    new-instance v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V

    .line 35
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 38
    return-void
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    .line 11
    :cond_a
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch v0, :pswitch_data_2a

    .line 9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :pswitch_d  #0x7f0a0263
    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    .line 18
    goto :goto_29

    .line 19
    :pswitch_12  #0x7f0a0262
    const/4 p1, 0x4

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    .line 23
    goto :goto_29

    .line 24
    :pswitch_17  #0x7f0a0261
    const/4 p1, 0x3

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    .line 28
    goto :goto_29

    .line 29
    :pswitch_1c  #0x7f0a0260
    const/4 p1, 0x5

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    .line 33
    goto :goto_29

    .line 34
    :pswitch_21  #0x7f0a025f
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    .line 37
    goto :goto_29

    .line 38
    :pswitch_25  #0x7f0a025e
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->setCurrentFragment(I)V

    .line 42
    :goto_29
    return v1

    .line 43
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->onUserVisible(Z)V

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

.method public reverseEmptyViewState()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    .line 11
    :cond_a
    return-void
.end method

.method public setCurrentFragment(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->setCurrentFragment(I)V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->mIndex:I

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getParamsByPos(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "click_doc_tab"

    .line 12
    const-string v1, "page_category"

    .line 14
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    return-void
.end method
