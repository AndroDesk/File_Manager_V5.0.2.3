.class public abstract Lcom/micloud/midrive/session/TransferSession;
.super Lcom/micloud/midrive/session/BaseSession;
.source "TransferSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;,
        Lcom/micloud/midrive/session/TransferSession$NewTransferTaskEvent;,
        Lcom/micloud/midrive/session/TransferSession$TransferEvent;,
        Lcom/micloud/midrive/session/TransferSession$TransferResultInner;,
        Lcom/micloud/midrive/session/TransferSession$TransferStage;
    }
.end annotation


# instance fields
.field private mMainThreadHandler:Landroid/os/Handler;

.field private final mMaxJobCount:I

.field private mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mPendingEventSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/session/TransferSession$TransferEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRunner:Landroid/os/HandlerThread;

.field private mRunnerHandler:Landroid/os/Handler;

.field private mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

.field private final mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

.field private volatile mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

.field private mStop:Z

.field private mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

.field private mTransferTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/task/TransferBaseTask;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/micloud/midrive/utils/FlagSet<",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitForRestartKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/micloud/midrive/utils/FlagSet<",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/micloud/midrive/session/TransferSession;->mMaxJobCount:I

    iput-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performJobStatusChangedH()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/micloud/midrive/session/TransferSession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->updateTaskWaitWifiRegistrationH(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->tryLoadNewJobH()V

    return-void
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->notifySessionProgressChangedH()V

    return-void
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performJobAcquiredNetworkChangedH()V

    return-void
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/session/TransferSession;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->performExecuteH(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performCancelH()V

    return-void
.end method

.method public static synthetic access$800(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    return-object p0
.end method

.method private addTaskH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;JZ)V
    .registers 9

    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    new-instance v2, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;Lcom/micloud/midrive/server/transport/Network;)V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/micloud/midrive/session/TransferSession;->onCreateTransferTaskH(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)Lcom/micloud/midrive/task/TransferBaseTask;

    move-result-object p2

    new-instance p3, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;-><init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/TransferSession$1;)V

    invoke-virtual {p2, p3}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    invoke-virtual {p2, p3}, Lcom/micloud/midrive/task/TransferBaseTask;->setProgressChangeListener(Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;)V

    iget-object p3, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {p0, p2}, Lcom/micloud/midrive/session/TransferSession;->onTaskStartH(Lcom/micloud/midrive/task/TransferBaseTask;)V

    return-void
.end method

.method private checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/micloud/midrive/session/TransferSession;->performMoveOnIfNecessaryAtomicH(Lcom/micloud/midrive/task/BaseTask;Ljava/util/List;)V

    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    sget-object v2, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

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
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->processEventsH()V

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

    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$8;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$8;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$9;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$9;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

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

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    return-void
.end method

.method private getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getSessionParams()Lcom/micloud/midrive/session/params/SessionParams;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/session/params/TransferParams;

    return-object v0
.end method

.method private initDataH(Z)V
    .registers 10

    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;

    move-result-object v2

    invoke-interface {v2}, Lcom/micloud/midrive/session/params/TransferParams;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;Lcom/micloud/midrive/server/transport/Network;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    new-instance v0, Lcom/micloud/midrive/utils/FlagSet;

    invoke-direct {v0}, Lcom/micloud/midrive/utils/FlagSet;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    new-instance v0, Lcom/micloud/midrive/utils/FlagSet;

    invoke-direct {v0}, Lcom/micloud/midrive/utils/FlagSet;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onGetTransferTypeH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0x14

    const/16 v3, 0x14

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-boolean p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStop:Z

    return-void
.end method

.method private isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->isTasksDone(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifySessionProgressChangedH()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/TransferSession;->onTaskProgressChangedH(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/TransferSession$11;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/TransferSession$11;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performCancelH()V
    .registers 3

    sget-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStop:Z

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTasks(Ljava/util/Collection;)V

    return-void
.end method

.method private performExecuteH(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onSessionToExecuteH()V

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->initDataH(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method private performFinishH()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "finish session"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onSessionToFinishH()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->removeListenersH()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->clearDataH()V

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunner:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/TransferSession$10;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/TransferSession$10;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performJobAcquiredNetworkChangedH()V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SessionJobInfo;

    iget-object v2, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v3}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/task/TransferBaseTask;

    if-eqz v2, :cond_70

    invoke-virtual {v2}, Lcom/micloud/midrive/task/RunOnNetworkTask;->getNetwork()Lcom/micloud/midrive/server/transport/Network;

    move-result-object v3

    instance-of v4, v3, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    if-eqz v4, :cond_15

    check-cast v3, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    iget-boolean v4, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    invoke-virtual {v3}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->isFreeNetworkOnly()Z

    move-result v5

    if-eq v4, v5, :cond_15

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "task "

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->getTaskName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " freeNetworkOnly change to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-boolean v1, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    invoke-virtual {v3, v1}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->setFreeNetworkOnly(Z)V

    invoke-virtual {v2}, Lcom/micloud/midrive/task/RunOnNetworkTask;->notifyWaitNetworkChanged()V

    goto :goto_15

    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "illegal job info: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    return-void
.end method

.method private performJobStatusChangedH()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SessionJobInfo;

    iget-object v2, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v3}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/task/TransferBaseTask;

    if-eqz v2, :cond_65

    sget-object v3, Lcom/micloud/midrive/session/TransferSession$12;->$SwitchMap$com$micloud$midrive$infos$SessionJobInfo$SessionJobStatus:[I

    iget-object v1, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_51

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4d

    const/4 v3, 0x3

    if-ne v1, v3, :cond_45

    goto :goto_4d

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown status or already finished. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    :goto_4d
    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;

    goto :goto_15

    :cond_51
    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->hasCancelMark()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "illegal job info: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onJobStatusChangedH()V

    return-void
.end method

.method private performMoveOnIfNecessaryAtomicH(Lcom/micloud/midrive/task/BaseTask;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/task/BaseTask;",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStop:Z

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->isRunning()Z

    move-result p1

    if-nez p1, :cond_11

    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performFinishH()V

    :cond_11
    return-void

    :cond_12
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->INIT:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne p1, p2, :cond_20

    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->tryLoadNewJobH()V

    return-void

    :cond_20
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne p1, p2, :cond_92

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_35
    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/task/TransferBaseTask;

    sget-object v1, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    move-result-object v2

    if-ne v1, v2, :cond_35

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_4d
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_51
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/task/TransferBaseTask;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_6b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/TransferSession;->performTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V

    goto :goto_6f

    :cond_7f
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->tryLoadNewJobH()V

    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_91

    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performFinishH()V

    :cond_91
    return-void

    :cond_92
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne p1, p2, :cond_99

    return-void

    :cond_99
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    sget-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    check-cast p1, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->processEventsH()V

    return-void
.end method

.method private performTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 8

    invoke-virtual {p1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v1

    const-string v2, "transferFileInfo:"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_31

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->setTime(J)V

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z

    goto :goto_94

    :cond_31
    invoke-virtual {v1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTaskProgressInfo()Lcom/micloud/midrive/infos/TaskProgressInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    invoke-static {p1}, Lcom/micloud/midrive/utils/TaskUtils;->isTransferTaskFreeNetworkOnly(Lcom/micloud/midrive/task/TransferBaseTask;)Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/micloud/midrive/session/TransferSession;->addTaskH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;JZ)V

    goto :goto_94

    :cond_5a
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    invoke-static {v1}, Lcom/micloud/midrive/utils/CheckErrUtils;->getErrInfo(Lcom/micloud/midrive/task/BaseTask$TaskException;)Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errCode:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_7a

    const/4 v2, 0x0

    goto :goto_80

    :cond_7a
    iget v2, v1, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_80
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->setErrInfo(Lcom/micloud/midrive/infos/ErrInfo;)V

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z

    :cond_94
    :goto_94
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->onTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V

    return-void
.end method

.method private postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/TransferSession$7;

    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/TransferSession$7;-><init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processEventsH()V
    .registers 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

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

    invoke-virtual {v2}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->run()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3b
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    return-void
.end method

.method private removeListenersH()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->removeStatusChangeListenerFromTasks(Ljava/util/Collection;)V

    return-void
.end method

.method private tryLoadNewJobH()V
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "tryLoadNewJobH"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    move v4, v3

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-virtual {v5}, Lcom/micloud/midrive/task/RunOnNetworkTask;->getNetwork()Lcom/micloud/midrive/server/transport/Network;

    move-result-object v6

    instance-of v7, v6, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    if-eqz v7, :cond_17

    check-cast v6, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    invoke-virtual {v6}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->isFreeNetworkOnly()Z

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    invoke-virtual {v5}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v5

    if-ne v6, v5, :cond_3d

    move v5, v0

    goto :goto_3e

    :cond_3d
    move v5, v3

    :goto_3e
    and-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_42
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micloud/midrive/manager/NetworkManager;->isAnyNetworkAvailable()Z

    move-result v1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryLoadNewJobH ,anyNetworkAvailable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",allFreeNetworkOnlyTaskWaiting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",taskCountWithFreeNetworkOnly "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v5, 0xa

    if-eqz v1, :cond_8f

    if-eqz v4, :cond_8f

    if-eqz v2, :cond_8f

    sub-int/2addr v0, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lt v0, v5, :cond_88

    return-void

    :cond_88
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-interface {v1, v5}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getOngoingJobInfosWithAnyNetworkOrderByAddTime(I)Ljava/util/List;

    move-result-object v1

    goto :goto_98

    :cond_8f
    if-lt v0, v5, :cond_92

    return-void

    :cond_92
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-interface {v1, v5}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getOngoingJobInfosOrderByAddTime(I)Ljava/util/List;

    move-result-object v1

    :goto_98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/infos/SessionJobInfo;

    if-lt v0, v5, :cond_ab

    return-void

    :cond_ab
    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    goto :goto_9c

    :cond_ba
    iget-object v3, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    iget-wide v6, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    iget-boolean v2, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    invoke-direct {p0, v3, v6, v7, v2}, Lcom/micloud/midrive/session/TransferSession;->addTaskH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;JZ)V

    goto :goto_9c

    :cond_c4
    return-void
.end method

.method private updateTaskWaitWifiRegistrationH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v0}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v0}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    sget-object v3, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v4

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v3, p1}, Lcom/micloud/midrive/utils/FlagSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v2

    iget-object v4, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v4, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    :goto_2a
    or-int/2addr p1, v3

    goto :goto_50

    :cond_2c
    sget-object v3, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v4

    if-ne v3, v4, :cond_42

    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v3, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v2

    iget-object v4, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v4, p1}, Lcom/micloud/midrive/utils/FlagSet;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2a

    :cond_42
    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v3, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v2

    iget-object v4, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {v4, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2a

    :goto_50
    if-eqz p1, :cond_55

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onJobStatusChangedH()V

    :cond_55
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {p1}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    invoke-virtual {p1}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_66

    move v2, v1

    :cond_66
    if-eq v0, v2, :cond_6d

    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->onWaitNetworkChangedH(Z)V

    :cond_6d
    return-void
.end method


# virtual methods
.method public getPendingEvent()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/session/TransferSession$TransferEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRunnerHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTransferParams()Lcom/micloud/midrive/session/params/TransferParams;
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/TransferSession$6;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/TransferSession$6;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract onCreateTransferTaskH(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)Lcom/micloud/midrive/task/TransferBaseTask;
.end method

.method public onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/TransferSession$5;

    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/TransferSession$5;-><init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/BaseSession$Event;)V

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

    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;

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

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    sget-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->INIT:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/session/BaseSession$Event;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    check-cast v0, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_48
    new-instance p2, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mRunner:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunner:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$4;

    invoke-direct {v0, p0, p1}, Lcom/micloud/midrive/session/TransferSession$4;-><init>(Lcom/micloud/midrive/session/TransferSession;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGetExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    return-object v0
.end method

.method public abstract onGetTransferTypeH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
.end method

.method public abstract onJobStatusChangedH()V
.end method

.method public abstract onSessionToExecuteH()V
.end method

.method public abstract onSessionToFinishH()V
.end method

.method public abstract onTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V
.end method

.method public abstract onTaskProgressChangedH(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/micloud/midrive/task/TransferBaseTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTaskStartH(Lcom/micloud/midrive/task/TransferBaseTask;)V
.end method

.method public abstract onWaitNetworkChangedH(Z)V
.end method

.method public setJobStatusChanged()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$2;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$2;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void
.end method

.method public setNewJobAdded()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$1;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$1;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void
.end method

.method public setRequiredNetworkChanged()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$3;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$3;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void
.end method
