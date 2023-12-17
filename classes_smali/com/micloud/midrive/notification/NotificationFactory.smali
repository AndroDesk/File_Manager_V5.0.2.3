.class public Lcom/micloud/midrive/notification/NotificationFactory;
.super Ljava/lang/Object;
.source "NotificationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;,
        Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;,
        Lcom/micloud/midrive/notification/NotificationFactory$AppRunningText;,
        Lcom/micloud/midrive/notification/NotificationFactory$TitleText;
    }
.end annotation


# static fields
.field public static final CANCELABLE_NOTIFICATION_ID:I = 0xc9

.field public static final ID_NOTIFICATION_CHANNEL_REMIND:Ljava/lang/String; = "ID_NOTIFICATION_CHANNEL_REMIND"

.field public static final ID_NOTIFICATION_CHANNEL_SERVICE:Ljava/lang/String; = "ID_NOTIFICATION_CHANNEL_SERVICE"

.field public static final PERMANENT_NOTIFICATION_ID:I = 0xc8


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceFinishedNotification(Landroid/content/Context;II)Landroid/app/Notification;
    .registers 9

    .line 1
    new-instance v2, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;

    .line 3
    invoke-direct {v2}, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;-><init>()V

    .line 6
    new-instance v3, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;

    .line 8
    invoke-direct {v3, p1, p2}, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;-><init>(II)V

    .line 11
    new-instance v4, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;

    .line 13
    invoke-direct {v4}, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;-><init>()V

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    move-object v0, p0

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getServiceRunningNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 7

    .line 1
    new-instance v2, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;

    .line 3
    invoke-direct {v2}, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;-><init>()V

    .line 6
    new-instance v3, Lcom/micloud/midrive/notification/NotificationFactory$AppRunningText;

    .line 8
    invoke-direct {v3}, Lcom/micloud/midrive/notification/NotificationFactory$AppRunningText;-><init>()V

    .line 11
    new-instance v4, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;

    .line 13
    invoke-direct {v4}, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;-><init>()V

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v0, p0

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;
    .registers 9

    .line 1
    if-eqz p5, :cond_5

    .line 3
    const/16 v0, 0xc9

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const/16 v0, 0xc8

    .line 8
    :goto_7
    if-eqz p5, :cond_c

    .line 10
    const-string v1, "ID_NOTIFICATION_CHANNEL_REMIND"

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-string v1, "ID_NOTIFICATION_CHANNEL_SERVICE"

    .line 15
    :goto_e
    new-instance v2, Landroid/app/Notification$Builder;

    .line 17
    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 23
    move-result-object p5

    .line 24
    invoke-interface {p4, p0, v0}, Lcom/micloud/midrive/notification/ContentIntent;->createPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 27
    move-result-object p4

    .line 28
    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 31
    move-result-object p4

    .line 32
    if-eqz p1, :cond_29

    .line 34
    invoke-interface {p1}, Lcom/micloud/midrive/notification/ContentIcon;->getIcon()I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 41
    goto :goto_37

    .line 42
    :cond_29
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 44
    const/4 p5, 0x1

    .line 45
    invoke-static {p5, p5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 56
    :goto_37
    if-eqz p2, :cond_40

    .line 58
    invoke-interface {p2, p0}, Lcom/micloud/midrive/notification/ContentText;->getText(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    :cond_40
    if-eqz p3, :cond_49

    .line 67
    invoke-interface {p3, p0}, Lcom/micloud/midrive/notification/ContentText;->getText(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 74
    :cond_49
    invoke-static {p0, p4, v1}, Lcom/micloud/midrive/notification/NotificationBuilderActivator;->activateNotificationBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 77
    return-object p4
.end method

.method public static getSingleClearTopActivityPendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/micloud/midrive/notification/NotificationFactory;->getSingleClearTopActivityPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleClearTopActivityPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .registers 5

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x34000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_f

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_f
    const/high16 p1, 0x14000000

    .line 5
    invoke-static {p0, p3, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
