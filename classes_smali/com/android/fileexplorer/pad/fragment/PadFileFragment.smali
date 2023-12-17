.class public Lcom/android/fileexplorer/pad/fragment/PadFileFragment;
.super Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;
.source "PadFileFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PadFileFragment"


# instance fields
.field private mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

.field private mVisibilityChanged:Z

.field private onResponsiveLayout:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 4
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadFileFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFileFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private postDelayLayout(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-boolean v1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    .line 7
    if-eqz v1, :cond_10

    .line 9
    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    .line 20
    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    const v0, 0x7f0802aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    return-void
.end method

.method private setOtherEntrySpanCount()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_54

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    if-eqz v0, :cond_54

    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v1, :cond_2f

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 33
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    .line 36
    move-result v0

    .line 37
    if-le v0, v2, :cond_2e

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 41
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    .line 44
    move-result v0

    .line 45
    sub-int/2addr v0, v2

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v0, v2

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 51
    move-result-object v1

    .line 52
    iget v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    .line 54
    invoke-static {v1, v3}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isLandFullLayout(Landroid/content/Context;I)Z

    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_48

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    move-result-object v1

    .line 64
    iget v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    .line 66
    invoke-static {v1, v3}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isPortFullLayout(Landroid/content/Context;I)Z

    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_48

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v2, v0

    .line 74
    :goto_49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    .line 76
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 82
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 85
    :cond_54
    return-void
.end method


# virtual methods
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

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d019d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_23

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 36
    :cond_23
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    const v1, 0x7f0a0062

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 55
    const/16 v3, 0x8

    .line 57
    if-eqz v1, :cond_3e

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    goto :goto_44

    .line 63
    :cond_3e
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->setListGridMode(Landroid/widget/ImageView;)V

    .line 69
    :goto_44
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    const v1, 0x7f0a0057

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_60

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$1;

    .line 91
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_60
    const v0, 0x7f0a0177

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v0, 0x7f0a01ca

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v0, 0x7f0a0176

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeChange(Lcom/android/fileexplorer/event/ActionModeChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f120520

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 6
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 16
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 22
    :cond_15
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->onResponsiveLayout:Z

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    if-eqz p1, :cond_17

    .line 11
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 13
    if-eqz p2, :cond_17

    .line 15
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 24
    :cond_17
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->setOtherEntrySpanCount()V

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 29
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initDecoration()V

    .line 37
    const-wide/16 p1, 0x96

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->postDelayLayout(J)V

    .line 42
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onResume()V

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

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onStop()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    .line 7
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onVisibilityChanged(Z)V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    .line 7
    if-eqz p1, :cond_14

    .line 9
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshFiles()V

    .line 12
    iget-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->onResponsiveLayout:Z

    .line 14
    if-eqz p1, :cond_14

    .line 16
    const-wide/16 v0, 0x96

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->postDelayLayout(J)V

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->onResponsiveLayout:Z

    .line 24
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
    const v1, 0x7f1101fe

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_24

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    .line 23
    if-eqz p1, :cond_1c

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    .line 29
    :cond_1c
    if-eqz p1, :cond_23

    .line 31
    const-wide/16 v0, 0x64

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->postDelayLayout(J)V

    .line 36
    :cond_23
    return-void

    .line 37
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getLogTag()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 43
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public updateStorageVolumes(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileEntryEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_f

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateStorageVolumes(Ljava/util/List;)V

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->setOtherEntrySpanCount()V

    .line 16
    :cond_f
    :goto_f
    return-void
.end method
