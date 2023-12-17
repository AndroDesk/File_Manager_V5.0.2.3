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
.field private static final MAX_SYNC_RETRY_COUNT:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/session/SyncSession;->MAX_SYNC_RETRY_COUNT:I

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/micloud/midrive/session/SyncSession;->mMaxJobCount:I

    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->notifySessionProgressChanged()V

    return-void
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/SyncSession;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/SyncSession;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->performExecuteH(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performCancelH()V

    return-void
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/session/SyncSession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/micloud/midrive/session/SyncSession;->performMoveOnIfNecessaryAtomicH(Lcom/micloud/midrive/task/BaseTask;Ljava/util/List;)V

    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    sget-object v2, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    if-ne v2, p1, :cond_11

    return-void

    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    :cond_25
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->processEventsH()V

    if-ne v0, p1, :cond_2b

    return-void

    :cond_2b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$6;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/SyncSession$6;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$7;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/SyncSession$7;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkNeedRetryH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Z
    .registers 2

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method private clearDataH()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    return-void
.end method

.method private getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getSessionParams()Lcom/micloud/midrive/session/params/SessionParams;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/session/params/SyncSessionParams;

    return-object v0
.end method

.method private handleBackupFinishH()Lcom/micloud/midrive/session/BaseSession$Result;
    .registers 4

    iget-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {v1}, Lcom/micloud/midrive/session/SyncSession$SyncResultInner;->buildCancelResult(Z)Lcom/micloud/midrive/session/SyncSession$SyncResultInner;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->getFirstStopInfo(Ljava/util/List;)Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-direct {p0, v0}, Lcom/micloud/midrive/session/SyncSession;->checkNeedRetryH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/micloud/midrive/session/SyncSession;->handleFailedReasonH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncResultInner;->buildFailureResult(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)Lcom/micloud/midrive/session/SyncSession$SyncResultInner;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-static {}, Lcom/micloud/midrive/session/SyncSession$SyncResultInner;->buildSuccessResult()Lcom/micloud/midrive/session/SyncSession$SyncResultInner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setRequireNetworkForSync(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private handleFailedReasonH(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;
    .registers 3

    invoke-static {p1}, Lcom/micloud/midrive/utils/TaskUtils;->getErrorCause(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_12
    instance-of v0, p1, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setRequireNetworkForSync(Landroid/content/Context;Z)V

    sget-object p1, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    return-object p1

    :cond_21
    instance-of v0, p1, Lcom/micloud/midrive/server/exception/OperationFailedException;

    if-eqz v0, :cond_35

    check-cast p1, Lcom/micloud/midrive/server/exception/OperationFailedException;

    iget p1, p1, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    const v0, 0xcf0b

    if-eq p1, v0, :cond_32

    const/16 v0, 0x271e

    if-ne p1, v0, :cond_35

    :cond_32
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    return-object p1

    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method

.method private initDataH(Z)V
    .registers 10

    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/micloud/midrive/session/params/SyncSessionParams;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;Lcom/micloud/midrive/server/transport/Network;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mWaitForRestartKeySet:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/micloud/midrive/session/SyncSession;->mMaxJobCount:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x3c

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordSyncSessionStart()V

    iput-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    return-void
.end method

.method private isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->isTaskDoneOrNull(Lcom/micloud/midrive/task/BaseTask;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private notifySessionProgressChanged()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/SyncSession$9;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/SyncSession$9;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performCancelH()V
    .registers 3

    sget-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTasks(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method private performExecuteH(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->initDataH(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method private performFinishH()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "finish session"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->handleBackupFinishH()Lcom/micloud/midrive/session/BaseSession$Result;

    move-result-object v0

    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceFinish(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->removeListenersH()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->recordEventH()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->clearDataH()V

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mRunner:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/micloud/midrive/session/SyncSession$8;

    invoke-direct {v2, p0, v0}, Lcom/micloud/midrive/session/SyncSession$8;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/BaseSession$Result;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    iget-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStop:Z

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->isRunning()Z

    move-result p1

    if-nez p1, :cond_11

    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performFinishH()V

    :cond_11
    return-void

    :cond_12
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->INIT:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iget-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_23

    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->RUNNING:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    iput-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->startSyncTaskH()V

    return-void

    :cond_23
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->RUNNING:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iget-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne p1, p2, :cond_76

    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    move-result-object p1

    sget-object p2, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    if-ne p1, p2, :cond_68

    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    move-result p1

    if-eqz p1, :cond_3d

    move p1, v0

    goto :goto_41

    :cond_3d
    iget p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncRetryCount:I

    add-int/lit8 p1, p1, 0x1

    :goto_41
    iput p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncRetryCount:I

    const/4 p2, 0x3

    if-le p1, p2, :cond_4e

    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performFinishH()V

    return-void

    :cond_4e
    iget-boolean p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/SyncTask;->isSyncAfter()Z

    move-result p1

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    move-result p1

    if-nez p1, :cond_68

    :cond_62
    iput-boolean v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncAfter:Z

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->startSyncTaskH()V

    return-void

    :cond_68
    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->isRunning()Z

    move-result p1

    if-nez p1, :cond_75

    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->performFinishH()V

    :cond_75
    return-void

    :cond_76
    sget-object p1, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iget-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne p1, p2, :cond_7d

    return-void

    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    sget-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    check-cast p1, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->processEventsH()V

    return-void
.end method

.method private postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/SyncSession$5;

    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/SyncSession$5;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processEventsH()V
    .registers 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/session/SyncSession$SyncEvent;->run()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3b
    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    return-void
.end method

.method private recordEventH()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->getFirstStopInfo(Ljava/util/List;)Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordSyncSessionEnd()V

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordEventByStopInfoAndRelease(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V

    return-void
.end method

.method private removeListenersH()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->removeStatusChangeListenerFromTasks(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->removeStatusChangeListenerFromTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method private startSyncTaskH()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "startSyncTaskH"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v0, Lcom/micloud/midrive/task/SyncTask;

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Z)V

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    new-instance v1, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/SyncSession$1;)V

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRunnerHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSyncParams()Lcom/micloud/midrive/session/params/SyncSessionParams;
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/SyncSession$4;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/SyncSession$4;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/SyncSession$3;

    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/SyncSession$3;-><init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/BaseSession$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onExecute with session: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/micloud/midrive/session/SyncSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mMainThreadHandler:Landroid/os/Handler;

    sget-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->INIT:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/session/BaseSession$Event;

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession;->mPendingEventSet:Ljava/util/Set;

    check-cast v0, Lcom/micloud/midrive/session/SyncSession$SyncEvent;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_48
    new-instance p2, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mRunner:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mRunner:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$2;

    invoke-direct {v0, p0, p1}, Lcom/micloud/midrive/session/SyncSession$2;-><init>(Lcom/micloud/midrive/session/SyncSession;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGetExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    return-object v0
.end method

.method public setSyncAfter()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$1;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/SyncSession$1;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void
.end method
