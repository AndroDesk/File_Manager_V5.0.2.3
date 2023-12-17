.class public Lcom/android/fileexplorer/service/FTPServerService;
.super Landroid/app/Service;
.source "FTPServerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;
    }
.end annotation


# static fields
.field private static final ANDROID_O:I

.field private static final TAG:Ljava/lang/String; = "FTPServerService"

.field private static final WAKE_INTERVAL_MS:I

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = "SwiFTP"

.field private static serverThread:Ljava/lang/Thread;

.field private static settings:Landroid/content/SharedPreferences;

.field private static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# instance fields
.field private acceptNet:Z

.field private acceptWifi:Z

.field private fullWake:Z

.field private listenSocket:Ljava/net/ServerSocket;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private port:I

.field private proxyConnector:Lorg/swiftp/ProxyConnector;

.field private sessionThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftp/SessionThread;",
            ">;"
        }
    .end annotation
.end field

.field private shouldExit:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiListener:Lorg/swiftp/TcpListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d8c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/service/FTPServerService;->ANDROID_O:I

    const v0, 0x92e7e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/service/FTPServerService;->WAKE_INTERVAL_MS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/service/FTPServerService$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/FTPServerService$1;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupNotification()V

    return-void
.end method

.method private cleanupAndStopService()V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/fileexplorer/service/FTPServerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWifiLock()V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->clearNotification()V

    return-void
.end method

.method private clearNotification()V
    .registers 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_10

    const v1, 0x1e23d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_10
    const-string v0, "FTPServerService"

    const-string v1, "Cleared notification"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getSettings()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private loadSettings()Z
    .registers 5

    const-string v0, "FTPServerService"

    const-string v1, "Loading settings"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/service/FTPServerService;->settings:Landroid/content/SharedPreferences;

    const-string v2, "portNum"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    if-nez v1, :cond_29

    sget v1, Lorg/swiftp/Defaults;->portNumber:I

    iput v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    :cond_29
    const-string v1, "Using port "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptNet:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptWifi:Z

    sget-object v1, Lcom/android/fileexplorer/service/FTPServerService;->settings:Landroid/content/SharedPreferences;

    const-string v2, "stayAwake"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->fullWake:Z

    return v0
.end method

.method private releaseWakeLock()V
    .registers 3

    const-string v0, "FTPServerService"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "Finished releasing wake lock"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_17
    const-string v1, "Couldn\'t release null wake lock"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method private releaseWifiLock()V
    .registers 3

    const-string v0, "FTPServerService"

    const-string v1, "Releasing wifi lock"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_11
    return-void
.end method

.method private safeSetupListener()Z
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupListener()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method

.method private setupListener()V
    .registers 4

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method private setupNotification()V
    .registers 12

    const v0, 0x7f182f4a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x7f182f4b

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/fileexplorer/service/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_51

    const-string v6, ":"

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ftp://"

    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    move-result v4

    const/16 v8, 0x15

    if-ne v4, v8, :cond_49

    goto :goto_4a

    :cond_49
    move-object v5, v6

    :goto_4a
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_51
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/android/fileexplorer/activity/ServerControlActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x2

    const-string v7, "TAB"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x0

    const/high16 v7, 0x4000000

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    const-string v7, "notify_id_ftpService"

    const-string v8, "FTPServerService"

    if-nez v6, :cond_79

    const-string v0, "setupNotification notificationManager is null, return"

    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_79
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_87

    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/NotificationUtil;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/android/fileexplorer/util/NotificationUtil;->createNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    goto :goto_8c

    :cond_87
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_8c
    const v9, 0x7f080615

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1e23d

    invoke-virtual {v6, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "Notication setup done"

    invoke-static {v8, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private takeWakeLock()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_20

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->fullWake:Z

    const-string v2, "SwiFTP"

    if-eqz v1, :cond_15

    const/16 v1, 0x1a

    goto :goto_16

    :cond_15
    const/4 v1, 0x1

    :goto_16
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_20
    const-string v0, "FTPServerService"

    const-string v1, "Acquiring wake lock"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private takeWifiLock()V
    .registers 3

    const-string v0, "FTPServerService"

    const-string v1, "Taking wifi lock"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "SwiFTP"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :cond_23
    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method private terminateAllSessions()V
    .registers 4

    const-string v0, "FTPServerService"

    const-string v1, "Terminating "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session thread(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_1e
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/swiftp/SessionThread;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeSocket()V

    goto :goto_24

    :cond_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public static updateClients()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    invoke-direct {v1}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPort()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    return v0
.end method

.method public getWifiIp()Ljava/net/InetAddress;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-static {v0}, Lorg/swiftp/Util;->intToInet(I)Ljava/net/InetAddress;

    move-result-object v1

    :goto_1f
    return-object v1
.end method

.method public isRunning()Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    const-string v1, "FTPServerService"

    if-nez v0, :cond_d

    const-string v0, "Server is not running (null serverThread)"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "serverThread non-null but !isAlive()"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_19
    const-string v0, "Server is alive"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    new-instance p1, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    const/16 v0, 0xa

    :goto_a
    sget-object v1, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    const-string v2, "FTPServerService"

    if-eqz v1, :cond_25

    const-string v1, "Won\'t start, server thread exists"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1f

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lorg/swiftp/Util;->sleepIgnoreInterupt(J)V

    goto :goto_a

    :cond_1f
    const-string v0, "Server thread already exists"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_25
    const-string v0, "Creating server thread"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "FTP Service"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    const-string v0, "FTPServerService"

    const-string v1, "SwiFTP server created"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 6

    const-string v0, "FTPServerService"

    const-string v1, "onDestroy() Stopping server"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    if-nez v2, :cond_14

    const-string v1, "Stopping with null serverThread"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :try_start_17
    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1e

    :catch_1e
    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    const-string v2, "Server thread failed to exit"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_2d
    const-string v2, "serverThread join()ed ok"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    :goto_34
    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    invoke-direct {v4}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    sput-object v3, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_4e
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->clearNotification()V

    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const-string v1, "FTPServerService.onDestroy() finished"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerSessionThread(Lorg/swiftp/SessionThread;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/swiftp/SessionThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "FTPServerService"

    const-string v4, "Cleaning up finished session..."

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_62

    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    const-string v3, "FTPServerService"

    const-string v4, "Thread joined"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->closeSocket()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_35} :catch_36
    .catchall {:try_start_25 .. :try_end_35} :catchall_62

    goto :goto_c

    :catch_36
    :try_start_36
    const-string v2, "FTPServerService"

    const-string v3, "Interrupted while joining"

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/swiftp/SessionThread;

    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_54
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_62

    const-string p1, "FTPServerService"

    const-string v0, "Registered session thread"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_62
    move-exception p1

    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1
.end method

.method public run()V
    .registers 13

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    invoke-direct {v1}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string v0, "FTPServerService"

    const-string v1, "Server thread running"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->loadSettings()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->cleanupAndStopService()V

    return-void

    :cond_1d
    iget-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptWifi:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_51

    const/16 v1, 0xa

    move v4, v3

    :goto_26
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->safeSetupListener()Z

    move-result v5

    if-nez v5, :cond_36

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_36

    iget v5, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    goto :goto_26

    :cond_36
    if-lt v4, v1, :cond_4e

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f182c53

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->cleanupAndStopService()V

    return-void

    :cond_4e
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->takeWifiLock()V

    :cond_51
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->takeWakeLock()V

    const-string v1, "SwiFTP server ready"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v1, v4, :cond_80

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/fileexplorer/service/FTPServerService$2;

    invoke-direct {v5, p0}, Lcom/android/fileexplorer/service/FTPServerService$2;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    invoke-static {v1, v4, v5}, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->request(Landroid/content/Context;[Ljava/lang/String;Lcom/android/fileexplorer/listener/permission/PermissionCallback;)V

    goto :goto_83

    :cond_7c
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupNotification()V

    goto :goto_83

    :cond_80
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupNotification()V

    :goto_83
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v4, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    invoke-direct {v4}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    move v1, v3

    :goto_92
    iget-boolean v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    const/4 v7, 0x0

    if-nez v6, :cond_13d

    iget-boolean v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptWifi:Z

    if-eqz v6, :cond_c1

    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    if-eqz v6, :cond_b1

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_b1

    const-string v6, "Joining crashed wifiListener thread"

    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_aa
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_af} :catch_af

    :catch_af
    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    :cond_b1
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    if-nez v6, :cond_c1

    new-instance v6, Lorg/swiftp/TcpListener;

    iget-object v8, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    invoke-direct {v6, v8, p0}, Lorg/swiftp/TcpListener;-><init>(Ljava/net/ServerSocket;Lcom/android/fileexplorer/service/FTPServerService;)V

    iput-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_c1
    iget-boolean v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptNet:Z

    if-eqz v6, :cond_12f

    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-eqz v6, :cond_f9

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_f9

    const-string v6, "Joining crashed proxy connector"

    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d4
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_d9
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_d9} :catch_d9

    :catch_d9
    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-gez v6, :cond_f3

    const-string v6, "Incrementing proxy start failures"

    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    :cond_f3
    const-string v1, "Resetting proxy start failures"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :cond_f9
    :goto_f9
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-nez v6, :cond_12f

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v8, 0x3

    if-ge v1, v8, :cond_112

    sub-long v8, v6, v4

    const-wide/16 v10, 0x1388

    cmp-long v8, v8, v10

    if-lez v8, :cond_112

    goto :goto_11a

    :cond_112
    sub-long v8, v6, v4

    const-wide/16 v10, 0x7530

    cmp-long v8, v8, v10

    if-lez v8, :cond_11c

    :goto_11a
    move v8, v2

    goto :goto_11d

    :cond_11c
    move v8, v3

    :goto_11d
    if-eqz v8, :cond_12f

    const-string v4, "Spawning ProxyConnector"

    invoke-static {v0, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/swiftp/ProxyConnector;

    invoke-direct {v4, p0}, Lorg/swiftp/ProxyConnector;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    iput-object v4, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move-wide v4, v6

    :cond_12f
    const-wide/16 v6, 0x3e8

    :try_start_131
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_134
    .catch Ljava/lang/InterruptedException; {:try_start_131 .. :try_end_134} :catch_136

    goto/16 :goto_92

    :catch_136
    const-string v6, "Thread interrupted"

    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_92

    :cond_13d
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->terminateAllSessions()V

    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-eqz v1, :cond_149

    invoke-virtual {v1}, Lorg/swiftp/ProxyConnector;->quit()V

    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    :cond_149
    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    if-eqz v1, :cond_152

    invoke-virtual {v1}, Lorg/swiftp/TcpListener;->quit()V

    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    :cond_152
    iput-boolean v3, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    const-string v1, "Exiting cleanly, returning from run()"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->clearNotification()V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWifiLock()V

    return-void
.end method

.method public setPort(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    return-void
.end method
