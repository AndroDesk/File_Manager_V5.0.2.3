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
.field public static final CANCELABLE_NOTIFICATION_ID:I

.field public static final ID_NOTIFICATION_CHANNEL_REMIND:Ljava/lang/String; = "ID_NOTIFICATION_CHANNEL_REMIND"

.field public static final ID_NOTIFICATION_CHANNEL_SERVICE:Ljava/lang/String; = "ID_NOTIFICATION_CHANNEL_SERVICE"

.field public static final PERMANENT_NOTIFICATION_ID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d5f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/notification/NotificationFactory;->CANCELABLE_NOTIFICATION_ID:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/notification/NotificationFactory;->PERMANENT_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceFinishedNotification(Landroid/content/Context;II)Landroid/app/Notification;
    .registers 9

    new-instance v2, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;

    invoke-direct {v2}, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;-><init>()V

    new-instance v3, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;

    invoke-direct {v3, p1, p2}, Lcom/micloud/midrive/notification/NotificationFactory$ServiceFinishedText;-><init>(II)V

    new-instance v4, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;

    invoke-direct {v4}, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;-><init>()V

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceRunningNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 7

    new-instance v2, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;

    invoke-direct {v2}, Lcom/micloud/midrive/notification/NotificationFactory$TitleText;-><init>()V

    new-instance v3, Lcom/micloud/midrive/notification/NotificationFactory$AppRunningText;

    invoke-direct {v3}, Lcom/micloud/midrive/notification/NotificationFactory$AppRunningText;-><init>()V

    new-instance v4, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;

    invoke-direct {v4}, Lcom/micloud/midrive/notification/NotificationFactory$MainPageIntent;-><init>()V

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/micloud/midrive/notification/NotificationFactory;->getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleNotificationBuilder(Landroid/content/Context;Lcom/micloud/midrive/notification/ContentIcon;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentText;Lcom/micloud/midrive/notification/ContentIntent;Z)Landroid/app/Notification$Builder;
    .registers 9

    if-eqz p5, :cond_5

    const/16 v0, 0xc9

    goto :goto_7

    :cond_5
    const/16 v0, 0xc8

    :goto_7
    if-eqz p5, :cond_c

    const-string v1, "ID_NOTIFICATION_CHANNEL_REMIND"

    goto :goto_e

    :cond_c
    const-string v1, "ID_NOTIFICATION_CHANNEL_SERVICE"

    :goto_e
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p5

    invoke-interface {p4, p0, v0}, Lcom/micloud/midrive/notification/ContentIntent;->createPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p4

    if-eqz p1, :cond_29

    invoke-interface {p1}, Lcom/micloud/midrive/notification/ContentIcon;->getIcon()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_37

    :cond_29
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 p5, 0x1

    invoke-static {p5, p5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :goto_37
    if-eqz p2, :cond_40

    invoke-interface {p2, p0}, Lcom/micloud/midrive/notification/ContentText;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_40
    if-eqz p3, :cond_49

    invoke-interface {p3, p0}, Lcom/micloud/midrive/notification/ContentText;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_49
    invoke-static {p0, p4, v1}, Lcom/micloud/midrive/notification/NotificationBuilderActivator;->activateNotificationBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object p4
.end method

.method public static getSingleClearTopActivityPendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/micloud/midrive/notification/NotificationFactory;->getSingleClearTopActivityPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleClearTopActivityPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x34000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_f

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_f
    const/high16 p1, 0x14000000

    invoke-static {p0, p3, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
