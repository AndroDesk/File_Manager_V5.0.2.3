.class public Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;
.source "PadDocCategoryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadDocCategoryFragment"


# instance fields
.field private mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    return-void
.end method

.method private handleActionBar()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032d3f

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->isToBack()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    goto :goto_2d

    :cond_2b
    const/16 v1, 0x8

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    return-void
.end method

.method private initActionBar()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->isToBack()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    :cond_27
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

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->setListGridMode(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isToBack()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 3

    const v0, 0x7f0802aa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->initActionBar()V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->handleActionBar()V

    return-void
.end method

.method public interceptBackPress()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->isToBack()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->handleActionBar()V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->initActionBar()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->handleActionBar()V

    :cond_8
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f110066

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    :cond_10
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->updatePreference()V

    return-void
.end method

.method public updatePreference()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseTabFragment;->getCurrentCategoryKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method
