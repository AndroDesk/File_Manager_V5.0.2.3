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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mIsBind:Z

    if-nez v0, :cond_29

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.cloudservice.MICLOUD_KEYBAG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "MiCloudKeyBagServiceManager"

    const-string v1, "cannot bind service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_33

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_27
    :try_start_27
    iput-boolean v2, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mIsBind:Z

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    if-nez v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_33

    goto :goto_29

    :cond_31
    monitor-exit p0

    return-object v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCipher(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;
    .registers 6

    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;

    iget-wide v2, v0, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->version:J

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$Cipher;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;Landroid/accounts/Account;J)V

    :cond_18
    return-object v1
.end method

.method public getKeyBagSupported(Landroid/accounts/Account;)Z
    .registers 7

    const-string v0, "call isSupported failed, return lastSupported result"

    const-string v1, "MiCloudKeyBagServiceManager"

    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    return v3

    :cond_f
    :try_start_f
    new-instance v4, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager$1;-><init>(Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;)V

    invoke-interface {v2, p1, v4}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isSupported(Landroid/accounts/Account;Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    invoke-virtual {v4}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_26
    .catch Lcom/xiaomi/micloudkeybag/OperateFailedException; {:try_start_f .. :try_end_21} :catch_22

    return p1

    :catch_22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :catch_26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    :try_start_29
    invoke-interface {v2, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isLastSupported(Landroid/accounts/Account;)Z

    move-result p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_2e

    return p1

    :catch_2e
    const-string p1, "call isLastSupported failed, return false"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isInstalled(Landroid/accounts/Account;)Z
    .registers 4

    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getService()Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    :cond_b
    invoke-interface {v0, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p1, "MiCloudKeyBagServiceManager"

    const-string p2, "onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    const-string p1, "MiCloudKeyBagServiceManager"

    const-string v0, "onServiceDisConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mService:Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    return-void
.end method
