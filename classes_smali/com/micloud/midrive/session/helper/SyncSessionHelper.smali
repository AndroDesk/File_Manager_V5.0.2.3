.class public Lcom/micloud/midrive/session/helper/SyncSessionHelper;
.super Ljava/lang/Object;
.source "SyncSessionHelper.java"


# static fields
.field private static volatile mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAutoBackupJob(Landroid/content/Context;)V
    .registers 2

    .line 1
    const-string v0, "jobscheduler"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 13
    return-void
.end method

.method private static checkRunInMainThread()V
    .registers 1

    .line 1
    const-string v0, "SessionHelper must be called in main thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private static getOrInitHandler()Landroid/os/Handler;
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_1b

    .line 5
    const-class v0, Lcom/micloud/midrive/session/helper/SyncSessionHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    .line 10
    if-nez v1, :cond_16

    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    sput-object v1, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    .line 23
    :cond_16
    monitor-exit v0

    .line 24
    goto :goto_1b

    .line 25
    :catchall_18
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    .line 27
    throw v1

    .line 28
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    .line 30
    return-object v0
.end method

.method public static getSyncSession()Lcom/micloud/midrive/session/SyncSession;
    .registers 1

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->checkRunInMainThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method private static getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/micloud/midrive/session/SyncSession;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    check-cast v0, Lcom/micloud/midrive/session/SyncSession;

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public static notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/session/SyncSession;->setSyncAfter()V

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->cancelAutoBackupJob(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startSyncSession(Landroid/content/Context;Landroid/accounts/Account;Z)Lcom/micloud/midrive/session/SyncSession;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static notifySyncOrStartSessionLate(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/session/SyncSession;->setSyncAfter()V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startAutoBackupJob(Landroid/content/Context;)V

    .line 14
    :goto_d
    return-void
.end method

.method public static postNotifySyncOrStartSession(Landroid/content/Context;Landroid/accounts/Account;Z)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getOrInitHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;

    .line 7
    invoke-direct {v1, p2, p0, p1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;-><init>(ZLandroid/content/Context;Landroid/accounts/Account;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public static startAutoBackupJob(Landroid/content/Context;)V
    .registers 6

    .line 1
    const-string v0, "jobscheduler"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_33

    .line 17
    new-instance v2, Landroid/content/ComponentName;

    .line 19
    const-class v4, Lcom/micloud/midrive/session/service/SyncSessionJobService;

    .line 21
    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    .line 26
    invoke-direct {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 29
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 32
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_3c

    .line 42
    new-array p0, v1, [Ljava/lang/Object;

    .line 44
    const-string v0, "Schedule sync job failed, DO NOT ALLOW start from bg."

    .line 46
    aput-object v0, p0, v3

    .line 48
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 51
    goto :goto_3c

    .line 52
    :cond_33
    new-array p0, v1, [Ljava/lang/Object;

    .line 54
    const-string v0, "Sync job exists, SKIP schedule"

    .line 56
    aput-object v0, p0, v3

    .line 58
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static startSyncSession(Landroid/content/Context;Landroid/accounts/Account;Z)Lcom/micloud/midrive/session/SyncSession;
    .registers 4

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/params/SyncSessionParams;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/micloud/midrive/session/params/SyncSessionParams;-><init>(Landroid/accounts/Account;Z)V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/micloud/midrive/session/SyncSession;

    .line 16
    return-object p0
.end method
