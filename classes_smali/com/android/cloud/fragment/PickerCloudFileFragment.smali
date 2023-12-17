.class public Lcom/android/cloud/fragment/PickerCloudFileFragment;
.super Lcom/android/cloud/fragment/CloudFileFragment;
.source "PickerCloudFileFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PickerCloudFileFragment"


# instance fields
.field private mFileOpPresenter:Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudFileFragment;-><init>()V

    .line 4
    return-void
.end method

.method private needPopupFragment()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2c

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_2c

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    move v2, v1

    .line 23
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2c

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 35
    instance-of v3, v3, Lcom/android/cloud/fragment/PickerCloudFileFragment;

    .line 37
    if-eqz v3, :cond_28

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 41
    :cond_28
    const/4 v3, 0x1

    .line 42
    if-le v2, v3, :cond_16

    .line 44
    return v3

    .line 45
    :cond_2c
    return v1
.end method

.method private updateTitle()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_58

    .line 22
    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 24
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_58

    .line 30
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_53

    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq v2, v3, :cond_27

    .line 39
    goto :goto_58

    .line 40
    :cond_27
    if-eqz v1, :cond_4c

    .line 42
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_37

    .line 52
    const v1, 0x7f11029a

    .line 55
    goto :goto_48

    .line 56
    :cond_37
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isFromCloudToLocal()Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_45

    .line 66
    const v1, 0x7f1100d2

    .line 69
    goto :goto_48

    .line 70
    :cond_45
    const v1, 0x7f1100f3

    .line 73
    :goto_48
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 76
    goto :goto_58

    .line 77
    :cond_4c
    const v1, 0x7f110362

    .line 80
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 83
    goto :goto_58

    .line 84
    :cond_53
    const-string v1, " "

    .line 86
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "title"

    .line 13
    const-string v2, ""

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "android.intent.action.VIEW"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 25
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->setAdapter(Z)V

    .line 36
    return-void
.end method

.method public cancelOperation()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->needPopupFragment()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Landroidx/fragment/app/a;

    .line 16
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 19
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 22
    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    .line 25
    goto :goto_24

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 28
    if-eqz v0, :cond_24

    .line 30
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 37
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 8
    if-eqz v1, :cond_27

    .line 10
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_27

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 32
    invoke-virtual {v2}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_11

    .line 40
    :cond_27
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isPickFolderMode()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_42

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_42

    .line 52
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 54
    invoke-virtual {v1}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_42
    return-object v0
.end method

.method public initActionBar()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/cloud/fragment/CloudFileFragment;->initActionBar()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-direct {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->updateTitle()V

    .line 18
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->initView(Landroid/view/View;)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 6
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 11
    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 22
    return-void
.end method

.method public isPickFolderMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isViewMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onBack()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

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
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 11
    if-eqz v0, :cond_1a

    .line 13
    invoke-virtual {v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onBackPressed()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1a

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 26
    return v1

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudFileFragment;->mPathGalleryHelper:Lcom/android/cloud/util/helper/CloudPathGalleryHelper;

    .line 29
    if-nez v0, :cond_30

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v0

    .line 35
    instance-of v0, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 37
    if-eqz v0, :cond_2e

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 46
    return v1

    .line 47
    :cond_2e
    const/4 v0, 0x0

    .line 48
    return v0

    .line 49
    :cond_30
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011f

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mCloudFileManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 12
    iput-object p1, p0, Lcom/android/cloud/fragment/PickerCloudFileFragment;->mFileOpPresenter:Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;

    .line 14
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_17

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    move-result-object v0

    .line 19
    const/high16 v1, 0x8000000

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f0e0004

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 34
    const v0, 0x7f0a03ad

    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-interface {v0, v1, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 50
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 52
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v1

    .line 60
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    .line 63
    move-result v3

    .line 64
    if-ge v1, v3, :cond_48

    .line 66
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 75
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    move-result-object v0

    .line 83
    const-string v1, "pick_button_name"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_68

    .line 95
    const v1, 0x7f0a0319

    .line 98
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 105
    :cond_68
    return v2
.end method

.method public onDestroyOptionsMenu()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object v0

    .line 22
    const/high16 v1, 0x8000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    :cond_1a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    sparse-switch p1, :sswitch_data_44

    .line 9
    return v0

    .line 10
    :sswitch_9
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_29

    .line 20
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->getCheckedPaths()Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_29

    .line 30
    iget-object v1, p0, Lcom/android/cloud/fragment/PickerCloudFileFragment;->mFileOpPresenter:Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 39
    invoke-interface {v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;->requestMoveOrCopy(Ljava/lang/String;)V

    .line 42
    :cond_29
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->backToViewMode()V

    .line 45
    return v0

    .line 46
    :sswitch_2d
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 53
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->cancelOperation()V

    .line 56
    return v0

    .line 57
    :sswitch_38
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 59
    if-eqz p1, :cond_43

    .line 61
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 68
    :cond_43
    return v0

    .line 69
    :sswitch_data_44
    .sparse-switch
        0x102002c -> :sswitch_38
        0x7f0a0306 -> :sswitch_2d
        0x7f0a0307 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 15

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 7
    move-result v0

    .line 8
    if-gtz v0, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 13
    :cond_c
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_126

    .line 19
    const-string v0, "currentModeType: "

    .line 21
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->getModeType()I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "PickerCloudFileFragment"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isPickFolderMode()Z

    .line 44
    move-result v0

    .line 45
    const v2, 0x7f0a02dc

    .line 48
    const v3, 0x7f0a03ad

    .line 51
    const v4, 0x7f0a01f1

    .line 54
    const v5, 0x7f0a0318

    .line 57
    const v6, 0x7f0a0124

    .line 60
    const v7, 0x7f0a0125

    .line 63
    const v8, 0x7f0a0306

    .line 66
    const/4 v9, 0x1

    .line 67
    const v10, 0x7f0a0319

    .line 70
    const v11, 0x7f0a0307

    .line 73
    const/4 v12, 0x0

    .line 74
    if-eqz v0, :cond_97

    .line 76
    const-string v0, "currentMode: PickFolderMode"

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 88
    move-result v0

    .line 89
    invoke-static {p1, v11, v0, v8, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 92
    if-eqz v0, :cond_7b

    .line 94
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7b

    .line 104
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 107
    move-result-object v0

    .line 108
    const v1, 0x7f11030c

    .line 111
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 114
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 117
    move-result-object v0

    .line 118
    const v1, 0x7f08024e

    .line 121
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 124
    :cond_7b
    invoke-static {p1, v7, v12, v6, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 127
    invoke-static {p1, v10, v12, v5, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 130
    invoke-static {p1, v4, v12, v3, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 133
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 151
    goto :goto_e5

    .line 152
    :cond_97
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isViewMode()Z

    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_cc

    .line 158
    const-string v0, "currentMode: viewMode"

    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    invoke-static {p1, v7, v12, v6, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 180
    invoke-static {p1, v10, v12, v5, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 183
    invoke-static {p1, v4, v12, v3, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 186
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 189
    move-result-object v0

    .line 190
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 204
    goto :goto_e5

    .line 205
    :cond_cc
    const-string v0, "currentMode: unknown"

    .line 207
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 213
    move-result-object v0

    .line 214
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 220
    move-result-object v0

    .line 221
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    invoke-static {p1, v7, v12, v6, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 227
    invoke-static {p1, v10, v9, v5, v9}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 230
    :goto_e5
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 233
    move-result-object v0

    .line 234
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode()I

    .line 237
    move-result v1

    .line 238
    if-ne v1, v9, :cond_f3

    .line 240
    const v1, 0x7f110209

    .line 243
    goto :goto_f6

    .line 244
    :cond_f3
    const v1, 0x7f1101d3

    .line 247
    :goto_f6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 250
    const v0, 0x7f0a039c

    .line 253
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 256
    move-result-object v0

    .line 257
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 260
    const v0, 0x7f0a039d

    .line 263
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->getCheckedPaths()Ljava/util/List;

    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_123

    .line 284
    invoke-virtual {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->isPickFolderMode()Z

    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_122

    .line 290
    goto :goto_123

    .line 291
    :cond_122
    move v9, v12

    .line 292
    :cond_123
    :goto_123
    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 295
    :cond_126
    return-void
.end method

.method public setAdapter(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->setAdapter(Z)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 7
    invoke-direct {p0}, Lcom/android/cloud/fragment/PickerCloudFileFragment;->updateTitle()V

    .line 10
    return-void
.end method

.method public showLoading(ZI)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 11
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 14
    :goto_d
    return-void
.end method

.method public showToast(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    return-void
.end method

.method public updateChoiceItems()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 4
    return-void
.end method
