.class public Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;
.super Lcom/android/fileexplorer/fragment/ExportFileFragment;
.source "PadFileDetailFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadFileDetailFragment"


# instance fields
.field private mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

.field private onVisibilityChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 4
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;-><init>()V

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
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$3;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$3;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public controlBackViewDisplay()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public controlSearchDisplay()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    const-string v1, "current_directory"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "current_directory_file_amount"

    .line 15
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mFirstInFileAmount:I

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const-string v1, ""

    .line 24
    :goto_17
    return-object v1
.end method

.method public getMarginSide()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    const v0, 0x7f0707c7

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getMarginSide()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    return v0
.end method

.method public handleInitStorageResult()V
    .registers 5

    .line 1
    const-string v0, "handleInitStorageResult onVisibilityChanged: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->onVisibilityChanged:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "PadFileDetailFragment"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->handleInitStorageResult()V

    .line 24
    iget-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->onVisibilityChanged:Z

    .line 26
    if-nez v0, :cond_1c

    .line 28
    goto :goto_40

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 31
    if-eqz v0, :cond_3a

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 35
    if-eqz v0, :cond_3a

    .line 37
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 39
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 41
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 47
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :goto_40
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->initView(Landroid/view/View;)V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isToBack()Z

    .line 22
    move-result v1

    .line 23
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2d

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    const v0, 0x7f0a0057

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    const v1, 0x7f0a0062

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/ImageView;

    .line 78
    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 80
    const/16 v2, 0x8

    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz v1, :cond_58

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    goto :goto_5e

    .line 89
    :cond_58
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->setListGridMode(Landroid/widget/ImageView;)V

    .line 95
    :goto_5e
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$1;

    .line 103
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 116
    move-result-object p1

    .line 117
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$2;

    .line 119
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 132
    move-result-object p1

    .line 133
    const v0, 0x7f0a00a9

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 150
    move-result-object p1

    .line 151
    const v0, 0x7f0a0074

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x0

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

.method public onBack()Z
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->onBack()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 19
    if-eq v0, v2, :cond_22

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isXspace()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_22

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_22

    .line 33
    const/4 v0, 0x0

    .line 34
    return v0

    .line 35
    :cond_22
    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    .line 38
    return v1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 6
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 16
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 22
    :cond_15
    return-void
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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 11
    if-eqz p1, :cond_f

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 16
    :cond_f
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    if-eqz v1, :cond_37

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 44
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemCount()I

    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 56
    :cond_37
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->onBack()Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->exitActionMode()Z

    .line 4
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->onResume()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_10

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 17
    :cond_10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_12

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    const-string p2, " "

    .line 16
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 19
    :cond_12
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/FoldScreenFragment;->onVisibilityChanged(Z)V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->onVisibilityChanged:Z

    .line 7
    if-eqz p1, :cond_f

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initStorage()V

    .line 15
    goto :goto_20

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 28
    const/16 v0, 0x8

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :goto_20
    return-void
.end method
