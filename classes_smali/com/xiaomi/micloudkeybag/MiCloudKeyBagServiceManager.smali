.class public Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;
.super Ljava/lang/Object;
.source "MiCloudKeyBagServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.miui.cloudservice.MICLOUD_KEYBAG"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.miui.cloudservice"

.field private static final TAG:Ljava/lang/String; = "MiCloudKeyBagServiceManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBind:Z

.field private mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private declared-synchronized getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mIsBind:Z

    .line 4
    if-nez v0, :cond_29

    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    const-string v1, "com.miui.cloudservice.MICLOUD_KEYBAG"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string v1, "com.miui.cloudservice"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mContext:Landroid/content/Context;

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_27

    .line 30
    const-string v0, "MiCloudKeyBagServiceManager"

    .line 32
    const-string v1, "cannot bind service"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_33

    .line 37
    const/4 v0, 0x0

    .line 38
    monitor-exit p0

    .line 39
    return-object v0

    .line 40
    :cond_27
    :try_start_27
    iput-boolean v2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mIsBind:Z

    .line 42
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 44
    if-nez v0, :cond_31

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_33

    .line 49
    goto :goto_29

    .line 50
    :cond_31
    monitor-exit p0

    .line 51
    return-object v0

    .line 52
    :catchall_33
    move-exception v0

    .line 53
    monitor-exit p0

    .line 54
    throw v0
.end method


# virtual methods
.method public getCipher(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;
    .registers 6

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-object v1

    .line 12
    :cond_b
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_18

    .line 18
    new-instance v1, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;

    .line 20
    iget-wide v2, v0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->version:J

    .line 22
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;Landroid/accounts/Account;J)V

    .line 25
    :cond_18
    return-object v1
.end method

.method public getKeyBagSupported(Landroid/accounts/Account;)Z
    .registers 7

    .line 1
    const-string v0, "call isSupported failed, return lastSupported result"

    .line 3
    const-string v1, "MiCloudKeyBagServiceManager"

    .line 5
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_f

    .line 15
    return v3

    .line 16
    :cond_f
    :try_start_f
    new-instance v4, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$1;

    .line 18
    invoke-direct {v4, p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$1;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)V

    .line 21
    invoke-interface {v2, p1, v4}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isSupported(Landroid/accounts/Account;Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    .line 24
    invoke-virtual {v4}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->getResult()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_26
    .catch Lcom/xiaomi/micloudkeybag/OperateFailedException; {:try_start_f .. :try_end_21} :catch_22

    .line 34
    return p1

    .line 35
    :catch_22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    goto :goto_29

    .line 39
    :catch_26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_29
    :try_start_29
    invoke-interface {v2, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isLastSupported(Landroid/accounts/Account;)Z

    .line 45
    move-result p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 46
    return p1

    .line 47
    :catch_2e
    const-string p1, "call isLastSupported failed, return false"

    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v3
.end method

.method public isInstalled(Landroid/accounts/Account;)Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return v1

    .line 12
    :cond_b
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_12

    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_12
    return v1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p2}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    const-string p1, "MiCloudKeyBagServiceManager"

    .line 13
    const-string p2, "onServiceConnected"

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x0

    .line 3
    :try_start_2
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 5
    const-string p1, "MiCloudKeyBagServiceManager"

    .line 7
    const-string v0, "onServiceDisConnected"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public release()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 10
    :cond_9
    return-void
.end method
