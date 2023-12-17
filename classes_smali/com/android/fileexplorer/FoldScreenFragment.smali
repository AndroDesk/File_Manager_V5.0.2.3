.class public abstract Lcom/android/fileexplorer/FoldScreenFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "FoldScreenFragment.java"


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


# virtual methods
.method public controlBackViewDisplay()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public controlSearchDisplay()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public handleActionBar()V
    .registers 6

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f032d3f

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->showBackView()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->controlBackViewDisplay()Z

    move-result v4

    if-eqz v4, :cond_3d

    move v4, v2

    goto :goto_3e

    :cond_3d
    move v4, v3

    :goto_3e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_41
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f032de2

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->showSearchView()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->controlSearchDisplay()Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v3

    :goto_6e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_71
    return-void
.end method

.method public ignoreFoldScreenFragmentActions()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public interceptBackPress()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isToBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isWidgetModeActivity()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;

    return v0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->ignoreFoldScreenFragmentActions()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    :cond_c
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->ignoreFoldScreenFragmentActions()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    :cond_e
    return-void
.end method

.method public showBackView()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isToBack()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public showSearchView()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
