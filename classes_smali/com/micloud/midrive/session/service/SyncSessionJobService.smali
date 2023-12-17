.class public Lcom/micloud/midrive/session/service/SyncSessionJobService;
.super Landroid/app/job/JobService;
.source "SyncSessionJobService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncSessionJobService"


# instance fields
.field private mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

.field private mSyncSession:Lcom/micloud/midrive/session/SyncSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/service/SyncSessionJobService;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/SyncSession;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    return-object p1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/micloud/midrive/utils/MidriveInitHelper;->isMiDriveInit()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "SyncSessionJobService"

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v0, :cond_1a

    .line 12
    new-array v0, v2, [Ljava/lang/Object;

    .line 14
    aput-object v1, v0, v4

    .line 16
    const-string v1, "RESCHEDULE: Start SESSION Failed. Reason: midrive not open "

    .line 18
    aput-object v1, v0, v3

    .line 20
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, p1, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 26
    return v4

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_26

    .line 34
    invoke-static {p0, v5, v3}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startSyncSession(Landroid/content/Context;Landroid/accounts/Account;Z)Lcom/micloud/midrive/session/SyncSession;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_31

    .line 39
    :cond_26
    new-array v5, v2, [Ljava/lang/Object;

    .line 41
    aput-object v1, v5, v4

    .line 43
    const-string v6, "account is null"

    .line 45
    aput-object v6, v5, v3

    .line 47
    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 50
    :goto_31
    if-eqz v0, :cond_51

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    aput-object v1, v2, v4

    .line 56
    const-string v1, "START SESSION succeed"

    .line 58
    aput-object v1, v2, v3

    .line 60
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 63
    iput-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 65
    new-instance v1, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;

    .line 67
    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;-><init>(Lcom/micloud/midrive/session/service/SyncSessionJobService;Landroid/app/job/JobParameters;)V

    .line 70
    iput-object v1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 78
    invoke-virtual {v0, p1, v1}, Lcom/micloud/midrive/session/BaseSession;->exec(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Z

    .line 81
    return v3

    .line 82
    :cond_51
    new-array v0, v2, [Ljava/lang/Object;

    .line 84
    aput-object v1, v0, v4

    .line 86
    const-string v1, "RESCHEDULE: Start SESSION Failed"

    .line 88
    aput-object v1, v0, v3

    .line 90
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0, p1, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 96
    return v4
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "SyncSessionJobService"

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v3, "STOP:"

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object p1, v0, v1

    .line 29
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 34
    if-eqz p1, :cond_2b

    .line 36
    invoke-virtual {p1}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 42
    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 44
    :cond_2b
    return v2
.end method
