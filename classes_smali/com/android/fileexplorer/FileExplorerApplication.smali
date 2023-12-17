.class public Lcom/android/fileexplorer/FileExplorerApplication;
.super Lmiuix/autodensity/MiuixApplication;
.source "FileExplorerApplication.java"


# static fields
.field private static sInstance:Lcom/android/fileexplorer/FileExplorerApplication;


# instance fields
.field private mDensityDpi:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/autodensity/MiuixApplication;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerApplication;->mHandler:Landroid/os/Handler;

    .line 7
    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/FileExplorerApplication;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 8
    const-string v1, "Not support calling this, before create app or after terminate app."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private initModelAppllication()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fileexplorer/advert/AdvertApplication;

    .line 7
    invoke-direct {v1}, Lcom/fileexplorer/advert/AdvertApplication;-><init>()V

    .line 10
    const-string v2, "advert_mode"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->addAppliaction(Ljava/lang/String;Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;)V

    .line 15
    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "com.android.globalpad.GlobalPadApplication"

    .line 21
    invoke-static {v1}, Lcom/fileexplorer/commonlibrary/utils/ReflectUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;

    .line 27
    const-string v2, "global_pad"

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->addAppliaction(Ljava/lang/String;Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;)V

    .line 32
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mDensityDpi:I

    .line 6
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 8
    if-eq v0, p1, :cond_18

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->forceDpiToDefaultDisplay(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 23
    iput p1, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mDensityDpi:I

    .line 25
    :cond_18
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->clearEffectEnable()V

    .line 28
    return-void
.end method

.method public onCreate()V
    .registers 4

    .line 1
    sput-object p0, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    .line 3
    sput-object p0, Lcom/fileexplorer/commonlibrary/CustomApplication;->mApplicationContext:Landroid/content/Context;

    .line 5
    invoke-super {p0}, Lmiuix/autodensity/MiuixApplication;->onCreate()V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 18
    iput v0, p0, Lcom/android/fileexplorer/FileExplorerApplication;->mDensityDpi:I

    .line 20
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 22
    if-eqz v0, :cond_31

    .line 24
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerApplication;->initModelAppllication()V

    .line 27
    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    .line 33
    const-string v2, "global_pad"

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->onCreate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lcom/android/fileexplorer/FileExplorerApplication;->sInstance:Lcom/android/fileexplorer/FileExplorerApplication;

    .line 44
    const-string v2, "advert_mode"

    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->onCreate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    goto :goto_39

    .line 50
    :cond_31
    new-instance v0, Lcom/android/fileexplorer/FileExplorerApplication$1;

    .line 52
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerApplication$1;-><init>(Lcom/android/fileexplorer/FileExplorerApplication;)V

    .line 55
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 58
    :goto_39
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getIfNeedResetScanId()Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_48

    .line 64
    const/4 v0, -0x1

    .line 65
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setLastScanID(I)V

    .line 68
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setNeedResetScanId(Ljava/lang/Boolean;)V

    .line 73
    :cond_48
    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy;

    .line 79
    invoke-direct {v1}, Lcom/android/cloud/session/SessionNotificationProxy;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->setNotificationProxy(Lcom/micloud/midrive/notification/ServiceNotificationProxy;)V

    .line 85
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudInit(Ljava/lang/Boolean;)V

    .line 90
    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lmiuix/os/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, ":miuiplus"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-super {p0}, Lmiuix/autodensity/MiuixApplication;->shouldAdaptAutoDensity()Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method
