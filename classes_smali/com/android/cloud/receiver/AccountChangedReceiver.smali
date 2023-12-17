.class public Lcom/android/cloud/receiver/AccountChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p2, :cond_d

    .line 5
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    const-string v3, "null intent"

    .line 9
    aput-object v3, v2, v0

    .line 11
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 14
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_23

    .line 26
    new-array p1, v1, [Ljava/lang/Object;

    .line 28
    const-string p2, "Intent action not matched, exit."

    .line 30
    aput-object p2, p1, v0

    .line 32
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 35
    return-void

    .line 36
    :cond_23
    new-array p2, v1, [Ljava/lang/Object;

    .line 38
    const-string v2, "System account changed"

    .line 40
    aput-object v2, p2, v0

    .line 42
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 48
    move-result-object p2

    .line 49
    if-nez p2, :cond_45

    .line 51
    new-array p2, v1, [Ljava/lang/Object;

    .line 53
    const-string v1, "mi account removed"

    .line 55
    aput-object v1, p2, v0

    .line 57
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2, p1}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    .line 67
    invoke-static {p1}, Lcom/micloud/midrive/notification/NotificationUtils;->cancelCancelableNotificationIfNoXiaomiAccount(Landroid/content/Context;)V

    .line 70
    :cond_45
    return-void
.end method
