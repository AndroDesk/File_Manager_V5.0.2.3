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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncToken:Ljava/lang/String;

    new-instance p3, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v1

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;Lcom/micloud/midrive/server/transport/Network;)V

    iput-object p3, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    iput-object p4, p0, Lcom/micloud/midrive/controller/SyncController;->mCompleteListener:Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onRunningStepChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 5

    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    move-result-object v1

    if-ne v0, v1, :cond_30

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p1, p0, Lcom/micloud/midrive/controller/SyncController;->mCompleteListener:Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v2, v2, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;->onTaskSucceeded(Ljava/util/List;)V

    goto :goto_30

    :cond_25
    iget-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mCompleteListener:Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/micloud/midrive/controller/SyncController$TaskCompleteListener;->onTaskFailed(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public setSyncToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncToken:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;

    :cond_7
    new-instance v0, Lcom/micloud/midrive/task/SyncTask;

    iget-object v1, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskContext:Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Z)V

    iput-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-virtual {v0, p0}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    iget-object v0, p0, Lcom/micloud/midrive/controller/SyncController;->mTaskExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/micloud/midrive/controller/SyncController;->mSyncTask:Lcom/micloud/midrive/task/SyncTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
