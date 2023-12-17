.class public Lcom/micloud/midrive/session/helper/SyncSessionHelper;
.super Ljava/lang/Object;
.source "SyncSessionHelper.java"


# static fields
.field private static volatile mMainHandler:Landroid/os/Handler;


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

.method public static cancelAutoBackupJob(Landroid/content/Context;)V
    .registers 2

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method private static checkRunInMainThread()V
    .registers 1

    const-string v0, "SessionHelper must be called in main thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    return-void
.end method

.method private static getOrInitHandler()Landroid/os/Handler;
    .registers 3

    sget-object v0, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1b

    const-class v0, Lcom/micloud/midrive/session/helper/SyncSessionHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_16

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    sget-object v0, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getSyncSession()Lcom/micloud/midrive/session/SyncSession;
    .registers 1

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->checkRunInMainThread()V

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    return-object v0
.end method

.method private static getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    move-result-object v0

    instance-of v1, v0, Lcom/micloud/midrive/session/SyncSession;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/micloud/midrive/session/SyncSession;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/micloud/midrive/session/SyncSession;->setSyncAfter()V

    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->cancelAutoBackupJob(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startSyncSession(Landroid/content/Context;Landroid/accounts/Account;Z)Lcom/micloud/midrive/session/SyncSession;

    move-result-object p0

    return-object p0
.end method

.method public static notifySyncOrStartSessionLate(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSessionChecked()Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/micloud/midrive/session/SyncSession;->setSyncAfter()V

    goto :goto_d

    :cond_a
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startAutoBackupJob(Landroid/content/Context;)V

    :goto_d
    return-void
.end method

.method public static postNotifySyncOrStartSession(Landroid/content/Context;Landroid/accounts/Account;Z)V
    .registers 5

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getOrInitHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;-><init>(ZLandroid/content/Context;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static startAutoBackupJob(Landroid/content/Context;)V
    .registers 6

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_33

    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/micloud/midrive/session/service/SyncSessionJobService;

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-nez p0, :cond_3c

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Schedule sync job failed, DO NOT ALLOW start from bg."

    aput-object v0, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    goto :goto_3c

    :cond_33
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Sync job exists, SKIP schedule"

    aput-object v0, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static startSyncSession(Landroid/content/Context;Landroid/accounts/Account;Z)Lcom/micloud/midrive/session/SyncSession;
    .registers 4

    new-instance v0, Lcom/micloud/midrive/session/params/SyncSessionParams;

    invoke-direct {v0, p1, p2}, Lcom/micloud/midrive/session/params/SyncSessionParams;-><init>(Landroid/accounts/Account;Z)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/session/SyncSession;

    return-object p0
.end method
