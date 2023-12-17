.class public Lcom/micloud/midrive/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "NotificationUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static cancelCancelableNotificationIfNoXiaomiAccount(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1e

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "No Account, cancel notification."

    .line 13
    aput-object v2, v0, v1

    .line 15
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 18
    const-string v0, "notification"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/NotificationManager;

    .line 26
    const/16 v0, 0xc9

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 31
    :cond_1e
    return-void
.end method

.method public static notifyCancelableNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "Cancelable notification"

    .line 7
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    const-string v0, "notification"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/NotificationManager;

    .line 20
    const/16 v0, 0xc9

    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 25
    return-void
.end method

.method public static notifyPermanentNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "Permanent notification"

    .line 7
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    const-string v0, "notification"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/NotificationManager;

    .line 20
    const/16 v0, 0xc9

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 25
    const/16 v0, 0xc8

    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 30
    return-void
.end method

.method public static startForegroundServiceWithNotification(Landroid/app/Service;Landroid/app/Notification;)V
    .registers 3

    .line 1
    const/16 v0, 0xc8

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 6
    return-void
.end method
