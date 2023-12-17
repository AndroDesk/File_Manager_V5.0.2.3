.class public Lcom/micloud/midrive/session/service/SyncSessionJobService;
.super Landroid/app/job/JobService;
.source "SyncSessionJobService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncSessionJobService"


# instance fields
.field private mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

.field private mSyncSession:Lcom/micloud/midrive/session/SyncSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/service/SyncSessionJobService;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/SyncSession;
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    return-object p1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 9

    invoke-static {}, Lcom/micloud/midrive/utils/MidriveInitHelper;->isMiDriveInit()Z

    move-result v0

    const-string v1, "SyncSessionJobService"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1a

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v4

    const-string v1, "RESCHEDULE: Start SESSION Failed. Reason: midrive not open "

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v4

    :cond_1a
    const/4 v0, 0x0

    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-static {p0, v5, v3}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->startSyncSession(Landroid/content/Context;Landroid/accounts/Account;Z)Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    goto :goto_31

    :cond_26
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v4

    const-string v6, "account is null"

    aput-object v6, v5, v3

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_31
    if-eqz v0, :cond_51

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "START SESSION succeed"

    aput-object v1, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    new-instance v1, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;

    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;-><init>(Lcom/micloud/midrive/session/service/SyncSessionJobService;Landroid/app/job/JobParameters;)V

    iput-object v1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    invoke-virtual {v0, p1, v1}, Lcom/micloud/midrive/session/BaseSession;->exec(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Z

    return v3

    :cond_51
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v4

    const-string v1, "RESCHEDULE: Start SESSION Failed"

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v4
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SyncSessionJobService"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STOP:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mSyncSession:Lcom/micloud/midrive/session/SyncSession;

    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService;->mAutoSyncSessionExecListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    :cond_2b
    return v2
.end method
