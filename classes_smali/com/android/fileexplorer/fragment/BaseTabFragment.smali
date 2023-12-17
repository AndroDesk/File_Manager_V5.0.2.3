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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/fragment/BaseTabFragment;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/BaseTabFragment;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mListGridView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/BaseTabFragment;Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->setListGridMode(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/BaseTabFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->lambda$setListGridMode$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setListGridMode$0(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0802aa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/android/cloud/fragment/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentIndex()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    return-object v0
.end method

.method public abstract getPageTitles()[Ljava/lang/CharSequence;
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f032903

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/ScrollControlViewPager;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ScrollControlViewPager;->setScrollEnabled(Z)V

    new-instance p1, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getPageTitles()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f032df4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mListGridView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    new-instance v0, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$1;-><init>(Lcom/android/fileexplorer/fragment/BaseTabFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->myPagerAdapter:Lcom/android/fileexplorer/fragment/BaseTabFragment$MyPagerAdapter;

    new-instance v0, Lcom/android/fileexplorer/fragment/BaseTabFragment$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment$2;-><init>(Lcom/android/fileexplorer/fragment/BaseTabFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->setPrimaryChangeListener(Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;)V

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public onBack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    :cond_15
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onNewFolder()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNewFolder()V

    :cond_7
    return-void
.end method

.method public onSearch(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSearch(I)V

    :cond_7
    return-void
.end method

.method public onShowSortMenu(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onShowSortMenu(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v1, :cond_e

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    :cond_e
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortOrderChanged(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v1, :cond_e

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    :cond_e
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_b
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_b
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewModeChanged(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v1, :cond_e

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onViewModeChanged(I)V

    :cond_e
    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewTypeChange(Landroid/widget/ImageView;)V

    :cond_7
    return-void
.end method

.method public setCurrentFragment(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseTabFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_8
    return-void
.end method
