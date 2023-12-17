.class public Lcom/micloud/midrive/notification/NotificationBuilderActivator;
.super Ljava/lang/Object;
.source "NotificationBuilderActivator.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NotificationBuilderActivator class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static activateNotificationBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 5

    const-string v0, "ID_NOTIFICATION_CHANNEL_SERVICE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    const-string v0, "Services"

    invoke-static {p0, p2, v0, v0, v1}, Lmiui/cloud/app/NotificationChannelAdapter;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1c

    :cond_f
    const-string v0, "ID_NOTIFICATION_CHANNEL_REMIND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "Reminders"

    invoke-static {p0, p2, v0, v0, v1}, Lmiui/cloud/app/NotificationChannelAdapter;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1c
    invoke-static {p1, p2}, Lmiui/cloud/app/NotificationChannelAdapter;->setChannelId(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    return-object p1

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument channel id is illegal."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
