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

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    .line 11
    return-void
.end method

.method private getDataPath()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-object v1

    .line 20
    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1a

    .line 26
    return-object v1

    .line 27
    :cond_1a
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    const-string v4, "com.android.mtp.documents"

    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_27

    .line 39
    return-object v1

    .line 40
    :cond_27
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_32

    .line 50
    return-object v1

    .line 51
    :cond_32
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    const-string v1, "com.android.fileexplorer.search"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4b

    .line 63
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/io/File;

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    .line 69
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    :cond_4b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_62

    .line 82
    const-string v0, ".vcf"

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_62

    .line 90
    new-instance v0, Ljava/io/File;

    .line 92
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    :cond_62
    return-object v2
.end method

.method private getDeviceIndex()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    const-string v2, "device_index"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result v0

    .line 26
    if-ne v0, v1, :cond_29

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_29

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result v0

    .line 42
    :cond_29
    return v0
.end method

.method private getExtraDirectory()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-object v1

    .line 20
    :cond_13
    const-string v2, "current_directory"

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_20

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    const-string v2, "explorer_path"

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2d

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_2d
    return-object v1
.end method

.method private getLastStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_12

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    return-object v0
.end method

.method private initFabPreference()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 17
    return-void
.end method

.method private setMtpDevice()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Getting root doc"

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/mtp/MTPManager;->getRootDoc()Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_30

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "root doc is null!"

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const v0, 0x7f1100ef

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 37
    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 39
    if-eqz v1, :cond_2f

    .line 41
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 48
    :cond_2f
    return-void

    .line 49
    :cond_30
    iget-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 51
    const-string v2, "permission_denial"

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4e

    .line 59
    const v0, 0x7f110348

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 67
    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 69
    if-eqz v1, :cond_4d

    .line 71
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 78
    :cond_4d
    return-void

    .line 79
    :cond_4e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    const-string v2, "generate storage info:"

    .line 85
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v2

    .line 89
    iget-object v3, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, " "

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v3, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 113
    iget-object v2, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 115
    iget-object v0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 117
    const-string v3, ""

    .line 119
    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 124
    return-void
.end method

.method private setUsbDevice()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getUSBStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    if-nez v0, :cond_1f

    .line 13
    const v0, 0x7f11014b

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 21
    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 23
    if-eqz v1, :cond_1f

    .line 25
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 32
    :cond_1f
    return-void
.end method


# virtual methods
.method public checkValid()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public doInitStorage()V
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_15

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getExtraPath()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 24
    :goto_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v4, "doInitStorage path:"

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x7

    .line 53
    const/4 v4, 0x2

    .line 54
    if-nez v2, :cond_9a

    .line 56
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_51

    .line 64
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 66
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4e

    .line 76
    iput v3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 78
    goto :goto_b6

    .line 79
    :cond_4e
    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 81
    goto :goto_b6

    .line 82
    :cond_51
    new-instance v2, Ljava/io/File;

    .line 84
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 89
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 92
    move-result v1

    .line 93
    const/4 v3, 0x3

    .line 94
    if-ne v1, v3, :cond_85

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_85

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_85

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_85

    .line 114
    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    const-string v5, "mounted"

    .line 126
    invoke-direct {v1, v3, v2, v5}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 131
    const/4 v1, 0x1

    .line 132
    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mForceMainSpace:Z

    .line 134
    :cond_85
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 136
    if-nez v1, :cond_b6

    .line 138
    const-string v1, ""

    .line 140
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 142
    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 144
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 151
    move-result-object v1

    .line 152
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 154
    goto :goto_b6

    .line 155
    :cond_9a
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getDeviceIndex()I

    .line 158
    move-result v1

    .line 159
    iput v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 161
    const/16 v2, 0xc

    .line 163
    if-ne v2, v1, :cond_a8

    .line 165
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->setMtpDevice()V

    .line 168
    return-void

    .line 169
    :cond_a8
    if-ne v3, v1, :cond_ae

    .line 171
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->setUsbDevice()V

    .line 174
    goto :goto_b6

    .line 175
    :cond_ae
    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 177
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getLastStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 180
    move-result-object v1

    .line 181
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 183
    :cond_b6
    :goto_b6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 185
    if-nez v1, :cond_d1

    .line 187
    iput v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 189
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 196
    move-result-object v1

    .line 197
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 199
    if-nez v1, :cond_d1

    .line 201
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    const-string v2, "doInitStorage: mStorageInfo is null."

    .line 207
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_d1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 214
    const-string v2, "doInitStorage: end"

    .line 216
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v2, "_initStorage"

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getDataPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_e

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getExtraDirectory()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method public final getLastSelectedVolumePath()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "last_storage_path"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public handleInitStorageResult()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "handleInitStorageResult: "

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 12
    if-nez v0, :cond_26

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "handleInitStorageResult: mStorageInfo is null, finish."

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const v0, 0x7f1100ef

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 31
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 38
    return-void

    .line 39
    :cond_26
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    .line 42
    return-void
.end method

.method public initStorage()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;-><init>(Lcom/android/fileexplorer/fragment/AbsFileFragment;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorageTask:Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v2, v2, [Ljava/lang/Void;

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 18
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initFileFragmentActionBar(Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 6
    return-void
.end method

.method public isPickMultipleMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isViewMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    if-eqz p1, :cond_16

    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, "extra_path"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const-string p1, ""

    .line 21
    :cond_14
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 31
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseSDK;->getInstance()Lcom/android/fileexplorer/service/DirParseSDK;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 44
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 46
    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 48
    if-eqz p1, :cond_3c

    .line 50
    const p1, 0x7f12032d

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    .line 60
    goto :goto_4c

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_46

    .line 67
    const p1, 0x7f120522

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    const p1, 0x7f120523

    .line 74
    :goto_49
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 77
    :goto_4c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initStorage()V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDestroy: "

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    instance-of v0, v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 29
    if-eqz v0, :cond_27

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 37
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 40
    :cond_27
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLogTag()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDestroyView: "

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorageTask:Lcom/android/fileexplorer/fragment/AbsFileFragment$InitStorageTask;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 20
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DirParseSDK;->close()V

    .line 23
    return-void
.end method

.method public abstract onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 5
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 7
    invoke-virtual {p3}, Lcom/android/fileexplorer/service/DirParseSDK;->init()V

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLayoutRes()I

    .line 13
    move-result p3

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initFabPreference()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initView(Landroid/view/View;)V

    .line 25
    return-object p1
.end method

.method public final setLastSelectedVolumePath()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-eqz v0, :cond_2c

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_2c

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 32
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "last_storage_path"

    .line 38
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method
