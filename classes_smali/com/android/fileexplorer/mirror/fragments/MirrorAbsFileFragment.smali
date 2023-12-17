.class public abstract Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorAbsFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$DirQueryCallback;,
        Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$InitStorageTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field public static final EXT_SEARCH_ACTION:Ljava/lang/String; = "com.android.fileexplorer.search"

.field private static final KEY_LAST_STORAGE_PATH:Ljava/lang/String; = "mirror_last_storage_path"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field public mCurrentDeviceIndex:I

.field public mExtraPath:Ljava/lang/String;

.field public mForceMainSpace:Z

.field public mInitStorage:Z

.field private mInitStorageTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$InitStorageTask;

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
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorage:Z

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
    iput-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/io/File;

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mSearchFilePath:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_e

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method private initStorage()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$InitStorageTask;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$InitStorageTask;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorageTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$InitStorageTask;

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

.method private setMtpDevice()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

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
    if-nez v0, :cond_2c

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 37
    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 39
    if-eqz v1, :cond_2b

    .line 41
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 44
    :cond_2b
    return-void

    .line 45
    :cond_2c
    iget-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 47
    const-string v2, "permission_denial"

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_46

    .line 55
    const v0, 0x7f110348

    .line 58
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 63
    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 65
    if-eqz v1, :cond_45

    .line 67
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 70
    :cond_45
    return-void

    .line 71
    :cond_46
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "generate storage info:"

    .line 77
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v2

    .line 81
    iget-object v3, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, " "

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v3, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 105
    iget-object v2, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 107
    iget-object v0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 109
    const-string v3, ""

    .line 111
    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 116
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
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    if-nez v0, :cond_1b

    .line 13
    const v0, 0x7f11014b

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 21
    instance-of v1, v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 23
    if-eqz v1, :cond_1b

    .line 25
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 28
    :cond_1b
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
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "doInitStorage: "

    .line 15
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getExtraPath()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x7

    .line 27
    const/4 v4, 0x2

    .line 28
    if-nez v2, :cond_7c

    .line 30
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 32
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_37

    .line 38
    iput-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 40
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_34

    .line 50
    iput v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 52
    goto :goto_98

    .line 53
    :cond_34
    iput v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 55
    goto :goto_98

    .line 56
    :cond_37
    new-instance v2, Ljava/io/File;

    .line 58
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 66
    move-result v1

    .line 67
    const/4 v3, 0x3

    .line 68
    if-ne v1, v3, :cond_6b

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_6b

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6b

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6b

    .line 88
    new-instance v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    const-string v5, "mounted"

    .line 100
    invoke-direct {v1, v3, v2, v5}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 105
    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mForceMainSpace:Z

    .line 108
    :cond_6b
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 110
    if-nez v1, :cond_98

    .line 112
    const-string v1, ""

    .line 114
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 116
    iput v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 118
    invoke-static {}, Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 121
    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 124
    goto :goto_98

    .line 125
    :cond_7c
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getDeviceIndex()I

    .line 128
    move-result v1

    .line 129
    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 131
    const/16 v2, 0xc

    .line 133
    if-ne v2, v1, :cond_8a

    .line 135
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->setMtpDevice()V

    .line 138
    return-void

    .line 139
    :cond_8a
    if-ne v3, v1, :cond_90

    .line 141
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->setUsbDevice()V

    .line 144
    goto :goto_98

    .line 145
    :cond_90
    iput v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 147
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLastStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 150
    move-result-object v1

    .line 151
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 153
    :cond_98
    :goto_98
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 155
    if-nez v1, :cond_af

    .line 157
    iput v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 159
    invoke-static {}, Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 162
    move-result-object v1

    .line 163
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 165
    if-nez v1, :cond_af

    .line 167
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    const-string v2, "doInitStorage: mStorageInfo is null."

    .line 173
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_af
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    const-string v2, "doInitStorage: end"

    .line 182
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v2, "_initStorage"

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getDataPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_e

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getExtraDirectory()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method public final getLastSelectedVolumePath()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mirror_last_storage_path"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public abstract getLayoutRes()I
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public handleInitStorageResult()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "handleInitStorageResult: "

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 12
    if-nez v0, :cond_22

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 34
    return-void

    .line 35
    :cond_22
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorage:Z

    .line 38
    return-void
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public isViewMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseSDK;->getInstance()Lcom/android/fileexplorer/service/DirParseSDK;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 27
    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 29
    if-eqz p1, :cond_29

    .line 31
    const p1, 0x7f12032d

    .line 34
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    .line 41
    goto :goto_39

    .line 42
    :cond_29
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->isViewMode()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_33

    .line 48
    const p1, 0x7f120522

    .line 51
    goto :goto_36

    .line 52
    :cond_33
    const p1, 0x7f120523

    .line 55
    :goto_36
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 58
    :goto_39
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->initStorage()V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDestroy: "

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorage:Z

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
    instance-of v0, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 29
    if-eqz v0, :cond_27

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 37
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    .line 40
    :cond_27
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLogTag()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDestroyView: "

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorageTask:Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$InitStorageTask;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

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
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 7
    invoke-virtual {p3}, Lcom/android/fileexplorer/service/DirParseSDK;->init()V

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLayoutRes()I

    .line 13
    move-result p3

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->initView(Landroid/view/View;)V

    .line 22
    return-object p1
.end method

.method public final setLastSelectedVolumePath()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-eqz v0, :cond_2a

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_2a

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 20
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 30
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "mirror_last_storage_path"

    .line 36
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method
