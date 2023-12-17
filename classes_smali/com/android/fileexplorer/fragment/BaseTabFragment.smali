.class public abstract Lcom/android/fileexplorer/fragment/BaseTabFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "BaseTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/BaseTabFragment$OnNotifyCallback;,
        Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;
    }
.end annotation


# instance fields
.field public mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

.field private mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field private mListGridView:Landroid/widget/ImageView;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

.field public mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

.field private myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/fragment/BaseTabFragment;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mListGridView:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/BaseTabFragment;Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->setListGridMode(Landroid/widget/ImageView;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/BaseTabFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->lambda$setListGridMode$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setListGridMode$0(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 9
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
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_15

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getCurrentIndex()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public getMyPagerAdapter()Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 3
    return-object v0
.end method

.method public abstract getPageTitles()[Ljava/lang/CharSequence;
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 1
    const v0, 0x7f0a0495

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ScrollControlViewPager;->setScrollEnabled(Z)V

    .line 16
    new-instance p1, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getFragments()Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getPageTitles()[Ljava/lang/CharSequence;

    .line 29
    move-result-object v2

    .line 30
    invoke-direct {p1, v0, v1, v2}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/CharSequence;)V

    .line 33
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 35
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    const v0, 0x7f0a0062

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/ImageView;

    .line 64
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mListGridView:Landroid/widget/ImageView;

    .line 66
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 70
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getCount()I

    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 77
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 81
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    .line 84
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 86
    new-instance v0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;

    .line 88
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;-><init>(Lcom/android/fileexplorer/fragment/BaseTabFragment;)V

    .line 91
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 94
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    .line 96
    new-instance v0, Lcom/android/fileexplorer/fragment/BaseTabFragment$2;

    .line 98
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$2;-><init>(Lcom/android/fileexplorer/fragment/BaseTabFragment;)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->setPrimaryChangeListener(Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;)V

    .line 104
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 6
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 16
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 22
    :cond_15
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onNewFolder()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNewFolder()V

    .line 8
    :cond_7
    return-void
.end method

.method public onSearch(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSearch(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public onShowSortMenu(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onShowSortMenu(Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 10
    if-eqz v1, :cond_e

    .line 12
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 15
    :cond_e
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortOrderChanged(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 10
    if-eqz v1, :cond_e

    .line 12
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz p1, :cond_b

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz p1, :cond_b

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewModeChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 10
    if-eqz v1, :cond_e

    .line 12
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onViewModeChanged(I)V

    .line 15
    :cond_e
    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewTypeChange(Landroid/widget/ImageView;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setCurrentFragment(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 9
    :cond_8
    return-void
.end method
