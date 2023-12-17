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
.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    .line 4
    const/16 p1, 0xa

    .line 6
    iput p1, p0, Lcom/micloud/midrive/session/TransferSession;->mMaxJobCount:I

    .line 8
    iput-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performJobStatusChangedH()V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/micloud/midrive/session/TransferSession;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->updateTaskWaitWifiRegistrationH(Lcom/micloud/midrive/task/BaseTask;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->tryLoadNewJobH()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->notifySessionProgressChangedH()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performJobAcquiredNetworkChangedH()V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/session/TransferSession;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->performExecuteH(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performCancelH()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 3
    return-object p0
.end method

.method private addTaskH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;JZ)V
    .registers 9

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 5
    new-instance v2, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 7
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v2, v3, p4}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;-><init>(Landroid/content/Context;Z)V

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;Lcom/micloud/midrive/server/transport/Network;)V

    .line 17
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/micloud/midrive/session/TransferSession;->onCreateTransferTaskH(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)Lcom/micloud/midrive/task/TransferBaseTask;

    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;

    .line 23
    const/4 p4, 0x0

    .line 24
    invoke-direct {p3, p0, p4}, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;-><init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/TransferSession$1;)V

    .line 27
    invoke-virtual {p2, p3}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    .line 30
    invoke-virtual {p2, p3}, Lcom/micloud/midrive/task/TransferBaseTask;->setProgressChangeListener(Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;)V

    .line 33
    iget-object p3, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 35
    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 47
    invoke-virtual {p0, p2}, Lcom/micloud/midrive/session/TransferSession;->onTaskStartH(Lcom/micloud/midrive/task/TransferBaseTask;)V

    .line 50
    return-void
.end method

.method private checkMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-direct {p0, p1, v1}, Lcom/micloud/midrive/session/TransferSession;->performMoveOnIfNecessaryAtomicH(Lcom/micloud/midrive/task/BaseTask;Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 13
    sget-object v2, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

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
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->processEventsH()V

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
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$8;

    .line 82
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$8;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$9;

    .line 92
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$9;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

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
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 11
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 13
    return-void
.end method

.method private getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getSessionParams()Lcom/micloud/midrive/session/params/SessionParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/micloud/midrive/session/params/TransferParams;

    .line 7
    return-object v0
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
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;

    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Lcom/micloud/midrive/session/params/TransferParams;->getAccount()Landroid/accounts/Account;

    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

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
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    .line 39
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    .line 44
    new-instance v0, Lcom/micloud/midrive/utils/FlagSet;

    .line 46
    invoke-direct {v0}, Lcom/micloud/midrive/utils/FlagSet;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 51
    new-instance v0, Lcom/micloud/midrive/utils/FlagSet;

    .line 53
    invoke-direct {v0}, Lcom/micloud/midrive/utils/FlagSet;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 58
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onGetTransferTypeH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 68
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 77
    const/16 v2, 0x14

    .line 79
    const/16 v3, 0x14

    .line 81
    const-wide/16 v4, 0x3c

    .line 83
    move-object v1, v0

    .line 84
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 87
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mNormalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 93
    iput-boolean p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStop:Z

    .line 95
    return-void
.end method

.method private isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->isTasksDone(Ljava/util/Collection;)Z

    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method private notifySessionProgressChangedH()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/TransferSession;->onTaskProgressChangedH(Ljava/util/Collection;)V

    .line 10
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/micloud/midrive/session/TransferSession$11;

    .line 14
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/TransferSession$11;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method

.method private performCancelH()V
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStop:Z

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTasks(Ljava/util/Collection;)V

    .line 20
    return-void
.end method

.method private performExecuteH(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onSessionToExecuteH()V

    .line 4
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->initDataH(Z)V

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V

    .line 11
    return-void
.end method

.method private performFinishH()V
    .registers 4

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
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onSessionToFinishH()V

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->removeListenersH()V

    .line 18
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->clearDataH()V

    .line 21
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunner:Landroid/os/HandlerThread;

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 28
    new-instance v1, Lcom/micloud/midrive/session/TransferSession$10;

    .line 30
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/TransferSession$10;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method private performJobAcquiredNetworkChangedH()V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 14
    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_87

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 34
    iget-object v2, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 36
    iget-object v3, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 38
    invoke-interface {v3}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 48
    if-eqz v2, :cond_70

    .line 50
    invoke-virtual {v2}, Lcom/micloud/midrive/task/RunOnNetworkTask;->getNetwork()Lcom/micloud/midrive/server/transport/Network;

    .line 53
    move-result-object v3

    .line 54
    instance-of v4, v3, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 56
    if-eqz v4, :cond_15

    .line 58
    check-cast v3, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 60
    iget-boolean v4, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 62
    invoke-virtual {v3}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->isFreeNetworkOnly()Z

    .line 65
    move-result v5

    .line 66
    if-eq v4, v5, :cond_15

    .line 68
    const/4 v4, 0x1

    .line 69
    new-array v4, v4, [Ljava/lang/Object;

    .line 71
    const/4 v5, 0x0

    .line 72
    const-string v6, "task "

    .line 74
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->getTaskName()Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v7, " freeNetworkOnly change to "

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v7, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    aput-object v6, v4, v5

    .line 101
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 104
    iget-boolean v1, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 106
    invoke-virtual {v3, v1}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->setFreeNetworkOnly(Z)V

    .line 109
    invoke-virtual {v2}, Lcom/micloud/midrive/task/RunOnNetworkTask;->notifyWaitNetworkChanged()V

    .line 112
    goto :goto_15

    .line 113
    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    const-string v2, "illegal job info: "

    .line 117
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0

    .line 136
    :cond_87
    return-void
.end method

.method private performJobStatusChangedH()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 14
    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_7c

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 34
    iget-object v2, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 36
    iget-object v3, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 38
    invoke-interface {v3}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 48
    if-eqz v2, :cond_65

    .line 50
    sget-object v3, Lcom/micloud/midrive/session/TransferSession$12;->$SwitchMap$com$micloud$midrive$infos$SessionJobInfo$SessionJobStatus:[I

    .line 52
    iget-object v1, v1, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 57
    move-result v1

    .line 58
    aget v1, v3, v1

    .line 60
    const/4 v3, 0x1

    .line 61
    if-eq v1, v3, :cond_51

    .line 63
    const/4 v3, 0x2

    .line 64
    if-eq v1, v3, :cond_4d

    .line 66
    const/4 v3, 0x3

    .line 67
    if-ne v1, v3, :cond_45

    .line 69
    goto :goto_4d

    .line 70
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    const-string v1, "unknown status or already finished. "

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0

    .line 78
    :cond_4d
    :goto_4d
    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 81
    goto :goto_15

    .line 82
    :cond_51
    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->hasCancelMark()Z

    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_15

    .line 88
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    .line 90
    invoke-virtual {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_15

    .line 102
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 104
    const-string v2, "illegal job info: "

    .line 106
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0

    .line 125
    :cond_7c
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onJobStatusChangedH()V

    .line 128
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

    .line 1
    iget-boolean p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStop:Z

    .line 3
    if-eqz p1, :cond_12

    .line 5
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->isRunning()Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_11

    .line 11
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 13
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performFinishH()V

    .line 18
    :cond_11
    return-void

    .line 19
    :cond_12
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->INIT:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 21
    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 23
    if-ne p1, p2, :cond_20

    .line 25
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 27
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 29
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->tryLoadNewJobH()V

    .line 32
    return-void

    .line 33
    :cond_20
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 35
    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 37
    if-ne p1, p2, :cond_92

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 46
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p2

    .line 54
    :cond_35
    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4d

    .line 60
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 66
    sget-object v1, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 68
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 71
    move-result-object v2

    .line 72
    if-ne v1, v2, :cond_35

    .line 74
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_35

    .line 78
    :cond_4d
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object p2

    .line 82
    :goto_51
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_6b

    .line 88
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 94
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 96
    invoke-virtual {v0}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_51

    .line 108
    :cond_6b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object p1

    .line 112
    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_7f

    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 124
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/TransferSession;->performTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V

    .line 127
    goto :goto_6f

    .line 128
    :cond_7f
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->tryLoadNewJobH()V

    .line 131
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_91

    .line 139
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 141
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 143
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->performFinishH()V

    .line 146
    :cond_91
    return-void

    .line 147
    :cond_92
    sget-object p1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 149
    iget-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 151
    if-ne p1, p2, :cond_99

    .line 153
    return-void

    .line 154
    :cond_99
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 156
    const-string p2, "should not reach here"

    .line 158
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p1
.end method

.method private performProcessEventH(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->FINISH:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    .line 10
    check-cast p1, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->processEventsH()V

    .line 18
    return-void
.end method

.method private performTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "transferFileInfo:"

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-nez v1, :cond_31

    .line 15
    new-array v1, v4, [Ljava/lang/Object;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v1, v3

    .line 34
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v1

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->setTime(J)V

    .line 44
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 46
    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z

    .line 49
    goto :goto_94

    .line 50
    :cond_31
    invoke-virtual {v1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5a

    .line 56
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    .line 58
    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_94

    .line 68
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitForRestartKeySet:Ljava/util/Set;

    .line 70
    invoke-interface {v0}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTaskProgressInfo()Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 80
    move-result-object v1

    .line 81
    iget-wide v1, v1, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    .line 83
    invoke-static {p1}, Lcom/micloud/midrive/utils/TaskUtils;->isTransferTaskFreeNetworkOnly(Lcom/micloud/midrive/task/TransferBaseTask;)Z

    .line 86
    move-result v3

    .line 87
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/micloud/midrive/session/TransferSession;->addTaskH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;JZ)V

    .line 90
    goto :goto_94

    .line 91
    :cond_5a
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 94
    move-result-object v1

    .line 95
    iget-object v1, v1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 97
    invoke-static {v1}, Lcom/micloud/midrive/utils/CheckErrUtils;->getErrInfo(Lcom/micloud/midrive/task/BaseTask$TaskException;)Lcom/micloud/midrive/infos/ErrInfo;

    .line 100
    move-result-object v1

    .line 101
    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, " errCode:"

    .line 116
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    if-nez v1, :cond_7a

    .line 121
    const/4 v2, 0x0

    .line 122
    goto :goto_80

    .line 123
    :cond_7a
    iget v2, v1, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v2

    .line 129
    :goto_80
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    aput-object v2, v4, v3

    .line 138
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 141
    invoke-interface {v0, v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->setErrInfo(Lcom/micloud/midrive/infos/ErrInfo;)V

    .line 144
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 146
    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z

    .line 149
    :cond_94
    :goto_94
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->onTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V

    .line 152
    return-void
.end method

.method private postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/TransferSession$7;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/TransferSession$7;-><init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V

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
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

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
    check-cast v2, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

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
    invoke-virtual {v2}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->run()Z

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
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    .line 62
    return-void
.end method

.method private removeListenersH()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->removeStatusChangeListenerFromTasks(Ljava/util/Collection;)V

    .line 10
    return-void
.end method

.method private tryLoadNewJobH()V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "tryLoadNewJobH"

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    move v2, v0

    .line 23
    move v4, v3

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_42

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 36
    invoke-virtual {v5}, Lcom/micloud/midrive/task/RunOnNetworkTask;->getNetwork()Lcom/micloud/midrive/server/transport/Network;

    .line 39
    move-result-object v6

    .line 40
    instance-of v7, v6, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 42
    if-eqz v7, :cond_17

    .line 44
    check-cast v6, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 46
    invoke-virtual {v6}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->isFreeNetworkOnly()Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_17

    .line 52
    sget-object v6, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 54
    invoke-virtual {v5}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 57
    move-result-object v5

    .line 58
    if-ne v6, v5, :cond_3d

    .line 60
    move v5, v0

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v5, v3

    .line 63
    :goto_3e
    and-int/2addr v2, v5

    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 66
    goto :goto_17

    .line 67
    :cond_42
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/micloud/midrive/manager/NetworkManager;->isAnyNetworkAvailable()Z

    .line 74
    move-result v1

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v6, "tryLoadNewJobH ,anyNetworkAvailable "

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    const-string v6, ",allFreeNetworkOnlyTaskWaiting "

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    const-string v6, ",taskCountWithFreeNetworkOnly "

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    aput-object v5, v0, v3

    .line 112
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 120
    move-result v0

    .line 121
    const/16 v5, 0xa

    .line 123
    if-eqz v1, :cond_8f

    .line 125
    if-eqz v4, :cond_8f

    .line 127
    if-eqz v2, :cond_8f

    .line 129
    sub-int/2addr v0, v4

    .line 130
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 133
    move-result v0

    .line 134
    if-lt v0, v5, :cond_88

    .line 136
    return-void

    .line 137
    :cond_88
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 139
    invoke-interface {v1, v5}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getOngoingJobInfosWithAnyNetworkOrderByAddTime(I)Ljava/util/List;

    .line 142
    move-result-object v1

    .line 143
    goto :goto_98

    .line 144
    :cond_8f
    if-lt v0, v5, :cond_92

    .line 146
    return-void

    .line 147
    :cond_92
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 149
    invoke-interface {v1, v5}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getOngoingJobInfosOrderByAddTime(I)Ljava/util/List;

    .line 152
    move-result-object v1

    .line 153
    :goto_98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v1

    .line 157
    :goto_9c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_c4

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 169
    if-lt v0, v5, :cond_ab

    .line 171
    return-void

    .line 172
    :cond_ab
    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mTransferTaskMap:Ljava/util/Map;

    .line 174
    iget-object v4, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 176
    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 179
    move-result-object v4

    .line 180
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_ba

    .line 186
    goto :goto_9c

    .line 187
    :cond_ba
    iget-object v3, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 189
    iget-wide v6, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 191
    iget-boolean v2, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 193
    invoke-direct {p0, v3, v6, v7, v2}, Lcom/micloud/midrive/session/TransferSession;->addTaskH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;JZ)V

    .line 196
    goto :goto_9c

    .line 197
    :cond_c4
    return-void
.end method

.method private updateTaskWaitWifiRegistrationH(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 3
    invoke-virtual {v0}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 13
    invoke-virtual {v0}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    move v0, v1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v2

    .line 22
    :goto_15
    sget-object v3, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 24
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 27
    move-result-object v4

    .line 28
    if-ne v3, v4, :cond_2c

    .line 30
    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 32
    invoke-virtual {v3, p1}, Lcom/micloud/midrive/utils/FlagSet;->add(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    or-int/2addr v3, v2

    .line 37
    iget-object v4, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 39
    invoke-virtual {v4, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    :goto_2a
    or-int/2addr p1, v3

    .line 44
    goto :goto_50

    .line 45
    :cond_2c
    sget-object v3, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 47
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 50
    move-result-object v4

    .line 51
    if-ne v3, v4, :cond_42

    .line 53
    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 55
    invoke-virtual {v3, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 59
    or-int/2addr v3, v2

    .line 60
    iget-object v4, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 62
    invoke-virtual {v4, p1}, Lcom/micloud/midrive/utils/FlagSet;->add(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    goto :goto_2a

    .line 67
    :cond_42
    iget-object v3, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 69
    invoke-virtual {v3, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    .line 72
    move-result v3

    .line 73
    or-int/2addr v3, v2

    .line 74
    iget-object v4, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 76
    invoke-virtual {v4, p1}, Lcom/micloud/midrive/utils/FlagSet;->remove(Ljava/lang/Object;)Z

    .line 79
    move-result p1

    .line 80
    goto :goto_2a

    .line 81
    :goto_50
    if-eqz p1, :cond_55

    .line 83
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->onJobStatusChangedH()V

    .line 86
    :cond_55
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitAnyNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 88
    invoke-virtual {p1}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_66

    .line 94
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession;->mWaitProperNetworkTaskSet:Lcom/micloud/midrive/utils/FlagSet;

    .line 96
    invoke-virtual {p1}, Lcom/micloud/midrive/utils/FlagSet;->isEmpty()Z

    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_66

    .line 102
    move v2, v1

    .line 103
    :cond_66
    if-eq v0, v2, :cond_6d

    .line 105
    xor-int/lit8 p1, v2, 0x1

    .line 107
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/TransferSession;->onWaitNetworkChangedH(Z)V

    .line 110
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public getTransferParams()Lcom/micloud/midrive/session/params/TransferParams;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/TransferSession$6;

    .line 5
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/TransferSession$6;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public abstract onCreateTransferTaskH(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)Lcom/micloud/midrive/task/TransferBaseTask;
.end method

.method public onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/TransferSession$5;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/session/TransferSession$5;-><init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/BaseSession$Event;)V

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
    invoke-direct {p0}, Lcom/micloud/midrive/session/TransferSession;->getTypedParamsTS()Lcom/micloud/midrive/session/params/TransferParams;

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
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 38
    sget-object v0, Lcom/micloud/midrive/session/TransferSession$TransferStage;->INIT:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 40
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    .line 44
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

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
    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession;->mPendingEventSet:Ljava/util/Set;

    .line 67
    check-cast v0, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

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
    iput-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mRunner:Landroid/os/HandlerThread;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 91
    new-instance p2, Landroid/os/Handler;

    .line 93
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mRunner:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    iput-object p2, p0, Lcom/micloud/midrive/session/TransferSession;->mRunnerHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$4;

    .line 106
    invoke-direct {v0, p0, p1}, Lcom/micloud/midrive/session/TransferSession$4;-><init>(Lcom/micloud/midrive/session/TransferSession;Z)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onGetExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession;->mStage:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 3
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

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$2;

    .line 3
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$2;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 9
    return-void
.end method

.method public setNewJobAdded()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$1;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 9
    return-void
.end method

.method public setRequiredNetworkChanged()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$3;

    .line 3
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$3;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/session/BaseSession;->notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 9
    return-void
.end method
