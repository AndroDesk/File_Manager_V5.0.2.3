.class public Lcom/micloud/midrive/session/SyncSession;
.super Lcom/micloud/midrive/session/BaseSession;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;,
        Lcom/micloud/midrive/session/SyncSession$NewSyncTaskEvent;,
        Lcom/micloud/midrive/session/SyncSession$SyncEvent;,
        Lcom/micloud/midrive/session/SyncSession$FailedReason;,
        Lcom/micloud/midrive/session/SyncSession$SyncResultInner;,
        Lcom/micloud/midrive/session/SyncSession$SyncStage;
    }
.end annotation


# static fields
.field private static final MAX_SYNC_RETRY_COUNT:I = 0x3


# instance fields
.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMaxJobCount:I

.field private mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mPendingEventSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/session/SyncSession$SyncEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRunner:Landroid/os/HandlerThread;

.field private mRunnerHandler:Landroid/os/Handler;

.field private final mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

.field private mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

.field private volatile mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

.field private mStop:Z

.field private mSyncAfter:Z

.field private mSyncRetryCount:I

.field private mSyncTask:Lcom/micloud/midrive/task/SyncTask;

.field private mSyncTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/task/TransferBaseTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

.field private mWaitForRestartKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    .line 4
    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/micloud/midrive/session/SyncSession;->mMaxJobCount:I

    .line 7
    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 9
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->notifySessionProgressChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/SyncSession;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/SyncSession;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->performExecuteH(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performCancelH()V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/session/SyncSession;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method private checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-direct {p0, p1, v1}, Lcom/micloud/midrive/session/SyncSession;->performMoveOnIfNecessaryAtomicH(Lcom/micloud/midrive/task/BaseTask;Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 13
    sget-object v2, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 15
    if-ne v2, p1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_25

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Runnable;

    .line 34
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 37
    goto :goto_15

    .line 38
    :cond_25
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->processEventsH()V

    .line 41
    if-ne v0, p1, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    const/4 v1, 0x1

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    const/4 v2, 0x0

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v4, "change from "

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, " to "

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    aput-object p1, v1, v2

    .line 75
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$6;

    .line 82
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/SyncSession$6;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$7;

    .line 92
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/SyncSession$7;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method private checkNeedRetryH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Z
    .registers 2

    .line 1
    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method private clearDataH()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 11
    return-void
.end method

.method private getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getSessionParams()Lcom/micloud/midrive/session/params/SessionParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/micloud/midrive/session/params/SyncSessionParams;

    .line 7
    return-object v0
.end method

.method private handleBackupFinishH()Lcom/micloud/midrive/session/BaseSession$Result;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/session/SyncSession$SyncResultInner;->buildCancelResult(Z)Lcom/micloud/midrive/session/SyncSession$SyncResultInner;

    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->getFirstStopInfo(Ljava/util/List;)Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_27

    .line 27
    invoke-direct {p0, v0}, Lcom/micloud/midrive/session/SyncSession;->checkNeedRetryH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Z

    .line 30
    move-result v1

    .line 31
    invoke-direct {p0, v0}, Lcom/micloud/midrive/session/SyncSession;->handleFailedReasonH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncResultInner;->buildFailureResult(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)Lcom/micloud/midrive/session/SyncSession$SyncResultInner;

    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_27
    invoke-static {}, Lcom/micloud/midrive/session/SyncSession$SyncResultInner;->buildSuccessResult()Lcom/micloud/midrive/session/SyncSession$SyncResultInner;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2, v1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setRequireNetworkForSync(Landroid/content/Context;Z)V

    .line 51
    return-object v0
.end method

.method private handleFailedReasonH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/utils/TaskUtils;->getErrorCause(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Ljava/lang/Throwable;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 7
    if-eqz v0, :cond_12

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_12

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 18
    move-result-object p1

    .line 19
    :cond_12
    instance-of v0, p1, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    .line 21
    if-eqz v0, :cond_21

    .line 23
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-static {p1, v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setRequireNetworkForSync(Landroid/content/Context;Z)V

    .line 31
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    .line 33
    return-object p1

    .line 34
    :cond_21
    instance-of v0, p1, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 36
    if-eqz v0, :cond_35

    .line 38
    check-cast p1, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 40
    iget p1, p1, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 42
    const v0, 0xcf0b

    .line 45
    if-eq p1, v0, :cond_32

    .line 47
    const/16 v0, 0x271e

    .line 49
    if-ne p1, v0, :cond_35

    .line 51
    :cond_32
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    .line 53
    return-object p1

    .line 54
    :cond_35
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method private initDataH(Z)V
    .registers 10

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 3
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/micloud/midrive/session/params/SyncSessionParams;->getAccount()Landroid/accounts/Account;

    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    .line 17
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 24
    move-result-object v4

    .line 25
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;Lcom/micloud/midrive/server/transport/Network;)V

    .line 28
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    .line 39
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mWaitForRestartKeySet:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    iget v3, p0, Lcom/micloud/midrive/session/SyncSession;->mMaxJobCount:I

    .line 48
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 55
    const-wide/16 v4, 0x3c

    .line 57
    move-object v1, v0

    .line 58
    move v2, v3

    .line 59
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 62
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 68
    invoke-static {}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 74
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordSyncSessionStart()V

    .line 77
    iput-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    .line 79
    return-void
.end method

.method private isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 11
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->isTaskDoneOrNull(Lcom/micloud/midrive/task/BaseTask;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method

.method private notifySessionProgressChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/SyncSession$9;

    .line 5
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/SyncSession$9;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private performCancelH()V
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTasks(Ljava/util/Collection;)V

    .line 20
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 22
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V

    .line 25
    return-void
.end method

.method private performExecuteH(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->initDataH(Z)V

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    .line 8
    return-void
.end method

.method private performFinishH()V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "finish session"

    .line 7
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->handleBackupFinishH()Lcom/micloud/midrive/session/BaseSession$Result;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceFinish(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V

    .line 36
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->removeListenersH()V

    .line 39
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->recordEventH()V

    .line 42
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->clearDataH()V

    .line 45
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mRunner:Landroid/os/HandlerThread;

    .line 47
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 50
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 52
    new-instance v2, Lcom/micloud/midrive/session/SyncSession$8;

    .line 54
    invoke-direct {v2, p0, v0}, Lcom/micloud/midrive/session/SyncSession$8;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/BaseSession$Result;)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method private performMoveOnIfNecessaryAtomicH(Lcom/micloud/midrive/task/BaseTask;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/task/BaseTask;",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    .line 3
    if-eqz p1, :cond_12

    .line 5
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->isRunning()Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_11

    .line 11
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 13
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performFinishH()V

    .line 18
    :cond_11
    return-void

    .line 19
    :cond_12
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->INIT:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 21
    iget-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 23
    const/4 v0, 0x0

    .line 24
    if-ne p1, p2, :cond_23

    .line 26
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->RUNNING:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 28
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 30
    iput-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    .line 32
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->startSyncTaskH()V

    .line 35
    return-void

    .line 36
    :cond_23
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->RUNNING:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 38
    iget-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 40
    if-ne p1, p2, :cond_76

    .line 42
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 44
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 47
    move-result-object p1

    .line 48
    sget-object p2, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 50
    if-ne p1, p2, :cond_68

    .line 52
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 54
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3d

    .line 60
    move p1, v0

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    iget p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncRetryCount:I

    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 66
    :goto_41
    iput p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncRetryCount:I

    .line 68
    const/4 p2, 0x3

    .line 69
    if-le p1, p2, :cond_4e

    .line 71
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 73
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 75
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performFinishH()V

    .line 78
    return-void

    .line 79
    :cond_4e
    iget-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    .line 81
    if-nez p1, :cond_62

    .line 83
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 85
    invoke-virtual {p1}, Lcom/micloud/midrive/task/SyncTask;->isSyncAfter()Z

    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_62

    .line 91
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 93
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_68

    .line 99
    :cond_62
    iput-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    .line 101
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->startSyncTaskH()V

    .line 104
    return-void

    .line 105
    :cond_68
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->isRunning()Z

    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_75

    .line 111
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 113
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 115
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performFinishH()V

    .line 118
    :cond_75
    return-void

    .line 119
    :cond_76
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 121
    iget-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 123
    if-ne p1, p2, :cond_7d

    .line 125
    return-void

    .line 126
    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    const-string p2, "should not reach here"

    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p1
.end method

.method private performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    .line 10
    check-cast p1, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->processEventsH()V

    .line 18
    return-void
.end method

.method private postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/SyncSession$5;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/SyncSession$5;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private processEventsH()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3b

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    .line 24
    const/4 v3, 0x1

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    const/4 v4, 0x0

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v6, "process "

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 45
    aput-object v5, v3, v4

    .line 47
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v2}, Lcom/micloud/midrive/session/SyncSession$SyncEvent;->run()Z

    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_b

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_b

    .line 60
    :cond_3b
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    .line 62
    return-void
.end method

.method private recordEventH()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->getFirstStopInfo(Ljava/util/List;)Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 17
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordSyncSessionEnd()V

    .line 20
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 22
    invoke-virtual {v1, v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordEventByStopInfoAndRelease(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V

    .line 25
    return-void
.end method

.method private removeListenersH()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->removeStatusChangeListenerFromTasks(Ljava/util/Collection;)V

    .line 10
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 12
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->removeStatusChangeListenerFromTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V

    .line 15
    return-void
.end method

.method private startSyncTaskH()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "startSyncTaskH"

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/micloud/midrive/task/SyncTask;

    .line 14
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Z)V

    .line 19
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 21
    new-instance v1, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/SyncSession$1;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    .line 30
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 37
    return-void
.end method


# virtual methods
.method public getPendingEvent()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/session/SyncSession$SyncEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRunnerHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public getSyncParams()Lcom/micloud/midrive/session/params/SyncSessionParams;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/SyncSession$4;

    .line 5
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/SyncSession$4;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/SyncSession$3;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/SyncSession$3;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public onExecute(ZLjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/session/BaseSession$Event;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "onExecute with session: "

    .line 6
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v1, v0, v2

    .line 24
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 38
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->INIT:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 40
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    .line 44
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    .line 49
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p2

    .line 53
    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_48

    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/micloud/midrive/session/BaseSession$Event;

    .line 65
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    .line 67
    check-cast v0, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    .line 69
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_34

    .line 73
    :cond_48
    new-instance p2, Landroid/os/HandlerThread;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mRunner:Landroid/os/HandlerThread;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 91
    new-instance p2, Landroid/os/Handler;

    .line 93
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunner:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$2;

    .line 106
    invoke-direct {v0, p0, p1}, Lcom/micloud/midrive/session/SyncSession$2;-><init>(Lcom/micloud/midrive/session/SyncSession;Z)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onGetExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 3
    return-object v0
.end method

.method public setSyncAfter()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/SyncSession$1;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 9
    return-void
.end method
