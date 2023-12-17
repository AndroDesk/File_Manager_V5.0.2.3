.class public Lcom/micloud/midrive/notification/ServiceNotificationHelper;
.super Ljava/lang/Object;
.source "ServiceNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/notification/ServiceNotificationHelper$DefaultNotificationProxy;,
        Lcom/micloud/midrive/notification/ServiceNotificationHelper$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mFinishedProgressInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/notification/ServiceProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdateProgressTime:J

.field private mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

.field private final mRunningProgressInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/notification/ServiceProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    new-instance v0, Lcom/micloud/midrive/notification/ServiceNotificationHelper$DefaultNotificationProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper$DefaultNotificationProxy;-><init>(Lcom/micloud/midrive/notification/ServiceNotificationHelper$1;)V

    iput-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/notification/ServiceNotificationHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;
    .registers 1

    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper$SingletonHolder;->access$100()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    move-result-object v0

    return-object v0
.end method

.method private getProgressNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 8

    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    if-nez v4, :cond_1d

    move v5, v1

    goto :goto_1f

    :cond_1d
    iget v5, v4, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    :goto_1f
    add-int/2addr v2, v5

    if-nez v4, :cond_24

    move v4, v1

    goto :goto_26

    :cond_24
    iget-boolean v4, v4, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    :goto_26
    or-int/2addr v3, v4

    goto :goto_d

    :cond_28
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    invoke-interface {v0, p1, v2, v3}, Lcom/micloud/midrive/notification/ServiceNotificationProxy;->getServiceProgressNotification(Landroid/content/Context;IZ)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized setNotificationProxy(Lcom/micloud/midrive/notification/ServiceNotificationProxy;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateServiceFinish(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V
    .registers 9

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update service finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2f

    iget v0, p3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    if-eqz v0, :cond_2f

    const/4 p3, 0x0

    :cond_2f
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v2

    move v0, p3

    move v1, v0

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    if-nez v3, :cond_51

    move v4, v2

    goto :goto_53

    :cond_51
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    :goto_53
    add-int/2addr p3, v4

    if-nez v3, :cond_58

    move v4, v2

    goto :goto_5a

    :cond_58
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    :goto_5a
    add-int/2addr v0, v4

    if-nez v3, :cond_5f

    move v3, v2

    goto :goto_61

    :cond_5f
    iget v3, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    :goto_61
    add-int/2addr v1, v3

    goto :goto_41

    :cond_63
    iget-object p2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    if-nez v3, :cond_7d

    move v4, v2

    goto :goto_7f

    :cond_7d
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    :goto_7f
    add-int/2addr p3, v4

    if-nez v3, :cond_84

    move v4, v2

    goto :goto_86

    :cond_84
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    :goto_86
    add-int/2addr v0, v4

    if-nez v3, :cond_8b

    move v3, v2

    goto :goto_8d

    :cond_8b
    iget v3, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    :goto_8d
    add-int/2addr v1, v3

    goto :goto_6d

    :cond_8f
    if-nez p3, :cond_a3

    add-int p2, v0, v1

    if-eqz p2, :cond_a3

    iget-object p2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    invoke-interface {p2, p1, v0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationProxy;->getServiceFinishNotification(Landroid/content/Context;II)Landroid/app/Notification;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/micloud/midrive/notification/NotificationUtils;->notifyCancelableNotification(Landroid/content/Context;Landroid/app/Notification;)V

    iget-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_a3
    .catchall {:try_start_2 .. :try_end_a3} :catchall_a5

    :cond_a3
    monitor-exit p0

    return-void

    :catchall_a5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateServiceProgress(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update service progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz p3, :cond_37

    iget v1, p3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    if-nez v1, :cond_37

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "invalid service progress, IGNORE."

    aput-object p2, p1, v3

    aput-object p3, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_70

    monitor-exit p0

    return-void

    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    iget-object v2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4f

    if-eqz p3, :cond_4f

    iget-boolean p2, v1, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    iget-boolean p3, p3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    if-eq p2, p3, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v3

    :goto_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mLastUpdateProgressTime:J
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_70

    sub-long/2addr p2, v1

    const-wide/16 v1, 0x3e8

    cmp-long p2, p2, v1

    if-gez p2, :cond_61

    if-nez v0, :cond_61

    monitor-exit p0

    return-void

    :cond_61
    :try_start_61
    invoke-direct {p0, p1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getProgressNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/micloud/midrive/notification/NotificationUtils;->notifyPermanentNotification(Landroid/content/Context;Landroid/app/Notification;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mLastUpdateProgressTime:J
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_70

    monitor-exit p0

    return-void

    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateServiceStart(Landroid/app/Service;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update service start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/notification/ServiceNotificationProxy;->getServiceStartNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_2e

    :cond_2a
    invoke-direct {p0, p1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getProgressNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    :goto_2e
    invoke-static {p1, v0}, Lcom/micloud/midrive/notification/NotificationUtils;->startForegroundServiceWithNotification(Landroid/app/Service;Landroid/app/Notification;)V

    iget-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
