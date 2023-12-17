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
.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/micloud/midrive/notification/ServiceNotificationHelper$DefaultNotificationProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper$DefaultNotificationProxy;-><init>(Lcom/micloud/midrive/notification/ServiceNotificationHelper$1;)V

    iput-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/notification/ServiceNotificationHelper$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;
    .registers 1

    .line 1
    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper$SingletonHolder;->access$100()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private getProgressNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_28

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    .line 26
    if-nez v4, :cond_1d

    .line 28
    move v5, v1

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    iget v5, v4, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    .line 32
    :goto_1f
    add-int/2addr v2, v5

    .line 33
    if-nez v4, :cond_24

    .line 35
    move v4, v1

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    iget-boolean v4, v4, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    .line 39
    :goto_26
    or-int/2addr v3, v4

    .line 40
    goto :goto_d

    .line 41
    :cond_28
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    .line 43
    invoke-interface {v0, p1, v2, v3}, Lcom/micloud/midrive/notification/ServiceNotificationProxy;->getServiceProgressNotification(Landroid/content/Context;IZ)Landroid/app/Notification;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method


# virtual methods
.method public declared-synchronized setNotificationProxy(Lcom/micloud/midrive/notification/ServiceNotificationProxy;)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public declared-synchronized updateServiceFinish(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "update service finish "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object v1, v0, v2

    .line 33
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 38
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    if-eqz p3, :cond_2f

    .line 43
    iget v0, p3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    .line 45
    if-eqz v0, :cond_2f

    .line 47
    const/4 p3, 0x0

    .line 48
    :cond_2f
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    .line 50
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 55
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object p2

    .line 63
    move p3, v2

    .line 64
    move v0, p3

    .line 65
    move v1, v0

    .line 66
    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_63

    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    .line 78
    if-nez v3, :cond_51

    .line 80
    move v4, v2

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    .line 84
    :goto_53
    add-int/2addr p3, v4

    .line 85
    if-nez v3, :cond_58

    .line 87
    move v4, v2

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    .line 91
    :goto_5a
    add-int/2addr v0, v4

    .line 92
    if-nez v3, :cond_5f

    .line 94
    move v3, v2

    .line 95
    goto :goto_61

    .line 96
    :cond_5f
    iget v3, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    .line 98
    :goto_61
    add-int/2addr v1, v3

    .line 99
    goto :goto_41

    .line 100
    :cond_63
    iget-object p2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    .line 102
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 105
    move-result-object p2

    .line 106
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object p2

    .line 110
    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_8f

    .line 116
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    .line 122
    if-nez v3, :cond_7d

    .line 124
    move v4, v2

    .line 125
    goto :goto_7f

    .line 126
    :cond_7d
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    .line 128
    :goto_7f
    add-int/2addr p3, v4

    .line 129
    if-nez v3, :cond_84

    .line 131
    move v4, v2

    .line 132
    goto :goto_86

    .line 133
    :cond_84
    iget v4, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->success:I

    .line 135
    :goto_86
    add-int/2addr v0, v4

    .line 136
    if-nez v3, :cond_8b

    .line 138
    move v3, v2

    .line 139
    goto :goto_8d

    .line 140
    :cond_8b
    iget v3, v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->fail:I

    .line 142
    :goto_8d
    add-int/2addr v1, v3

    .line 143
    goto :goto_6d

    .line 144
    :cond_8f
    if-nez p3, :cond_a3

    .line 146
    add-int p2, v0, v1

    .line 148
    if-eqz p2, :cond_a3

    .line 150
    iget-object p2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    .line 152
    invoke-interface {p2, p1, v0, v1}, Lcom/micloud/midrive/notification/ServiceNotificationProxy;->getServiceFinishNotification(Landroid/content/Context;II)Landroid/app/Notification;

    .line 155
    move-result-object p2

    .line 156
    invoke-static {p1, p2}, Lcom/micloud/midrive/notification/NotificationUtils;->notifyCancelableNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 159
    iget-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_a3
    .catchall {:try_start_2 .. :try_end_a3} :catchall_a5

    .line 164
    :cond_a3
    monitor-exit p0

    .line 165
    return-void

    .line 166
    :catchall_a5
    move-exception p1

    .line 167
    monitor-exit p0

    .line 168
    throw p1
.end method

.method public declared-synchronized updateServiceProgress(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v3, "update service progress "

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v3, " "

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 33
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 36
    if-eqz p3, :cond_37

    .line 38
    iget v1, p3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->ongoing:I

    .line 40
    if-nez v1, :cond_37

    .line 42
    const/4 p1, 0x2

    .line 43
    new-array p1, p1, [Ljava/lang/Object;

    .line 45
    const-string p2, "invalid service progress, IGNORE."

    .line 47
    aput-object p2, p1, v3

    .line 49
    aput-object p3, p1, v0

    .line 51
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_70

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 58
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    .line 64
    iget-object v2, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 66
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    if-eqz v1, :cond_4f

    .line 71
    if-eqz p3, :cond_4f

    .line 73
    iget-boolean p2, v1, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    .line 75
    iget-boolean p3, p3, Lcom/micloud/midrive/notification/ServiceProgressInfo;->waitNetwork:Z

    .line 77
    if-eq p2, p3, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v0, v3

    .line 81
    :goto_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    move-result-wide p2

    .line 85
    iget-wide v1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mLastUpdateProgressTime:J
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_70

    .line 87
    sub-long/2addr p2, v1

    .line 88
    const-wide/16 v1, 0x3e8

    .line 90
    cmp-long p2, p2, v1

    .line 92
    if-gez p2, :cond_61

    .line 94
    if-nez v0, :cond_61

    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :cond_61
    :try_start_61
    invoke-direct {p0, p1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getProgressNotification(Landroid/content/Context;)Landroid/app/Notification;

    .line 101
    move-result-object p2

    .line 102
    invoke-static {p1, p2}, Lcom/micloud/midrive/notification/NotificationUtils;->notifyPermanentNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    move-result-wide p1

    .line 109
    iput-wide p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mLastUpdateProgressTime:J
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_70

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :catchall_70
    move-exception p1

    .line 114
    monitor-exit p0

    .line 115
    throw p1
.end method

.method public declared-synchronized updateServiceStart(Landroid/app/Service;Ljava/lang/String;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v3, "update service start "

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2a

    .line 36
    iget-object v0, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mProxy:Lcom/micloud/midrive/notification/ServiceNotificationProxy;

    .line 38
    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/notification/ServiceNotificationProxy;->getServiceStartNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    .line 41
    move-result-object v0

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-direct {p0, p1}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getProgressNotification(Landroid/content/Context;)Landroid/app/Notification;

    .line 46
    move-result-object v0

    .line 47
    :goto_2e
    invoke-static {p1, v0}, Lcom/micloud/midrive/notification/NotificationUtils;->startForegroundServiceWithNotification(Landroid/app/Service;Landroid/app/Notification;)V

    .line 50
    iget-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mRunningProgressInfoMap:Ljava/util/Map;

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->mFinishedProgressInfoMap:Ljava/util/Map;

    .line 58
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3e

    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    monitor-exit p0

    .line 65
    throw p1
.end method
