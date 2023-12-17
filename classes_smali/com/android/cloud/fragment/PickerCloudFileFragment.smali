.class public Lcom/android/cloud/fragment/PickerCloudFileFragment;
.super Lcom/android/cloud/fragment/CloudFileFragment;
.source "PickerCloudFileFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PickerCloudFileFragment"


# instance fields
.field private mFileOpPresenter:Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudFileFragment;-><init>()V

    return-void
.end method

.method private needPopupFragment()Z
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    instance-of v3, v3, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    if-eqz v3, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    return v3

    :cond_2c
    return v1
.end method

.method private updateTitle()V
    .registers 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    move-result v2

    if-nez v2, :cond_58

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    move-result v2

    if-eqz v2, :cond_53

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    goto :goto_58

    :cond_27
    if-eqz v1, :cond_4c

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_37

    const v1, 0x7f11029a

    goto :goto_48

    :cond_37
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isFromCloudToLocal()Z

    move-result v1

    if-eqz v1, :cond_45

    const v1, 0x7f1100d2

    goto :goto_48

    :cond_45
    const v1, 0x7f1100f3

    :goto_48
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto :goto_58

    :cond_4c
    const v1, 0x7f110362

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto :goto_58

    :cond_53
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->setAdapter(Z)V

    return-void
.end method

.method public cancelOperation()V
    .registers 3

    invoke-direct {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->needPopupFragment()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    goto :goto_24

    :cond_19
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_24
    :goto_24
    return-void
.end method

.method public getCheckedPaths()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v2}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isPickFolderMode()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    invoke-virtual {v1}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    return-object v0
.end method

.method public initActionBar()V
    .registers 2

    invoke-super {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->initActionBar()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->updateTitle()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->initView(Landroid/view/View;)V

    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method public isPickFolderMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isViewMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    move-result v0

    return v0
.end method

.method public onBack()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_1a
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_2e
    const/4 v0, 0x0

    return v0

    :cond_30
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12011f

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iput-object p1, p0, Lcom/android/cloud/fragment/PickerCloudFileFragment;->mFileOpPresenter:Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a03ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v1, v3, :cond_48

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_48
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pick_button_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    const v1, 0x7f0a0319

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_68
    return v2
.end method

.method public onDestroyOptionsMenu()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_44

    return v0

    :sswitch_9
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->getCheckedPaths()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/cloud/fragment/PickerCloudFileFragment;->mFileOpPresenter:Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;->requestMoveOrCopy(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->backToViewMode()V

    return v0

    :sswitch_2d
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->cancelOperation()V

    return v0

    :sswitch_38
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p1, :cond_43

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_43
    return v0

    :sswitch_data_44
    .sparse-switch
        0x102002c -> :sswitch_38
        0x7f0a0306 -> :sswitch_2d
        0x7f0a0307 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 15

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_c
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-eqz v0, :cond_126

    const-string v0, "currentModeType: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerCloudFileFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isPickFolderMode()Z

    move-result v0

    const v2, 0x7f0a02dc

    const v3, 0x7f0a03ad

    const v4, 0x7f0a01f1

    const v5, 0x7f0a0318

    const v6, 0x7f0a0124

    const v7, 0x7f0a0125

    const v8, 0x7f0a0306

    const/4 v9, 0x1

    const v10, 0x7f0a0319

    const v11, 0x7f0a0307

    const/4 v12, 0x0

    if-eqz v0, :cond_97

    const-string v0, "currentMode: PickFolderMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v0

    invoke-static {p1, v11, v0, v8, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    if-eqz v0, :cond_7b

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f11030c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08024e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_7b
    invoke-static {p1, v7, v12, v6, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v10, v12, v5, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v4, v12, v3, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e5

    :cond_97
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isViewMode()Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "currentMode: viewMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {p1, v7, v12, v6, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v10, v12, v5, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v4, v12, v3, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e5

    :cond_cc
    const-string v0, "currentMode: unknown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {p1, v7, v12, v6, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v10, v9, v5, v9}, La/a;->s(Landroid/view/Menu;IZIZ)V

    :goto_e5
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode()I

    move-result v1

    if-ne v1, v9, :cond_f3

    const v1, 0x7f110209

    goto :goto_f6

    :cond_f3
    const v1, 0x7f1101d3

    :goto_f6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v0, 0x7f0a039c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a039d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->getCheckedPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isPickFolderMode()Z

    move-result v0

    if-eqz v0, :cond_122

    goto :goto_123

    :cond_122
    move v9, v12

    :cond_123
    :goto_123
    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_126
    return-void
.end method

.method public setAdapter(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    invoke-direct {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->updateTitle()V

    return-void
.end method

.method public showLoading(ZI)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    :goto_d
    return-void
.end method

.method public showToast(I)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateChoiceItems()V
    .registers 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    return-void
.end method
