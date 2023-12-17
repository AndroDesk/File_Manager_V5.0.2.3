.class public Lcom/android/fileexplorer/FileExplorerApplication;
.super Lmiuix/autodensity/MiuixApplication;
.source "FileExplorerApplication.java"


# static fields
.field private static sInstance:Lcom/android/fileexplorer/FileExplorerApplication;


# instance fields
.field private mDensityDpi:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmiuix/autodensity/MiuixApplication;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/FileExplorerApplication;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support calling this, before create app or after terminate app."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initModelAppllication()V
    .registers 4

    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    move-result-object v0

    new-instance v1, Lcom/fileexplorer/advert/AdvertApplication;

    invoke-direct {v1}, Lcom/fileexplorer/advert/AdvertApplication;-><init>()V

    const-string v2, "advert_mode"

    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->addAppliaction(Ljava/lang/String;Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;)V

    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    move-result-object v0

    const-string v1, "com.android.globalpad.GlobalPadApplication"

    invoke-static {v1}, Lcom/fileexplorer/commonlibrary/utils/ReflectUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;

    const-string v2, "global_pad"

    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->addAppliaction(Ljava/lang/String;Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_18

    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->forceDpiToDefaultDisplay(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mDensityDpi:I

    :cond_18
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->clearEffectEnable()V

    return-void
.end method

.method public onCreate()V
    .registers 4

    sput-object p0, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    sput-object p0, Lcom/fileexplorer/commonlibrary/CustomApplication;->mApplicationContext:Landroid/content/Context;

    invoke-super {p0}, Lmiuix/autodensity/MiuixApplication;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mDensityDpi:I

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerApplication;->initModelAppllication()V

    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    const-string v2, "global_pad"

    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->onCreate(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    const-string v2, "advert_mode"

    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->onCreate(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_39

    :cond_31
    new-instance v0, Lcom/android/fileexplorer/FileExplorerApplication$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerApplication$1;-><init>(Lcom/android/fileexplorer/FileExplorerApplication;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    :goto_39
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getIfNeedResetScanId()Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setLastScanID(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setNeedResetScanId(Ljava/lang/Boolean;)V

    :cond_48
    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy;

    invoke-direct {v1}, Lcom/android/cloud/session/SessionNotificationProxy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->setNotificationProxy(Lcom/micloud/midrive/notification/ServiceNotificationProxy;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudInit(Ljava/lang/Boolean;)V

    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .registers 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lmiuix/os/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":miuiplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    invoke-super {p0}, Lmiuix/autodensity/MiuixApplication;->shouldAdaptAutoDensity()Z

    move-result v0

    return v0
.end method
