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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceFinishNotification(Landroid/content/Context;II)Landroid/app/Notification;
    .registers 10

    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy$Icon;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/cloud/session/SessionNotificationProxy$Icon;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    new-instance v2, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultTitle;

    invoke-direct {v2, v0}, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultTitle;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    new-instance v3, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;

    invoke-direct {v3, p2, p3}, Lcom/android/cloud/session/SessionNotificationProxy$SyncedResultMessage;-><init>(II)V

    new-instance v4, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;

    invoke-direct {v4, v0}, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getServiceProgressNotification(Landroid/content/Context;IZ)Landroid/app/Notification;
    .registers 10

    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy$Icon;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/cloud/session/SessionNotificationProxy$Icon;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    if-eqz p3, :cond_e

    new-instance p3, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;

    invoke-direct {p3, p2}, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCountWaitNetwork;-><init>(I)V

    goto :goto_13

    :cond_e
    new-instance p3, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;

    invoke-direct {p3, p2}, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitleWithCount;-><init>(I)V

    :goto_13
    move-object v2, p3

    const/4 v3, 0x0

    new-instance v4, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;

    invoke-direct {v4, v0}, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getServiceStartNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .registers 9

    new-instance v1, Lcom/android/cloud/session/SessionNotificationProxy$Icon;

    const/4 p2, 0x0

    invoke-direct {v1, p2}, Lcom/android/cloud/session/SessionNotificationProxy$Icon;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    new-instance v2, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitle;

    invoke-direct {v2, p2}, Lcom/android/cloud/session/SessionNotificationProxy$SyncingTitle;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    new-instance v4, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;

    invoke-direct {v4, p2}, Lcom/android/cloud/session/SessionNotificationProxy$CloudDriveTabIntent;-><init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
