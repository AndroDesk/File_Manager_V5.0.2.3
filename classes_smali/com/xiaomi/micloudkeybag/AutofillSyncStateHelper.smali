.class public Lcom/xiaomi/micloudkeybag/AutofillSyncStateHelper;
.super Ljava/lang/Object;
.source "AutofillSyncStateHelper.java"


# static fields
.field private static final AUTOFILL_AUTOHROTY:Ljava/lang/String; = "miui.autofill"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncStatus(Landroid/content/Context;Landroid/accounts/Account;)I
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;

    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 p0, 0x2

    .line 7
    :try_start_6
    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->getKeyBagSupported(Landroid/accounts/Account;)Z

    .line 10
    move-result v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_a} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_27
    .catchall {:try_start_6 .. :try_end_a} :catchall_25

    .line 11
    if-nez v1, :cond_10

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->release()V

    .line 16
    return p0

    .line 17
    :cond_10
    :try_start_10
    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->isInstalled(Landroid/accounts/Account;)Z

    .line 20
    move-result v1
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_14} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_27
    .catchall {:try_start_10 .. :try_end_14} :catchall_25

    .line 21
    if-nez v1, :cond_1b

    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->release()V

    .line 27
    return p0

    .line 28
    :cond_1b
    :try_start_1b
    const-string v1, "miui.autofill"

    .line 30
    invoke-static {p1, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 33
    move-result p0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_21} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_27
    .catchall {:try_start_1b .. :try_end_21} :catchall_25

    .line 34
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->release()V

    .line 37
    return p0

    .line 38
    :catchall_25
    move-exception p0

    .line 39
    goto :goto_36

    .line 40
    :catch_27
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->release()V

    .line 43
    return p0

    .line 44
    :catch_2b
    :try_start_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_25

    .line 51
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->release()V

    .line 54
    return p0

    .line 55
    :goto_36
    invoke-virtual {v0}, Lcom/xiaomi/micloudkeybag/MiCloudKeyBagServiceManager;->release()V

    .line 58
    throw p0
.end method
