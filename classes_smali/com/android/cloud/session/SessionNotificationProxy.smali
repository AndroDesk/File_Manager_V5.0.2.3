.class public Lcom/android/cloud/session/SessionNotificationProxy;
.super Ljava/lang/Object;
.source "SessionNotificationProxy.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ServiceNotificationProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;,
        Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;,
        Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultTitle;,
        Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitle;,
        Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;,
        Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;,
        Lcom/android/cloud/session/SessionNotificationProxy$Icon;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceFinishNotification(Landroid/content/Context;II)Landroid/app/Notification;
    .registers 10

    .line 1
    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy$Icon;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v1, v0}, Lcom/android/cloud/session/SessionNotificationProxy$Icon;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 7
    new-instance v2, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultTitle;

    .line 9
    invoke-direct {v2, v0}, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultTitle;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 12
    new-instance v3, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;

    .line 14
    invoke-direct {v3, p2, p3}, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;-><init>(II)V

    .line 17
    new-instance v4, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;

    .line 19
    invoke-direct {v4, v0}, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 22
    const/4 v5, 0x1

    .line 23
    move-object v0, p1

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public getServiceProgressNotification(Landroid/content/Context;IZ)Landroid/app/Notification;
    .registers 10

    .line 1
    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy$Icon;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v1, v0}, Lcom/android/cloud/session/SessionNotificationProxy$Icon;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 7
    if-eqz p3, :cond_e

    .line 9
    new-instance p3, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;

    .line 11
    invoke-direct {p3, p2}, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;-><init>(I)V

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    new-instance p3, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;

    .line 17
    invoke-direct {p3, p2}, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;-><init>(I)V

    .line 20
    :goto_13
    move-object v2, p3

    .line 21
    const/4 v3, 0x0

    .line 22
    new-instance v4, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;

    .line 24
    invoke-direct {v4, v0}, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v0, p1

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getServiceStartNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .registers 9

    .line 1
    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy$Icon;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {v1, p2}, Lcom/android/cloud/session/SessionNotificationProxy$Icon;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 7
    new-instance v2, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitle;

    .line 9
    invoke-direct {v2, p2}, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitle;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 12
    new-instance v4, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;

    .line 14
    invoke-direct {v4, p2}, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v0, p1

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
