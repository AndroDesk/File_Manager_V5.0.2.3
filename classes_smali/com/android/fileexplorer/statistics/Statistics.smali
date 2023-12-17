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

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/android/fileexplorer/statistics/Statistics;->sIsRunMonkey:Z

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static init()V
    .registers 7

    .line 1
    const-string v0, "xiaomi"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    sget-object v2, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 23
    move-result v2

    .line 24
    sput-boolean v2, Lcom/android/fileexplorer/statistics/Statistics;->sIsRunMonkey:Z

    .line 26
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 32
    invoke-direct {v3}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    .line 35
    const-string v4, "31000000287"

    .line 37
    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setInternational(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 48
    move-result-object v3

    .line 49
    sget-object v4, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 51
    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-virtual {v3, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    .line 67
    move-result-object v3

    .line 68
    sput-object v3, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 70
    new-instance v3, Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 72
    invoke-direct {v3}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    .line 75
    const-string v6, "31000401450"

    .line 77
    invoke-virtual {v3, v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setInternational(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    .line 100
    move-result-object v0

    .line 101
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrackNew:Lcom/xiaomi/onetrack/OneTrack;

    .line 107
    invoke-static {v1}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V

    .line 110
    invoke-static {v1}, Lcom/xiaomi/onetrack/OneTrack;->setTestMode(Z)V

    .line 113
    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->uploadSwitch()Z

    .line 116
    move-result v0

    .line 117
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/OneTrack;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    .line 120
    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->uploadSwitch()Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_7f

    .line 126
    move v0, v5

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move v0, v1

    .line 129
    :goto_80
    invoke-static {v0}, Lcom/xiaomi/onetrack/OneTrack;->setDisable(Z)V

    .line 132
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 135
    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 140
    invoke-static {}, Lcom/android/fileexplorer/statistics/StatHelper;->reportSettingStatus()V

    .line 143
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 146
    move-result-object v0

    .line 147
    sget-object v2, Lcom/android/fileexplorer/statistics/Statistics;->sOneTrackNew:Lcom/xiaomi/onetrack/OneTrack;

    .line 149
    invoke-virtual {v0, v2}, Lcom/android/cloud/CloudDriveManager;->initMiDriveOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_97} :catch_98

    .line 152
    goto :goto_b8

    .line 153
    :catch_98
    move-exception v0

    .line 154
    sget-object v2, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string v2, "error: "

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    const-string v1, "Statistics"

    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_b8
    return-void
.end method

.method private static initMiStat()V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "2882303761517611479"

    .line 7
    const-string v2, "5961761195479"

    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "xiaomi"

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/stat/MiStat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 15
    const/16 v0, 0x8

    .line 17
    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUploadNetworkType(I)V

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setExceptionCatcherEnabled(Z)V

    .line 24
    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUseSystemUploadingService(Z)Z

    .line 27
    const/16 v0, 0x1e

    .line 29
    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUploadInterval(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 32
    goto :goto_37

    .line 33
    :catch_20
    move-exception v0

    .line 34
    const-string v1, "error: "

    .line 36
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Statistics"

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_37
    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
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

    .line 5
    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->init()V

    .line 7
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

    .line 8
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 9
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
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

    .line 4
    sget-object v0, Lcom/android/fileexplorer/statistics/Statistics;->sInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->init()V

    .line 6
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

    .line 7
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const/16 p0, 0x5f

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, "end"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const/16 p0, 0x5f

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, "start"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private static uploadSwitch()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/statistics/Statistics;->sIsRunMonkey:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method
