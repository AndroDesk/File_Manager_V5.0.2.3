.class Lcom/micloud/midrive/notification/ServiceNotificationHelper$DefaultNotificationProxy;
.super Ljava/lang/Object;
.source "ServiceNotificationHelper.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ServiceNotificationProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/notification/ServiceNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultNotificationProxy"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/notification/ServiceNotificationHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/notification/ServiceNotificationHelper$DefaultNotificationProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceFinishNotification(Landroid/content/Context;II)Landroid/app/Notification;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/micloud/midrive/notification/NotificationFactory;->getServiceFinishedNotification(Landroid/content/Context;II)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getServiceProgressNotification(Landroid/content/Context;IZ)Landroid/app/Notification;
    .registers 4

    invoke-static {p1}, Lcom/micloud/midrive/notification/NotificationFactory;->getServiceRunningNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getServiceStartNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .registers 3

    invoke-static {p1}, Lcom/micloud/midrive/notification/NotificationFactory;->getServiceRunningNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
