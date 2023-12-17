.class public Lcom/android/cloud/receiver/AccountChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountChangedReceiver.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_d

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "null intent"

    aput-object v3, v2, v0

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Intent action not matched, exit."

    aput-object p2, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void

    :cond_23
    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "System account changed"

    aput-object v2, p2, v0

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p2

    if-nez p2, :cond_45

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "mi account removed"

    aput-object v1, p2, v0

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/micloud/midrive/notification/NotificationUtils;->cancelCancelableNotificationIfNoXiaomiAccount(Landroid/content/Context;)V

    :cond_45
    return-void
.end method
