.class public Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;
.source "PadDocCategoryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadDocCategoryFragment"


# instance fields
.field private mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 4
    return-void
.end method

.method private handleActionBar()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2c

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2c

    .line 17
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f0a00a9

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->isToBack()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_27

    .line 38
    const/4 v1, 0x0

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    const/16 v1, 0x8

    .line 42
    :goto_29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_2c
    return-void
.end method

.method private initActionBar()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->isToBack()Z

    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_27

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 40
    :cond_27
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    const v1, 0x7f0a0062

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->setListGridMode(Landroid/widget/ImageView;)V

    .line 60
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$1;

    .line 70
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private isToBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    const v0, 0x7f0802aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$2;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->initActionBar()V

    .line 4
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->initView(Landroid/view/View;)V

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->handleActionBar()V

    .line 10
    return-void
.end method

.method public interceptBackPress()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->isToBack()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->handleActionBar()V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->initActionBar()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->handleActionBar()V

    .line 9
    :cond_8
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f110066

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->updatePreference()V

    .line 4
    return-void
.end method

.method public updatePreference()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 22
    return-void
.end method
