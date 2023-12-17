.class public abstract Lcom/android/fileexplorer/FoldScreenFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "FoldScreenFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
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

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->hasActionBar()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_69

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0x8

    .line 21
    if-eqz v1, :cond_3d

    .line 23
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    const v4, 0x7f0a00a9

    .line 30
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_3d

    .line 36
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->showBackView()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_39

    .line 50
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->controlBackViewDisplay()Z

    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_39

    .line 56
    move v4, v2

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v4, v3

    .line 59
    :goto_3a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_3d
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_69

    .line 68
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 71
    move-result-object v1

    .line 72
    const v4, 0x7f0a0074

    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_69

    .line 81
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->showSearchView()Z

    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_65

    .line 95
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->controlSearchDisplay()Z

    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_65

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    move v2, v3

    .line 103
    :goto_66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_69
    return-void
.end method

.method public ignoreFoldScreenFragmentActions()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public interceptBackPress()Z
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
    if-nez v0, :cond_f

    .line 11
    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isToBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isWidgetModeActivity()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;

    .line 7
    return v0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->ignoreFoldScreenFragmentActions()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_c

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    .line 13
    :cond_c
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_e

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->ignoreFoldScreenFragmentActions()Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_e

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    .line 15
    :cond_e
    return-void
.end method

.method public showBackView()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isToBack()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1b

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1b

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 29
    :goto_1c
    return v0
.end method

.method public showSearchView()Z
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
