.class public Lcom/android/cloud/util/helper/NotificationBarHelper;
.super Ljava/lang/Object;
.source "NotificationBarHelper.java"


# static fields
.field private static final DEFAULT_NOTIFICATION_TIME:J = 0xf731400L

.field private static final KEY_LAST_TIME_NOTIFICATION:Ljava/lang/String; = "last_time_notification"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "last_time_notification_close"


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

.method public static saveLastCloseStorageFullNotifyBarTime(Landroid/content/Context;)V
    .registers 4

    const-string v0, "last_time_notification_close"

    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_time_notification"

    invoke-interface {p0, v2, v0, v1}, Lcom/micloud/midrive/utils/ISharedPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static shouldShowNotifyBar(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "last_time_notification_close"

    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;

    move-result-object p0

    const-string v0, "last_time_notification"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/micloud/midrive/utils/ISharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf731400

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method
