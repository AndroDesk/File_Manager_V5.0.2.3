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
.field private static final ANDROID_O:I = 0x1a

.field private static final TAG:Ljava/lang/String; = "FTPServerService"

.field private static final WAKE_INTERVAL_MS:I = 0x3e8

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/service/FTPServerService$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/FTPServerService$1;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupNotification()V

    .line 4
    return-void
.end method

.method private cleanupAndStopService()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 7
    const-class v2, Lcom/android/fileexplorer/service/FTPServerService;

    .line 9
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWifiLock()V

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWakeLock()V

    .line 21
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->clearNotification()V

    .line 24
    return-void
.end method

.method private clearNotification()V
    .registers 3

    .line 1
    const-string v0, "notification"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    const v1, 0x1e23d

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 17
    :cond_10
    const-string v0, "FTPServerService"

    .line 19
    const-string v1, "Cleared notification"

    .line 21
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static getSettings()Landroid/content/SharedPreferences;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->settings:Landroid/content/SharedPreferences;

    .line 3
    return-object v0
.end method

.method private loadSettings()Z
    .registers 5

    .line 1
    const-string v0, "FTPServerService"

    .line 3
    const-string v1, "Loading settings"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lcom/android/fileexplorer/service/FTPServerService;->settings:Landroid/content/SharedPreferences;

    .line 18
    const-string v2, "portNum"

    .line 20
    const-string v3, "0"

    .line 22
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 36
    if-nez v1, :cond_29

    .line 38
    sget v1, Lorg/swiftp/Defaults;->portNumber:I

    .line 40
    iput v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 42
    :cond_29
    const-string v1, "Using port "

    .line 44
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v1

    .line 48
    iget v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptNet:Z

    .line 63
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptWifi:Z

    .line 66
    sget-object v1, Lcom/android/fileexplorer/service/FTPServerService;->settings:Landroid/content/SharedPreferences;

    .line 68
    const-string v2, "stayAwake"

    .line 70
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    move-result v1

    .line 74
    iput-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->fullWake:Z

    .line 76
    return v0
.end method

.method private releaseWakeLock()V
    .registers 3

    .line 1
    const-string v0, "FTPServerService"

    .line 3
    const-string v1, "Releasing wake lock"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 10
    if-eqz v1, :cond_17

    .line 12
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 18
    const-string v1, "Finished releasing wake lock"

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    const-string v1, "Couldn\'t release null wake lock"

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_1c
    return-void
.end method

.method private releaseWifiLock()V
    .registers 3

    .line 1
    const-string v0, "FTPServerService"

    .line 3
    const-string v1, "Releasing wifi lock"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 10
    if-eqz v0, :cond_11

    .line 12
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 15
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 18
    :cond_11
    return-void
.end method

.method private safeSetupListener()Z
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupListener()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 4
    const/4 v0, 0x1

    .line 5
    return v0

    .line 6
    :catch_5
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method private setupListener()V
    .registers 4

    .line 1
    new-instance v0, Ljava/net/ServerSocket;

    .line 3
    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    .line 14
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 16
    iget v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 18
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 21
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 24
    return-void
.end method

.method private setupNotification()V
    .registers 12

    .line 1
    const v0, 0x7f1102dc

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v1

    .line 12
    const v3, 0x7f1102dd

    .line 15
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/service/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    .line 22
    move-result-object v4

    .line 23
    const-string v5, ""

    .line 25
    if-eqz v4, :cond_49

    .line 27
    const-string v6, ":"

    .line 29
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {p0}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    .line 36
    move-result v7

    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v6

    .line 44
    const-string v7, "ftp://"

    .line 46
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcom/android/fileexplorer/service/FTPServerService;->getPort()I

    .line 60
    move-result v4

    .line 61
    const/16 v8, 0x15

    .line 63
    if-ne v4, v8, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move-object v5, v6

    .line 67
    :goto_42
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    :cond_49
    new-instance v4, Landroid/content/Intent;

    .line 76
    const-class v6, Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 78
    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const/4 v6, 0x2

    .line 82
    const-string v7, "TAB"

    .line 84
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const/4 v6, 0x0

    .line 88
    const/high16 v7, 0x4000000

    .line 90
    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 93
    move-result-object v4

    .line 94
    const-string v6, "notification"

    .line 96
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Landroid/app/NotificationManager;

    .line 102
    const-string v7, "notify_id_ftpService"

    .line 104
    const-string v8, "FTPServerService"

    .line 106
    if-nez v6, :cond_71

    .line 108
    const-string v0, "setupNotification notificationManager is null, return"

    .line 110
    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 114
    :cond_71
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    const/16 v10, 0x1a

    .line 118
    if-lt v9, v10, :cond_7f

    .line 120
    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/NotificationUtil;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 123
    invoke-static {p0, v7}, Lcom/android/fileexplorer/util/NotificationUtil;->createNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 126
    move-result-object v7

    .line 127
    goto :goto_84

    .line 128
    :cond_7f
    new-instance v7, Landroid/app/Notification$Builder;

    .line 130
    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    :goto_84
    const v9, 0x7f080615

    .line 136
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 147
    move-result-object v0

    .line 148
    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 168
    move-result-object v0

    .line 169
    const v1, 0x1e23d

    .line 172
    invoke-virtual {v6, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 175
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 178
    const-string v0, "Notication setup done"

    .line 180
    invoke-static {v8, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private takeWakeLock()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    if-nez v0, :cond_20

    .line 5
    const-string v0, "power"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/PowerManager;

    .line 13
    iget-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->fullWake:Z

    .line 15
    const-string v2, "SwiFTP"

    .line 17
    if-eqz v1, :cond_15

    .line 19
    const/16 v1, 0x1a

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x1

    .line 23
    :goto_16
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 33
    :cond_20
    const-string v0, "FTPServerService"

    .line 35
    const-string v1, "Acquiring wake lock"

    .line 37
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 45
    return-void
.end method

.method private takeWifiLock()V
    .registers 3

    .line 1
    const-string v0, "FTPServerService"

    .line 3
    const-string v1, "Taking wifi lock"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 10
    if-nez v0, :cond_23

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "wifi"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 24
    const-string v1, "SwiFTP"

    .line 26
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 36
    :cond_23
    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 41
    return-void
.end method

.method private terminateAllSessions()V
    .registers 4

    .line 1
    const-string v0, "FTPServerService"

    .line 3
    const-string v1, "Terminating "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " session thread(s)"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    monitor-enter p0

    .line 31
    :try_start_1e
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_39

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lorg/swiftp/SessionThread;

    .line 49
    if-eqz v1, :cond_24

    .line 51
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 54
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeSocket()V

    .line 57
    goto :goto_24

    .line 58
    :cond_39
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_3b
    move-exception v0

    .line 61
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_3b

    .line 62
    throw v0
.end method

.method public static updateClients()V
    .registers 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    .line 7
    invoke-direct {v1}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getPort()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 3
    return v0
.end method

.method public getWifiIp()Ljava/net/InetAddress;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "wifi"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-object v1

    .line 21
    :cond_14
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1b

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    invoke-static {v0}, Lorg/swiftp/Util;->intToInet(I)Ljava/net/InetAddress;

    .line 31
    move-result-object v1

    .line 32
    :goto_1f
    return-object v1
.end method

.method public isRunning()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 3
    const-string v1, "FTPServerService"

    .line 5
    if-nez v0, :cond_d

    .line 7
    const-string v0, "Server is not running (null serverThread)"

    .line 9
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_19

    .line 20
    const-string v0, "serverThread non-null but !isAlive()"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    const-string v0, "Server is alive"

    .line 28
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_1e
    const/4 v0, 0x1

    .line 32
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    .line 4
    new-instance p1, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    .line 9
    const/16 v0, 0xa

    .line 11
    :goto_a
    sget-object v1, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 13
    const-string v2, "FTPServerService"

    .line 15
    if-eqz v1, :cond_25

    .line 17
    const-string v1, "Won\'t start, server thread exists"

    .line 19
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    if-lez v0, :cond_1f

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 26
    const-wide/16 v1, 0x3e8

    .line 28
    invoke-static {v1, v2}, Lorg/swiftp/Util;->sleepIgnoreInterupt(J)V

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    const-string v0, "Server thread already exists"

    .line 34
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object p1

    .line 38
    :cond_25
    const-string v0, "Creating server thread"

    .line 40
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/Thread;

    .line 45
    const-string v1, "FTP Service"

    .line 47
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 50
    sput-object v0, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 1
    const-string v0, "FTPServerService"

    .line 3
    const-string v1, "SwiFTP server created"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v1, "android.intent.action.TIME_TICK"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 1
    const-string v0, "FTPServerService"

    .line 3
    const-string v1, "onDestroy() Stopping server"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    .line 11
    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 13
    if-nez v2, :cond_14

    .line 15
    const-string v1, "Stopping with null serverThread"

    .line 17
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 24
    :try_start_17
    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 26
    const-wide/16 v3, 0x2710

    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_2d

    .line 40
    const-string v2, "Server thread failed to exit"

    .line 42
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    const-string v2, "serverThread join()ed ok"

    .line 48
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sput-object v3, Lcom/android/fileexplorer/service/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 53
    :goto_34
    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    .line 55
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 61
    move-result-object v2

    .line 62
    new-instance v4, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    .line 64
    invoke-direct {v4}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    .line 67
    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 70
    sget-object v2, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 72
    if-eqz v2, :cond_4e

    .line 74
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 77
    sput-object v3, Lcom/android/fileexplorer/service/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 79
    :cond_4e
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->clearNotification()V

    .line 82
    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 90
    const-string v1, "FTPServerService.onDestroy() finished"

    .line 92
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public registerSessionThread(Lorg/swiftp/SessionThread;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3e

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/swiftp/SessionThread;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_c

    .line 31
    const-string v3, "FTPServerService"

    .line 33
    const-string v4, "Cleaning up finished session..."

    .line 35
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_62

    .line 38
    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 41
    const-string v3, "FTPServerService"

    .line 43
    const-string v4, "Thread joined"

    .line 45
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->closeSocket()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_35} :catch_36
    .catchall {:try_start_25 .. :try_end_35} :catchall_62

    .line 54
    goto :goto_c

    .line 55
    :catch_36
    :try_start_36
    const-string v2, "FTPServerService"

    .line 57
    const-string v3, "Interrupted while joining"

    .line 59
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_c

    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v0

    .line 67
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_54

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lorg/swiftp/SessionThread;

    .line 79
    iget-object v2, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    .line 81
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    goto :goto_42

    .line 85
    :cond_54
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService;->sessionThreads:Ljava/util/List;

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_62

    .line 91
    const-string p1, "FTPServerService"

    .line 93
    const-string v0, "Registered session thread"

    .line 95
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 99
    :catchall_62
    move-exception p1

    .line 100
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    .line 101
    throw p1
.end method

.method public run()V
    .registers 13

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    .line 7
    invoke-direct {v1}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 13
    const-string v0, "FTPServerService"

    .line 15
    const-string v1, "Server thread running"

    .line 17
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->loadSettings()Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1d

    .line 26
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->cleanupAndStopService()V

    .line 29
    return-void

    .line 30
    :cond_1d
    iget-boolean v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptWifi:Z

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_4d

    .line 36
    const/16 v1, 0xa

    .line 38
    move v4, v3

    .line 39
    :goto_26
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->safeSetupListener()Z

    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_36

    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 47
    if-ge v4, v1, :cond_36

    .line 49
    iget v5, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 51
    add-int/2addr v5, v2

    .line 52
    iput v5, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 54
    goto :goto_26

    .line 55
    :cond_36
    if-lt v4, v1, :cond_4a

    .line 57
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v1

    .line 61
    const v2, 0x7f1101c5

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->cleanupAndStopService()V

    .line 74
    return-void

    .line 75
    :cond_4a
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->takeWifiLock()V

    .line 78
    :cond_4d
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->takeWakeLock()V

    .line 81
    const-string v1, "SwiFTP server ready"

    .line 83
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    const/16 v4, 0x21

    .line 90
    if-lt v1, v4, :cond_7c

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 95
    move-result-object v1

    .line 96
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 98
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_78

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 107
    move-result-object v1

    .line 108
    filled-new-array {v4}, [Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    new-instance v5, Lcom/android/fileexplorer/service/FTPServerService$2;

    .line 114
    invoke-direct {v5, p0}, Lcom/android/fileexplorer/service/FTPServerService$2;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    .line 117
    invoke-static {v1, v4, v5}, Lcom/android/fileexplorer/activity/RequestPermissionActivity;->request(Landroid/content/Context;[Ljava/lang/String;Lcom/android/fileexplorer/listener/permission/PermissionCallback;)V

    .line 120
    goto :goto_7f

    .line 121
    :cond_78
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupNotification()V

    .line 124
    goto :goto_7f

    .line 125
    :cond_7c
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->setupNotification()V

    .line 128
    :goto_7f
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 131
    move-result-object v1

    .line 132
    new-instance v4, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;

    .line 134
    invoke-direct {v4}, Lcom/android/fileexplorer/event/UpdateFTPUIEvent;-><init>()V

    .line 137
    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 140
    const-wide/16 v4, 0x0

    .line 142
    move v1, v3

    .line 143
    :goto_8e
    iget-boolean v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    .line 145
    const/4 v7, 0x0

    .line 146
    if-nez v6, :cond_139

    .line 148
    iget-boolean v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptWifi:Z

    .line 150
    if-eqz v6, :cond_bd

    .line 152
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 154
    if-eqz v6, :cond_ad

    .line 156
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    .line 159
    move-result v6

    .line 160
    if-nez v6, :cond_ad

    .line 162
    const-string v6, "Joining crashed wifiListener thread"

    .line 164
    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_a6
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 169
    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_ab} :catch_ab

    .line 172
    :catch_ab
    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 174
    :cond_ad
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 176
    if-nez v6, :cond_bd

    .line 178
    new-instance v6, Lorg/swiftp/TcpListener;

    .line 180
    iget-object v8, p0, Lcom/android/fileexplorer/service/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    .line 182
    invoke-direct {v6, v8, p0}, Lorg/swiftp/TcpListener;-><init>(Ljava/net/ServerSocket;Lcom/android/fileexplorer/service/FTPServerService;)V

    .line 185
    iput-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 187
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 190
    :cond_bd
    iget-boolean v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->acceptNet:Z

    .line 192
    if-eqz v6, :cond_12b

    .line 194
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 196
    if-eqz v6, :cond_f5

    .line 198
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    .line 201
    move-result v6

    .line 202
    if-nez v6, :cond_f5

    .line 204
    const-string v6, "Joining crashed proxy connector"

    .line 206
    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_d0
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 211
    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_d5
    .catch Ljava/lang/InterruptedException; {:try_start_d0 .. :try_end_d5} :catch_d5

    .line 214
    :catch_d5
    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 216
    new-instance v6, Ljava/util/Date;

    .line 218
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 221
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 224
    move-result-wide v6

    .line 225
    sub-long/2addr v6, v4

    .line 226
    const-wide/16 v8, 0xbb8

    .line 228
    cmp-long v6, v6, v8

    .line 230
    if-gez v6, :cond_ef

    .line 232
    const-string v6, "Incrementing proxy start failures"

    .line 234
    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    .line 239
    goto :goto_f5

    .line 240
    :cond_ef
    const-string v1, "Resetting proxy start failures"

    .line 242
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move v1, v3

    .line 246
    :cond_f5
    :goto_f5
    iget-object v6, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 248
    if-nez v6, :cond_12b

    .line 250
    new-instance v6, Ljava/util/Date;

    .line 252
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 255
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 258
    move-result-wide v6

    .line 259
    const/4 v8, 0x3

    .line 260
    if-ge v1, v8, :cond_10e

    .line 262
    sub-long v8, v6, v4

    .line 264
    const-wide/16 v10, 0x1388

    .line 266
    cmp-long v8, v8, v10

    .line 268
    if-lez v8, :cond_10e

    .line 270
    goto :goto_116

    .line 271
    :cond_10e
    sub-long v8, v6, v4

    .line 273
    const-wide/16 v10, 0x7530

    .line 275
    cmp-long v8, v8, v10

    .line 277
    if-lez v8, :cond_118

    .line 279
    :goto_116
    move v8, v2

    .line 280
    goto :goto_119

    .line 281
    :cond_118
    move v8, v3

    .line 282
    :goto_119
    if-eqz v8, :cond_12b

    .line 284
    const-string v4, "Spawning ProxyConnector"

    .line 286
    invoke-static {v0, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v4, Lorg/swiftp/ProxyConnector;

    .line 291
    invoke-direct {v4, p0}, Lorg/swiftp/ProxyConnector;-><init>(Lcom/android/fileexplorer/service/FTPServerService;)V

    .line 294
    iput-object v4, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 296
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 299
    move-wide v4, v6

    .line 300
    :cond_12b
    const-wide/16 v6, 0x3e8

    .line 302
    :try_start_12d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_130
    .catch Ljava/lang/InterruptedException; {:try_start_12d .. :try_end_130} :catch_132

    .line 305
    goto/16 :goto_8e

    .line 307
    :catch_132
    const-string v6, "Thread interrupted"

    .line 309
    invoke-static {v0, v6}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    goto/16 :goto_8e

    .line 314
    :cond_139
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->terminateAllSessions()V

    .line 317
    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 319
    if-eqz v1, :cond_145

    .line 321
    invoke-virtual {v1}, Lorg/swiftp/ProxyConnector;->quit()V

    .line 324
    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 326
    :cond_145
    iget-object v1, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 328
    if-eqz v1, :cond_14e

    .line 330
    invoke-virtual {v1}, Lorg/swiftp/TcpListener;->quit()V

    .line 333
    iput-object v7, p0, Lcom/android/fileexplorer/service/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 335
    :cond_14e
    iput-boolean v3, p0, Lcom/android/fileexplorer/service/FTPServerService;->shouldExit:Z

    .line 337
    const-string v1, "Exiting cleanly, returning from run()"

    .line 339
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->clearNotification()V

    .line 345
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWakeLock()V

    .line 348
    invoke-direct {p0}, Lcom/android/fileexplorer/service/FTPServerService;->releaseWifiLock()V

    .line 351
    return-void
.end method

.method public setPort(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/service/FTPServerService;->port:I

    .line 3
    return-void
.end method
