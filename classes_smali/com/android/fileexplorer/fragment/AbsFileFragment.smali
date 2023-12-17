.class public abstract Lcom/android/fileexplorer/fragment/AbsFileFragment;
.super Lcom/android/fileexplorer/fragment/AbsActionBarFragment;
.source "AbsFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;,
        Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field public static final EXT_SEARCH_ACTION:Ljava/lang/String; = "com.android.fileexplorer.search"

.field private static final KEY_LAST_STORAGE_PATH:Ljava/lang/String; = "last_storage_path"

.field public static final SAVED_EXTRA_PATH:Ljava/lang/String; = "extra_path"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mCurrentDeviceIndex:I

.field public mExtraPath:Ljava/lang/String;

.field public mFirstInFileAmount:I

.field public mForceMainSpace:Z

.field public mInitStorage:Z

.field private mInitStorageTask:Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

.field public mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

.field public mSearchFilePath:Ljava/lang/String;

.field public mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    return-void
.end method

.method private getDataPath()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1a

    return-object v1

    :cond_1a
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.mtp.documents"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    return-object v1

    :cond_27
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    return-object v1

    :cond_32
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.fileexplorer.search"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :cond_4b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, ".vcf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :cond_62
    return-object v2
.end method

.method private getDeviceIndex()I
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    const-string v2, "device_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_29
    return v0
.end method

.method private getExtraDirectory()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    const-string v2, "current_directory"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const-string v2, "explorer_path"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    return-object v1
.end method

.method private getLastStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method private initFabPreference()V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method

.method private setMtpDevice()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Getting root doc"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/mtp/MTPManager;->getRootDoc()Lcom/android/fileexplorer/mtp/DocumentInfo;

    move-result-object v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "root doc is null!"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1100ef

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2f
    return-void

    :cond_30
    iget-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    const-string v2, "permission_denial"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const v0, 0x7f110348

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_4d
    return-void

    :cond_4e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "generate storage info:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    iget-object v2, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-void
.end method

.method private setUsbDevice()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getUSBStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v0, :cond_1f

    const v0, 0x7f11014b

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public checkValid()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public doInitStorage()V
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getExtraPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_15
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    :goto_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInitStorage path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x2

    if-nez v2, :cond_9a

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    if-eqz v2, :cond_51

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iput v3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    goto :goto_b6

    :cond_4e
    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    goto :goto_b6

    :cond_51
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_85

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_85

    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mounted"

    invoke-direct {v1, v3, v2, v5}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mForceMainSpace:Z

    :cond_85
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v1, :cond_b6

    const-string v1, ""

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    goto :goto_b6

    :cond_9a
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getDeviceIndex()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const/16 v2, 0xc

    if-ne v2, v1, :cond_a8

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->setMtpDevice()V

    return-void

    :cond_a8
    if-ne v3, v1, :cond_ae

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->setUsbDevice()V

    goto :goto_b6

    :cond_ae
    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getLastStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    :cond_b6
    :goto_b6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v1, :cond_d1

    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v1, :cond_d1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doInitStorage: mStorageInfo is null."

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doInitStorage: end"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_initStorage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    return-void
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getExtraDirectory()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final getLastSelectedVolumePath()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_storage_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleInitStorageResult()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleInitStorageResult: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleInitStorageResult: mStorageInfo is null, finish."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1100ef

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    return-void
.end method

.method public initStorage()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;-><init>(Lcom/android/fileexplorer/fragment/AbsFileFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorageTask:Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initFileFragmentActionBar(Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;)V

    return-void
.end method

.method public isPickMultipleMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isViewMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    const-string v1, "extra_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, ""

    :cond_14
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/service/DirParseSDK;->getInstance()Lcom/android/fileexplorer/service/DirParseSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    if-eqz p1, :cond_3c

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    goto :goto_4c

    :cond_3c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    move-result p1

    if-eqz p1, :cond_46

    const p1, 0x7f120522

    goto :goto_49

    :cond_46
    const p1, 0x7f120523

    :goto_49
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    :goto_4c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initStorage()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    :cond_27
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyView: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorageTask:Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DirParseSDK;->close()V

    return-void
.end method

.method public abstract onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    invoke-virtual {p3}, Lcom/android/fileexplorer/service/DirParseSDK;->init()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLayoutRes()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initFabPreference()V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public final setLastSelectedVolumePath()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_storage_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2c
    :goto_2c
    return-void
.end method
