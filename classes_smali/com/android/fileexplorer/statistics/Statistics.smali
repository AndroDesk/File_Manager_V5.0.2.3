.class public Lcom/android/fileexplorer/statistics/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "31000000287"

.field private static final APP_ID_NEW:Ljava/lang/String; = "31000401450"

.field private static final MI_STAT_APP_ID:Ljava/lang/String; = "2882303761517611479"

.field private static final MI_STAT_APP_KEY:Ljava/lang/String; = "5961761195479"

.field private static final TAG:Ljava/lang/String; = "Statistics"

.field private static final UPLOAD_INTERVAL:I = 0x1e

.field private static sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsRunMonkey:Z

.field private static sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static sOneTrackNew:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/fileexplorer/statistics/Statistics;->sIsRunMonkey:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 7

    const-string v0, "xiaomi"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    move-result v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    sget-object v2, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    sput-boolean v2, Lcom/android/fileexplorer/statistics/Statistics;->sIsRunMonkey:Z

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v4, "31000000287"

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setInternational(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v3

    sput-object v3, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    new-instance v3, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v6, "31000401450"

    invoke-virtual {v3, v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setInternational(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrackNew:Lcom/xiaomi/onetrack/OneTrack;

    invoke-static {v1}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V

    invoke-static {v1}, Lcom/xiaomi/onetrack/OneTrack;->setTestMode(Z)V

    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->uploadSwitch()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/OneTrack;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->uploadSwitch()Z

    move-result v0

    if-nez v0, :cond_7f

    move v0, v5

    goto :goto_80

    :cond_7f
    move v0, v1

    :goto_80
    invoke-static {v0}, Lcom/xiaomi/onetrack/OneTrack;->setDisable(Z)V

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    invoke-static {}, Lcom/android/fileexplorer/statistics/StatHelper;->reportSettingStatus()V

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    sget-object v2, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrackNew:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, v2}, Lcom/android/cloud/CloudDriveManager;->initMiDriveOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_97} :catch_98

    goto :goto_b8

    :catch_98
    move-exception v0

    sget-object v2, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statistics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b8
    return-void
.end method

.method private static initMiStat()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2882303761517611479"

    const-string v2, "5961761195479"

    const/4 v3, 0x0

    const-string v4, "xiaomi"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/stat/MiStat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUploadNetworkType(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setExceptionCatcherEnabled(Z)V

    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUseSystemUploadingService(Z)Z

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUploadInterval(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_37

    :catch_20
    move-exception v0

    const-string v1, "error: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statistics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->init()V

    :cond_b
    :try_start_b
    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_28

    :catch_11
    move-exception p0

    const-string p1, "onEvent error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statistics"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method

.method public static onEventNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEventNew(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventNew(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->init()V

    :cond_b
    :try_start_b
    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrackNew:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_28

    :catch_11
    move-exception p0

    const-string p1, "onEvent error: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statistics"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "end"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static uploadSwitch()Z
    .registers 1

    sget-boolean v0, Lcom/android/fileexplorer/statistics/Statistics;->sIsRunMonkey:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
