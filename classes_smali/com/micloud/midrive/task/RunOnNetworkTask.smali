.class public abstract Lcom/micloud/midrive/task/RunOnNetworkTask;
.super Lcom/micloud/midrive/task/BaseTask;
.source "RunOnNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;,
        Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;
    }
.end annotation


# instance fields
.field private final mNetwork:Lcom/micloud/midrive/server/transport/Network;

.field private volatile mNetworkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mStepWaitingForNetwork:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;)V

    iget-object p1, p1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;->network:Lcom/micloud/midrive/server/transport/Network;

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "network == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isAnyNetworkConnected(Lcom/micloud/midrive/manager/NetworkManager;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V
    :try_end_b
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_0 .. :try_end_b} :catch_d

    const/4 p1, 0x1

    return p1

    :catch_d
    const/4 p1, 0x0

    return p1
.end method

.method private waitingNetworkToNextStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 8

    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    move-result-object v0

    move-object v1, p1

    :goto_5
    if-ne v1, p1, :cond_3d

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/micloud/midrive/task/RunOnNetworkTask$1;

    invoke-direct {v2, p0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$1;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Lcom/micloud/midrive/manager/NetworkManager;->registerNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V

    :try_start_15
    iget-object v3, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    invoke-virtual {v0, v3}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mStepWaitingForNetwork:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    :try_end_1c
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_39

    :catch_1d
    :try_start_1d
    iput-object v1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetworkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetworkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v1

    invoke-static {v1}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/InterruptedException;)V

    :goto_2e
    invoke-direct {p0, v0}, Lcom/micloud/midrive/task/RunOnNetworkTask;->isAnyNetworkConnected(Lcom/micloud/midrive/manager/NetworkManager;)Z

    move-result v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    goto :goto_39

    :cond_37
    sget-object v1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    :goto_39
    invoke-virtual {v0, v2}, Lcom/micloud/midrive/manager/NetworkManager;->unregisterNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V

    goto :goto_5

    :cond_3d
    return-object v1
.end method


# virtual methods
.method public getNetwork()Lcom/micloud/midrive/server/transport/Network;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    return-object v0
.end method

.method public notifyWaitNetworkChanged()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetworkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_7
    return-void
.end method

.method public abstract runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.end method

.method public runTaskAtStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 3

    invoke-static {p1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;->waitingNetworkToNextStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object p1

    return-object p1

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    invoke-virtual {p0, v0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;->runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object p1
    :try_end_11
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_b .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    iput-object p1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mStepWaitingForNetwork:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;->isAnyNetworkConnected(Lcom/micloud/midrive/manager/NetworkManager;)Z

    move-result p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    goto :goto_23

    :cond_21
    sget-object p1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    :goto_23
    return-object p1
.end method
