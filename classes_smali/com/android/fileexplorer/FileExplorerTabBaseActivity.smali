.class public abstract Lcom/android/fileexplorer/FileExplorerTabBaseActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "FileExplorerTabBaseActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IDocDataHandler;
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileExplorerTabBaseActivity"


# instance fields
.field public mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

.field private mFileObserverManager:Lcom/android/fileexplorer/filemanager/FileObserverManager;

.field private mHasInitUI:Z

.field private mMiRouterServer:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmbDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

.field public needShowUSBHint:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->needShowUSBHint:Z

    .line 7
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileObserverManager;

    .line 9
    invoke-direct {v0}, Lcom/android/fileexplorer/filemanager/FileObserverManager;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mFileObserverManager:Lcom/android/fileexplorer/filemanager/FileObserverManager;

    .line 14
    new-instance v0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 16
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 21
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkUsbVolume()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private checkUsbVolume()Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_47

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_47

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    .line 28
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_f

    .line 34
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_f

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    .line 42
    if-nez v0, :cond_3e

    .line 44
    iput-boolean v2, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->needShowUSBHint:Z

    .line 46
    const v0, 0x7f1101bb

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->showBottomToast(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v2, v2, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 63
    :cond_3e
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkIfNeedShowRedPoint()V

    .line 66
    iput-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    .line 68
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleUSBMountChanged(Z)V

    .line 71
    return v2

    .line 72
    :cond_47
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->needShowUSBHint:Z

    .line 75
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    .line 77
    if-eqz v1, :cond_55

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {v2, v2, v2, v1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 86
    :cond_55
    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    .line 89
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkIfNeedShowRedPoint()V

    .line 92
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleUSBMountChanged(Z)V

    .line 95
    return v0
.end method

.method private dismissDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 13
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 19
    :cond_12
    return-void
.end method

.method public static synthetic g(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->lambda$onResume$0()V

    return-void
.end method

.method private handleUSBMountChanged(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-nez p1, :cond_8

    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->dismissImmersionMenu(Z)V

    .line 9
    :cond_8
    return-void
.end method

.method private hasSmbDevice()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mMiRouterServer:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mSmbDeviceList:Ljava/util/List;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method private initDefaultConfig()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DefaultConfigInitUtils;->initScanFile()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/FileSortHelper;->initDefaultSortConfig(I)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->resetLastScanTime()V

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->init()V

    .line 22
    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mHasInitUI:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkUsbVolume()Z

    .line 8
    :cond_7
    return-void
.end method

.method private launchPrivatePage(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_6

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->launchThisActivity(Landroid/app/Activity;)V

    .line 7
    :cond_6
    return-void
.end method

.method private recordDocInfo()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isRecordDocInfo()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    new-instance v0, Lcom/android/fileexplorer/tasks/RecordDocTask;

    .line 9
    invoke-direct {v0}, Lcom/android/fileexplorer/tasks/RecordDocTask;-><init>()V

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 15
    :cond_e
    return-void
.end method

.method private registerStorageReceiver()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "file"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    .line 43
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method private showBottomToast(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d002e

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 15
    const v1, 0x7f0a017b

    .line 18
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 24
    if-eqz v1, :cond_2e

    .line 26
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, -0x2

    .line 30
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    const/16 v3, 0xc

    .line 35
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const/4 v1, 0x1

    .line 42
    const-wide/16 v2, 0xbb8

    .line 44
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    .line 47
    :cond_2e
    return-void
.end method

.method private showDataConsumptionHint()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_57

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_57

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 15
    if-eqz v0, :cond_1b

    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 25
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 28
    :cond_1b
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 30
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    const v1, 0x7f1100ff

    .line 36
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f1100fe

    .line 43
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 46
    move-result-object v0

    .line 47
    const v1, 0x7f1100fd

    .line 50
    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$3;

    .line 52
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$3;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 58
    move-result-object v0

    .line 59
    const v1, 0x7f1100fb

    .line 62
    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$2;

    .line 64
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$2;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    .line 67
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 77
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_57

    .line 83
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 88
    :cond_57
    return-void
.end method

.method private unregisterStorageReceiver()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    return-void
.end method


# virtual methods
.method public abstract checkIfNeedShowRedPoint()V
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-object v0
.end method

.method public getSingleStatueAndReset(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->getSingleStatueAndReset(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->init()V

    .line 8
    :cond_7
    return-void
.end method

.method public abstract initView()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 v0, 0x68

    .line 6
    if-eq p1, v0, :cond_54

    .line 8
    const/16 v0, 0x80

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq p1, v0, :cond_29

    .line 13
    const/16 v0, 0x6a

    .line 15
    if-eq p1, v0, :cond_1f

    .line 17
    const/16 p3, 0x6b

    .line 19
    if-eq p1, p3, :cond_15

    .line 21
    goto :goto_57

    .line 22
    :cond_15
    if-ne p2, v1, :cond_1b

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setNeedShowPatternDialog(Z)V

    .line 28
    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->launchPrivatePage(I)V

    .line 31
    goto :goto_57

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_57

    .line 38
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 41
    goto :goto_57

    .line 42
    :cond_29
    const/4 p1, -0x3

    .line 43
    if-eq p2, p1, :cond_4a

    .line 45
    if-eq p2, v1, :cond_42

    .line 47
    if-eqz p2, :cond_3e

    .line 49
    const/4 p1, 0x1

    .line 50
    if-eq p2, p1, :cond_34

    .line 52
    goto :goto_57

    .line 53
    :cond_34
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 56
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    .line 62
    goto :goto_57

    .line 63
    :cond_3e
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 66
    goto :goto_57

    .line 67
    :cond_42
    const-string p1, "FileExplorerTabBaseActivity"

    .line 69
    const-string p2, "miss config"

    .line 71
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_57

    .line 75
    :cond_4a
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_57

    .line 81
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->launchPrivatePage(I)V

    .line 88
    :cond_57
    :goto_57
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 7
    if-eqz v1, :cond_11

    .line 9
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 11
    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_13

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    const/16 v0, 0x72

    .line 16
    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 19
    goto :goto_28

    .line 20
    :cond_13
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1d

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    .line 29
    goto :goto_28

    .line 30
    :cond_1d
    if-nez p1, :cond_28

    .line 32
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_28

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public onCreateImpl()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->registerStorageReceiver()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mFileObserverManager:Lcom/android/fileexplorer/filemanager/FileObserverManager;

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileObserverManager;->startWatching()V

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->initDefaultConfig()V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleIntent(Landroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->initView()V

    .line 22
    invoke-static {p0}, Lcom/android/fileexplorer/util/GuideUtil;->checkIfShowGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 25
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->showDataConsumptionHint()V

    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mHasInitUI:Z

    .line 31
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->release()V

    .line 7
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FileExplorerTabBaseActivity"

    .line 6
    if-nez v0, :cond_d

    .line 8
    const-string p1, "onKeyShortcut mCurrentFragment is null, return."

    .line 10
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return v1

    .line 14
    :cond_d
    const/16 v0, 0x1000

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_88

    .line 22
    const/16 v0, 0x1d

    .line 24
    if-eq p1, v0, :cond_75

    .line 26
    const/16 v0, 0x32

    .line 28
    if-eq p1, v0, :cond_62

    .line 30
    const/16 v0, 0x34

    .line 32
    if-eq p1, v0, :cond_4f

    .line 34
    const/16 v0, 0x1f

    .line 36
    if-eq p1, v0, :cond_3d

    .line 38
    const/16 v0, 0x20

    .line 40
    if-eq p1, v0, :cond_2a

    .line 42
    goto :goto_88

    .line 43
    :cond_2a
    const-string v0, "onKeyShortcut Ctrl+D"

    .line 45
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 50
    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 52
    if-eqz v1, :cond_88

    .line 54
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 56
    const/4 p1, 0x4

    .line 57
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :cond_3d
    const-string v0, "onKeyShortcut Ctrl+C"

    .line 64
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 69
    instance-of v2, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 71
    if-eqz v2, :cond_88

    .line 73
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 75
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :cond_4f
    const-string v0, "onKeyShortcut Ctrl+X"

    .line 82
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 87
    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 89
    if-eqz v1, :cond_88

    .line 91
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 93
    const/4 p1, 0x3

    .line 94
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    .line 97
    move-result p1

    .line 98
    return p1

    .line 99
    :cond_62
    const-string v0, "onKeyShortcut Ctrl+V"

    .line 101
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 106
    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 108
    if-eqz v1, :cond_88

    .line 110
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 112
    const/4 p1, 0x2

    .line 113
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    .line 116
    move-result p1

    .line 117
    return p1

    .line 118
    :cond_75
    const-string v0, "onKeyShortcut Ctrl+A"

    .line 120
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 125
    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 127
    if-eqz v1, :cond_88

    .line 129
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 131
    const/4 p1, 0x1

    .line 132
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    .line 135
    move-result p1

    .line 136
    return p1

    .line 137
    :cond_88
    :goto_88
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    .line 140
    move-result p1

    .line 141
    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleIntent(Landroid/content/Intent;)V

    .line 7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    .line 4
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkUsbVolume()Z

    .line 4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .line 1
    const/16 v0, 0x72

    .line 3
    if-ne p1, v0, :cond_2d

    .line 5
    array-length p1, p2

    .line 6
    const/4 v0, 0x1

    .line 7
    if-lt p1, v0, :cond_2d

    .line 9
    array-length p1, p3

    .line 10
    if-ge p1, v0, :cond_c

    .line 12
    goto :goto_2d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    aget-object v0, p2, p1

    .line 16
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_21

    .line 24
    aget-object p2, p2, p1

    .line 26
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_2d

    .line 34
    :cond_21
    aget p1, p3, p1

    .line 36
    if-nez p1, :cond_29

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    .line 45
    nop

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method public onResume()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/fileexplorer/c;

    .line 14
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/c;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    .line 17
    const-wide/16 v2, 0x1f4

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->recordDocInfo()V

    .line 31
    :cond_1e
    return-void
.end method

.method public refreshAllStatue(IZI)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshAllStatue(IZI)V

    .line 8
    :cond_7
    return-void
.end method

.method public refreshSingleStatus(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    .line 8
    :cond_7
    return-void
.end method

.method public release()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mFileObserverManager:Lcom/android/fileexplorer/filemanager/FileObserverManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileObserverManager;->stopWatching()V

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->dismissDialog()V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileIconHelper;->release()V

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->unregisterStorageReceiver()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 21
    goto :goto_1c

    .line 22
    :catch_15
    const-string v0, "FileExplorerTabBaseActivity"

    .line 24
    const-string v1, "destroy release error"

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_1c
    return-void
.end method
