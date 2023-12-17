.class public Lcom/android/fileexplorer/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Notification$Builder;

    .line 3
    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public static createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    if-nez p0, :cond_a

    .line 3
    const-string p0, "NotificationUtil"

    .line 5
    const-string p1, "createNotificationChannel error manager is null"

    .line 7
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Landroid/app/NotificationChannel;

    .line 13
    const/4 v1, 0x3

    .line 14
    const-string v2, "notify_name_ftpService"

    .line 16
    invoke-direct {v0, p1, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 19
    const-string p1, "channel for ftp service"

    .line 21
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 31
    return-void
.end method
