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
.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/BaseTask;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;)V

    .line 4
    iget-object p1, p1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;->network:Lcom/micloud/midrive/server/transport/Network;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    iput-object p1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    const-string v0, "network == null"

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method private isAnyNetworkConnected(Lcom/micloud/midrive/manager/NetworkManager;)Z
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V
    :try_end_b
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_0 .. :try_end_b} :catch_d

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catch_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method private waitingNetworkToNextStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 8

    .line 1
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    :goto_5
    if-ne v1, p1, :cond_3d

    .line 8
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 14
    new-instance v2, Lcom/micloud/midrive/task/RunOnNetworkTask$1;

    .line 16
    invoke-direct {v2, p0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$1;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask;Ljava/util/concurrent/CountDownLatch;)V

    .line 19
    invoke-virtual {v0, v2}, Lcom/micloud/midrive/manager/NetworkManager;->registerNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V

    .line 22
    :try_start_15
    iget-object v3, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    .line 24
    invoke-virtual {v0, v3}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V

    .line 27
    iget-object v1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mStepWaitingForNetwork:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    :try_end_1c
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_39

    .line 30
    :catch_1d
    :try_start_1d
    iput-object v1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetworkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 32
    const-wide/16 v3, 0x1

    .line 34
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 36
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetworkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_29} :catch_2a

    .line 42
    goto :goto_2e

    .line 43
    :catch_2a
    move-exception v1

    .line 44
    invoke-static {v1}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/InterruptedException;)V

    .line 47
    :goto_2e
    invoke-direct {p0, v0}, Lcom/micloud/midrive/task/RunOnNetworkTask;->isAnyNetworkConnected(Lcom/micloud/midrive/manager/NetworkManager;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_37

    .line 53
    sget-object v1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    sget-object v1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 58
    :goto_39
    invoke-virtual {v0, v2}, Lcom/micloud/midrive/manager/NetworkManager;->unregisterNetworkConfigChangedCallback(Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;)V

    .line 61
    goto :goto_5

    .line 62
    :cond_3d
    return-object v1
.end method


# virtual methods
.method public getNetwork()Lcom/micloud/midrive/server/transport/Network;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    .line 3
    return-object v0
.end method

.method public notifyWaitNetworkChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetworkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    :cond_7
    return-void
.end method

.method public abstract runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.end method

.method public runTaskAtStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;->waitingNetworkToNextStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mNetwork:Lcom/micloud/midrive/server/transport/Network;

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;->runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 17
    move-result-object p1
    :try_end_11
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_b .. :try_end_11} :catch_12

    .line 18
    return-object p1

    .line 19
    :catch_12
    iput-object p1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask;->mStepWaitingForNetwork:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 21
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;->isAnyNetworkConnected(Lcom/micloud/midrive/manager/NetworkManager;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_21

    .line 31
    sget-object p1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_PROPER_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    sget-object p1, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->WAIT_FOR_ANY_NETWORK:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;

    .line 36
    :goto_23
    return-object p1
.end method
