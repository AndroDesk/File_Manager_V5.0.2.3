.class public Lcom/micloud/midrive/notification/NotificationBuilderActivator;
.super Ljava/lang/Object;
.source "NotificationBuilderActivator.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "NotificationBuilderActivator class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static activateNotificationBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 5

    .line 1
    const-string v0, "ID_NOTIFICATION_CHANNEL_SERVICE"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_f

    .line 10
    const-string v0, "Services"

    .line 12
    invoke-static {p0, p2, v0, v0, v1}, Lmiui/cloud/app/NotificationChannelAdapter;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    goto :goto_1c

    .line 16
    :cond_f
    const-string v0, "ID_NOTIFICATION_CHANNEL_REMIND"

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_20

    .line 24
    const-string v0, "Reminders"

    .line 26
    invoke-static {p0, p2, v0, v0, v1}, Lmiui/cloud/app/NotificationChannelAdapter;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    :goto_1c
    invoke-static {p1, p2}, Lmiui/cloud/app/NotificationChannelAdapter;->setChannelId(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 32
    return-object p1

    .line 33
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    const-string p1, "argument channel id is illegal."

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
.end method
