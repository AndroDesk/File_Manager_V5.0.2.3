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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->needShowUSBHint:Z

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileObserverManager;

    invoke-direct {v0}, Lcom/android/fileexplorer/filemanager/FileObserverManager;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mFileObserverManager:Lcom/android/fileexplorer/filemanager/FileObserverManager;

    new-instance v0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkUsbVolume()Z

    move-result p0

    return p0
.end method

.method private checkUsbVolume()Z
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v0, :cond_42

    iput-boolean v2, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->needShowUSBHint:Z

    const v0, 0x7f182c2d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->showBottomToast(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v2, v2, v2, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_42
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkIfNeedShowRedPoint()V

    iput-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleUSBMountChanged(Z)V

    return v2

    :cond_4b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->needShowUSBHint:Z

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v1, :cond_59

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-static {v2, v2, v2, v1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkIfNeedShowRedPoint()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleUSBMountChanged(Z)V

    return v0
.end method

.method private dismissDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

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

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mUsbVolume:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez p1, :cond_8

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->dismissImmersionMenu(Z)V

    :cond_8
    return-void
.end method

.method private hasSmbDevice()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mMiRouterServer:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mSmbDeviceList:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private initDefaultConfig()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/DefaultConfigInitUtils;->initScanFile()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/fileexplorer/model/FileSortHelper;->initDefaultSortConfig(I)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->resetLastScanTime()V

    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->init()V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mHasInitUI:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkUsbVolume()Z

    :cond_7
    return-void
.end method

.method private launchPrivatePage(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    invoke-static {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->launchThisActivity(Landroid/app/Activity;)V

    :cond_6
    return-void
.end method

.method private recordDocInfo()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isRecordDocInfo()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/fileexplorer/tasks/RecordDocTask;

    invoke-direct {v0}, Lcom/android/fileexplorer/tasks/RecordDocTask;-><init>()V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method private registerStorageReceiver()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showBottomToast(Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042db8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    const v1, 0x7f032ced

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_36

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    :cond_36
    return-void
.end method

.method private showDataConsumptionHint()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1b
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100ff

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100fe

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100fd

    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$3;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100fb

    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$2;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_57
    return-void
.end method

.method private unregisterStorageReceiver()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public abstract checkIfNeedShowRedPoint()V
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getSingleStatueAndReset(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->getSingleStatueAndReset(I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->init()V

    :cond_7
    return-void
.end method

.method public abstract initView()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x68

    if-eq p1, v0, :cond_54

    const/16 v0, 0x80

    const/4 v1, -0x1

    if-eq p1, v0, :cond_29

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_1f

    const/16 p3, 0x6b

    if-eq p1, p3, :cond_15

    goto :goto_57

    :cond_15
    if-ne p2, v1, :cond_1b

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setNeedShowPatternDialog(Z)V

    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->launchPrivatePage(I)V

    goto :goto_57

    :cond_1f
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_57

    :cond_29
    const/4 p1, -0x3

    if-eq p2, p1, :cond_4a

    if-eq p2, v1, :cond_42

    if-eqz p2, :cond_3e

    const/4 p1, 0x1

    if-eq p2, p1, :cond_34

    goto :goto_57

    :cond_34
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    goto :goto_57

    :cond_3e
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_57

    :cond_42
    const-string p1, "FileExplorerTabBaseActivity"

    const-string p2, "miss config"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_4a
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result p1

    if-nez p1, :cond_57

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    goto :goto_57

    :cond_54
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->launchPrivatePage(I)V

    :cond_57
    :goto_57
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x72

    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_28

    :cond_13
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    goto :goto_28

    :cond_1d
    if-nez p1, :cond_28

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    :cond_28
    :goto_28
    return-void
.end method

.method public onCreateImpl()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->registerStorageReceiver()V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mFileObserverManager:Lcom/android/fileexplorer/filemanager/FileObserverManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileObserverManager;->startWatching()V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->initDefaultConfig()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->initView()V

    invoke-static {p0}, Lcom/android/fileexplorer/util/GuideUtil;->checkIfShowGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->showDataConsumptionHint()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mHasInitUI:Z

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->release()V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    const-string v2, "FileExplorerTabBaseActivity"

    if-nez v0, :cond_d

    const-string p1, "onKeyShortcut mCurrentFragment is null, return."

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_88

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_75

    const/16 v0, 0x32

    if-eq p1, v0, :cond_62

    const/16 v0, 0x34

    if-eq p1, v0, :cond_4f

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2a

    goto :goto_88

    :cond_2a
    const-string v0, "onKeyShortcut Ctrl+D"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    if-eqz v1, :cond_88

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    const/4 p1, 0x4

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_3d
    const-string v0, "onKeyShortcut Ctrl+C"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    if-eqz v2, :cond_88

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_4f
    const-string v0, "onKeyShortcut Ctrl+X"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    if-eqz v1, :cond_88

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    const/4 p1, 0x3

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_62
    const-string v0, "onKeyShortcut Ctrl+V"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    if-eqz v1, :cond_88

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    const/4 p1, 0x2

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_75
    const-string v0, "onKeyShortcut Ctrl+A"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    if-eqz v1, :cond_88

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_88
    :goto_88
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    return-void
.end method

.method public onRefresh()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->checkUsbVolume()Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    const/16 v0, 0x72

    if-ne p1, v0, :cond_2d

    array-length p1, p2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2d

    array-length p1, p3

    if-ge p1, v0, :cond_c

    goto :goto_2d

    :cond_c
    const/4 p1, 0x0

    aget-object v0, p2, p1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    aget-object p2, p2, p1

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    :cond_21
    aget p1, p3, p1

    if-nez p1, :cond_29

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreateImpl()V

    goto :goto_2d

    :cond_29
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    nop

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/c;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/c;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->recordDocInfo()V

    :cond_1e
    return-void
.end method

.method public refreshAllStatue(IZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshAllStatue(IZI)V

    :cond_7
    return-void
.end method

.method public refreshSingleStatus(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mFileObserverManager:Lcom/android/fileexplorer/filemanager/FileObserverManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileObserverManager;->stopWatching()V

    :cond_7
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->dismissDialog()V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileIconHelper;->release()V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->unregisterStorageReceiver()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    const-string v0, "FileExplorerTabBaseActivity"

    const-string v1, "destroy release error"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method
