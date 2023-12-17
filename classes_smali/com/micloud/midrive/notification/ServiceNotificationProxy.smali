.class public interface abstract Lcom/micloud/midrive/notification/ServiceNotificationProxy;
.super Ljava/lang/Object;
.source "ServiceNotificationProxy.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getServiceFinishNotification(Landroid/content/Context;II)Landroid/app/Notification;
.end method

.method public abstract getServiceProgressNotification(Landroid/content/Context;IZ)Landroid/app/Notification;
.end method

.method public abstract getServiceStartNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
.end method
