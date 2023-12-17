.class public abstract Lcom/micloud/midrive/task/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/BaseTask$StopInfo;,
        Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;,
        Lcom/micloud/midrive/task/BaseTask$TaskFailedException;,
        Lcom/micloud/midrive/task/BaseTask$TaskException;,
        Lcom/micloud/midrive/task/BaseTask$TaskContext;,
        Lcom/micloud/midrive/task/BaseTask$RunTaskStep;,
        Lcom/micloud/midrive/task/BaseTask$TaskState;,
        Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;
    }
.end annotation


# instance fields
.field private mAbortRun:Z

.field private final mAccount:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mRunner:Ljava/lang/Thread;

.field private volatile mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

.field private volatile mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

.field private volatile mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

.field private final mTaskName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/micloud/midrive/task/BaseTask;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;)V
    .registers 4

    iget-object v0, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->account:Landroid/accounts/Account;

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->listenerHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, p1}, Lcom/micloud/midrive/task/BaseTask;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_38

    if-eqz p3, :cond_30

    if-eqz p4, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :cond_17
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/task/BaseTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/micloud/midrive/task/BaseTask;->mAccount:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    sget-object p1, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_PENDING:Lcom/micloud/midrive/task/BaseTask$TaskState;

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    sget-object p1, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->WAITING:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    return-void

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listenerHandler == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "account == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/task/BaseTask;)Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/task/BaseTask;->mListener:Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    return-object p0
.end method

.method public static breakTaskByException(Ljava/lang/Exception;)V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static breakTaskByException(Ljava/lang/InterruptedException;)V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v0
.end method

.method private setState(Lcom/micloud/midrive/task/BaseTask$TaskState;)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    if-eq v0, p1, :cond_39

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "task: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " change to state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    new-instance p1, Lcom/micloud/midrive/task/BaseTask$1;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/task/BaseTask$1;-><init>(Lcom/micloud/midrive/task/BaseTask;)V

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "same state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    if-eq v0, p1, :cond_39

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "task: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " change to step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    new-instance p1, Lcom/micloud/midrive/task/BaseTask$2;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/task/BaseTask$2;-><init>(Lcom/micloud/midrive/task/BaseTask;)V

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "same step"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cancel task: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_19
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mRunner:Ljava/lang/Thread;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_20
    iput-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAbortRun:Z

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public checkRunInListenerHandlerThread()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "should be called in the listener thread"

    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInThread(Ljava/lang/Thread;Ljava/lang/String;)V

    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    return-object v0
.end method

.method public getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    return-object v0
.end method

.method public getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public hasCancelMark()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAbortRun:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isSuccessed()Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    sget-object v1, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onFinish(Z)V
    .registers 2

    return-void
.end method

.method public postOnListenerThread(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    monitor-enter p0

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mRunner:Ljava/lang/Thread;

    iget-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAbortRun:Z

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_d4

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/micloud/midrive/task/BaseTask$StopInfo;

    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    invoke-direct {v0, v2, v3, v1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskState;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;Lcom/micloud/midrive/task/BaseTask$TaskException;)V

    iput-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    goto :goto_23

    :cond_1e
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_RUNNING:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-direct {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->setState(Lcom/micloud/midrive/task/BaseTask$TaskState;)V

    :goto_23
    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    :cond_25
    :goto_25
    sget-object v3, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_84

    :try_start_2f
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " run at step: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object v3, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->WAITING:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move-object v3, v1

    goto :goto_5c

    :cond_5b
    move-object v3, v2

    :goto_5c
    invoke-virtual {p0, v3}, Lcom/micloud/midrive/task/BaseTask;->runTaskAtStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v2

    if-nez v2, :cond_76

    sget-object v2, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->END:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    :try_end_64
    .catch Lcom/micloud/midrive/task/BaseTask$TaskException; {:try_start_2f .. :try_end_64} :catch_65

    goto :goto_76

    :catch_65
    move-exception v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    new-instance v4, Lcom/micloud/midrive/task/BaseTask$StopInfo;

    invoke-direct {v4, v0, v2, v3}, Lcom/micloud/midrive/task/BaseTask$StopInfo;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskState;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;Lcom/micloud/midrive/task/BaseTask$TaskException;)V

    iput-object v4, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    sget-object v2, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->END:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    :cond_76
    :goto_76
    invoke-direct {p0, v2}, Lcom/micloud/midrive/task/BaseTask;->setStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V

    sget-object v3, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->END:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    goto :goto_25

    :cond_84
    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    if-nez v2, :cond_9e

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "task: "

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    const-string v7, " finished"

    invoke-static {v3, v6, v7}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    goto :goto_be

    :cond_9e
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "task: "

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " stopped with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    :goto_be
    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    if-eqz v2, :cond_c3

    move v4, v5

    :cond_c3
    invoke-virtual {p0, v4}, Lcom/micloud/midrive/task/BaseTask;->onFinish(Z)V

    invoke-direct {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->setState(Lcom/micloud/midrive/task/BaseTask$TaskState;)V

    monitor-enter p0

    :try_start_ca
    iput-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mRunner:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_d1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0

    :catchall_d4
    move-exception v0

    :try_start_d5
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v0
.end method

.method public abstract runTaskAtStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.end method

.method public setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "should be called in the listener handler thread"

    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInThread(Ljava/lang/Thread;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mListener:Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "BaseTask{mTaskName=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mState="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStopInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
