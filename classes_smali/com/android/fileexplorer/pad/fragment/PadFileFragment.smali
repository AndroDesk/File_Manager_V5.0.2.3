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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadFileFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFileFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private postDelayLayout(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    if-eqz v1, :cond_10

    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 3

    const v0, 0x7f0802aa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$3;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOtherEntrySpanCount()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_54

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    move-result v0

    if-le v0, v2, :cond_2e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_2f

    :cond_2e
    move v0, v2

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    invoke-static {v1, v3}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isLandFullLayout(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    invoke-static {v1, v3}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isPortFullLayout(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_49

    :cond_48
    move v2, v0

    :goto_49
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryRv:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_54
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d019d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    :cond_23
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

    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_42

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_48

    :cond_42
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->setListGridMode(Landroid/widget/ImageView;)V

    :goto_48
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032dc1

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadFileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_68
    const v0, 0x7f032ce1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032c5c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032ce0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

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

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120520

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    :cond_15
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->onResponsiveLayout:Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_17

    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_17

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_17
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->setOtherEntrySpanCount()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initDecoration()V

    const-wide/16 p1, 0x96

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->postDelayLayout(J)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onResume()V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    :cond_10
    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->onVisibilityChanged(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->mVisibilityChanged:Z

    if-eqz p1, :cond_14

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->refreshFiles()V

    iget-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->onResponsiveLayout:Z

    if-eqz p1, :cond_14

    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->postDelayLayout(J)V

    :cond_14
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->onResponsiveLayout:Z

    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1101fe

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    :cond_10
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_24

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->setLayoutManager(Z)V

    :cond_1c
    if-eqz p1, :cond_23

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->postDelayLayout(J)V

    :cond_23
    return-void

    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setAdapter: activity is null or mFileListView is null."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateStorageVolumes(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;->setOtherEntrySpanCount()V

    :cond_f
    :goto_f
    return-void
.end method
