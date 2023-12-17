.class public Lcom/micloud/midrive/controller/SyncController;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;
    }
.end annotation


# instance fields
.field private final mCompleteListener:Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;

.field private mSyncTask:Lcom/micloud/midrive/task/SyncTask;

.field private mSyncToken:Ljava/lang/String;

.field private final mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

.field private final mTaskExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncToken:Ljava/lang/String;

    .line 6
    new-instance p3, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p3, p1, p2, v0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;Lcom/micloud/midrive/server/transport/Network;)V

    .line 24
    iput-object p3, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 26
    iput-object p4, p0, Lcom/micloud/midrive/controller/SyncController;->mCompleteListener:Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 34
    return-void
.end method


# virtual methods
.method public onRunningStepChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 3
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_30

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    .line 13
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_25

    .line 19
    iget-object p1, p0, Lcom/micloud/midrive/controller/SyncController;->mCompleteListener:Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;

    .line 21
    if-eqz p1, :cond_30

    .line 23
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    const-string v2, ""

    .line 30
    invoke-interface {v0, v2, v2, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;->onTaskSucceeded(Ljava/util/List;)V

    .line 37
    goto :goto_30

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mCompleteListener:Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;

    .line 40
    if-eqz v0, :cond_30

    .line 42
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, p1}, Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;->onTaskFailed(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V

    .line 49
    :cond_30
    :goto_30
    return-void
.end method

.method public setSyncToken(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncToken:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public start()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 8
    :cond_7
    new-instance v0, Lcom/micloud/midrive/task/SyncTask;

    .line 10
    iget-object v1, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Z)V

    .line 16
    iput-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 18
    invoke-virtual {v0, p0}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    .line 21
    iget-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method
