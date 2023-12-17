.class public Lcom/android/fileexplorer/fragment/ExportFileFragment;
.super Lcom/android/fileexplorer/fragment/FileFragment;
.source "ExportFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/ExportFileFragment$DeCompressTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExportFileFragment"


# instance fields
.field private mSelectAllBtn:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;-><init>()V

    return-void
.end method

.method private showBackView(Z)Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private updateTitle()V
    .registers 8

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_13a

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    move-result v1

    if-nez v1, :cond_13a

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTitle mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExportFileFragment"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_95

    if-eq v1, v4, :cond_8d

    if-eq v1, v3, :cond_49

    const/4 v0, 0x3

    if-eq v1, v0, :cond_44

    const/4 v0, 0x4

    if-eq v1, v0, :cond_44

    goto/16 :goto_13a

    :cond_44
    invoke-virtual {p0, v5}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateMultiChoiceModeTitle(I)V

    goto/16 :goto_13a

    :cond_49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_53
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v1

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    move-result v2

    if-eqz v1, :cond_7b

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_73

    const v1, 0x7f11029a

    goto :goto_76

    :cond_73
    const v1, 0x7f1100f3

    :goto_76
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto/16 :goto_13a

    :cond_7b
    if-eqz v2, :cond_85

    const v1, 0x7f110110

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto/16 :goto_13a

    :cond_85
    const v1, 0x7f110362

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto/16 :goto_13a

    :cond_8d
    const v1, 0x7f110361

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto/16 :goto_13a

    :cond_95
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    iget v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const-string v6, " "

    if-eq v1, v3, :cond_df

    const/16 v2, 0xc

    if-eq v1, v2, :cond_d8

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_aa

    goto/16 :goto_13a

    :cond_aa
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1829f5

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    move-result v2

    if-eqz v2, :cond_c7

    move-object v6, v1

    :cond_c7
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    goto :goto_13a

    :cond_d1
    const v1, 0x7f11022a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto :goto_13a

    :cond_d8
    const v1, 0x7f11029d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    goto :goto_13a

    :cond_df
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isXspace()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182cc2

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_103

    :cond_102
    const/4 v1, 0x0

    :goto_103
    move-object v2, v1

    goto :goto_124

    :cond_105
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v1, :cond_124

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182992

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_124
    :goto_124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    goto :goto_13a

    :cond_137
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_13a
    :goto_13a
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->backToViewMode()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->initActionBar()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isShowFab()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->checkIfShowFabMenuLayout(Z)V

    :cond_13
    return-void
.end method

.method public cancelOperation()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_b
    return-void
.end method

.method public getCheckedPaths()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    move-result-object v0

    goto :goto_e

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isPickFolderMode()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
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

    const v0, 0x7f0d00a9

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f4e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionBar()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isNotInternalVolume()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isXspace()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_19
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    :cond_20
    return-void
.end method

.method public initActionBar()V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isPickMultipleMode()Z

    move-result v2

    if-eqz v2, :cond_78

    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0801dd

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v3, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;-><init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f182f7f

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    const v4, 0x7f0801de

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;-><init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f182d89

    invoke-static {v5}, Lnp/NPFog;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_78
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->initActionBar()V

    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f4e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method public isNotInternalVolume()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isPickFolderMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public onBack()Z
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12011f

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_9e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getCheckedPaths()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onPickFiles(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    return v2

    :sswitch_22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->doPickCancel(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    return v2

    :sswitch_31
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getCheckedPaths()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;I)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    :cond_5b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->backToViewMode()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    :cond_61
    return v2

    :sswitch_62
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->cancelOperation()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    return v2

    :sswitch_70
    new-instance p1, Lcom/android/fileexplorer/fragment/ExportFileFragment$DeCompressTask;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment$DeCompressTask;-><init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    return v2

    :sswitch_82
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->cancelOperation()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    return v2

    :sswitch_91
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p1, :cond_9c

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_9c
    return v2

    nop

    :sswitch_data_9e
    .sparse-switch
        0x102002c -> :sswitch_91
        0x7f0a0124 -> :sswitch_82
        0x7f0a0125 -> :sswitch_70
        0x7f0a0306 -> :sswitch_62
        0x7f0a0307 -> :sswitch_31
        0x7f0a0318 -> :sswitch_22
        0x7f0a0319 -> :sswitch_15
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 16

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v0, "ExportFileFragment"

    const-string v1, "onPrepare option menu."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-gtz v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_13
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    if-eqz v0, :cond_117

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isPickFolderMode()Z

    move-result v0

    const v1, 0x7f0a02dc

    const v2, 0x7f0a03ad

    const v3, 0x7f0a01f1

    const v4, 0x7f0a0318

    const v5, 0x7f0a0124

    const v6, 0x7f0a0125

    const v7, 0x7f0a0306

    const v8, 0x7f0a0319

    const v9, 0x7f0a0307

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_a8

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v0

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    move-result v12

    invoke-static {p1, v9, v0, v7, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v13, 0x7f11030c

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v9, 0x7f08024e

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_73
    invoke-static {p1, v6, v12, v5, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_80

    if-nez v12, :cond_80

    move v6, v10

    goto :goto_81

    :cond_80
    move v6, v11

    :goto_81
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_8e

    if-nez v12, :cond_8e

    move v0, v10

    goto :goto_8f

    :cond_8e
    move v0, v11

    :goto_8f
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {p1, v2, v11, v1, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d6

    :cond_a8
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-static {p1, v9, v11, v7, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v6, v11, v5, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v8, v11, v4, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v3, v11, v2, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d6

    :cond_cd
    invoke-static {p1, v9, v11, v7, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v6, v11, v5, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    invoke-static {p1, v8, v10, v4, v10}, La/a;->s(Landroid/view/Menu;IZIZ)V

    :goto_d6
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode()I

    move-result v1

    if-ne v1, v10, :cond_e4

    const v1, 0x7f110209

    goto :goto_e7

    :cond_e4
    const v1, 0x7f1101d3

    :goto_e7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v0, 0x7f0a039c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a039d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getCheckedPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_114

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isPickFolderMode()Z

    move-result v0

    if-eqz v0, :cond_113

    goto :goto_114

    :cond_113
    move v10, v11

    :cond_114
    :goto_114
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_117
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_23

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz p1, :cond_23

    check-cast p1, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_23
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object p1

    const p2, 0x7f0d006c

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initDecoration()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->onResume()V

    return-void
.end method

.method public setAdapter(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->setAdapter(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    return-void
.end method

.method public showBackView()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isXspace()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isNotInternalVolume()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView(Z)Z

    move-result v0

    return v0
.end method

.method public updateChoiceItems()V
    .registers 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateMultiChoiceModeTitle(I)V

    return-void
.end method

.method public updateMultiChoiceModeTitle(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleNoFolderMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_18
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    const v1, 0x7f0801de

    if-nez p1, :cond_36

    const p1, 0x7f11025d

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_73

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_73

    :cond_36
    const v2, 0x7f0f0021

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCheckedAll()Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_59

    const v3, 0x7f11001e

    goto :goto_60

    :cond_59
    const v3, 0x7f182d89

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    :goto_60
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_73

    if-eqz p1, :cond_70

    const v1, 0x7f0801e8

    :cond_70
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_73
    :goto_73
    return-void
.end method
