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
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/micloud/midrive/task/BaseTask;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask$TaskContext;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->account:Landroid/accounts/Account;

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$TaskContext;->listenerHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, p1}, Lcom/micloud/midrive/task/BaseTask;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Handler;)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_38

    if-eqz p3, :cond_30

    if-eqz p4, :cond_28

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_17
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/micloud/midrive/task/BaseTask;->mContext:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/task/BaseTask;->mAccount:Landroid/accounts/Account;

    .line 9
    iput-object p4, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    .line 10
    sget-object p1, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_PENDING:Lcom/micloud/midrive/task/BaseTask$TaskState;

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 11
    sget-object p1, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->WAITING:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    return-void

    .line 12
    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listenerHandler == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "account == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/task/BaseTask;)Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/task/BaseTask;->mListener:Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    .line 3
    return-object p0
.end method

.method public static breakTaskByException(Ljava/lang/Exception;)V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/BaseTask$TaskFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static breakTaskByException(Ljava/lang/InterruptedException;)V
    .registers 2

    .line 2
    new-instance v0, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v0
.end method

.method private setState(Lcom/micloud/midrive/task/BaseTask$TaskState;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 3
    if-eq v0, p1, :cond_39

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "task: "

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, " change to state "

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " from "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    aput-object v2, v0, v1

    .line 44
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 49
    new-instance p1, Lcom/micloud/midrive/task/BaseTask$1;

    .line 51
    invoke-direct {p1, p0}, Lcom/micloud/midrive/task/BaseTask$1;-><init>(Lcom/micloud/midrive/task/BaseTask;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    .line 57
    return-void

    .line 58
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    const-string v0, "same state"

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method private setStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 3
    if-eq v0, p1, :cond_39

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "task: "

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, " change to step "

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " from "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    aput-object v2, v0, v1

    .line 44
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 49
    new-instance p1, Lcom/micloud/midrive/task/BaseTask$2;

    .line 51
    invoke-direct {p1, p0}, Lcom/micloud/midrive/task/BaseTask$2;-><init>(Lcom/micloud/midrive/task/BaseTask;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    .line 57
    return-void

    .line 58
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    const-string v0, "same step"

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method


# virtual methods
.method public cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "cancel task: "

    .line 6
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v1, v3

    .line 22
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 25
    monitor-enter p0

    .line 26
    :try_start_19
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mRunner:Ljava/lang/Thread;

    .line 28
    if-eqz v1, :cond_20

    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 33
    :cond_20
    iput-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAbortRun:Z

    .line 35
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 37
    monitor-exit p0

    .line 38
    return-object v0

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    .line 41
    throw v0
.end method

.method public checkRunInListenerHandlerThread()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "should be called in the listener thread"

    .line 13
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInThread(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAccount:Landroid/accounts/Account;

    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 3
    return-object v0
.end method

.method public getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 3
    return-object v0
.end method

.method public getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 3
    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hasCancelMark()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAbortRun:Z

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    .line 8
    throw v0
.end method

.method public isSuccessed()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 3
    sget-object v1, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 5
    if-ne v0, v1, :cond_c

    .line 7
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onFinish(Z)V
    .registers 2

    return-void
.end method

.method public postOnListenerThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
.end method

.method public run()V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 4
    monitor-enter p0

    .line 5
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mRunner:Ljava/lang/Thread;

    .line 11
    iget-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask;->mAbortRun:Z

    .line 13
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_d4

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    new-instance v0, Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 19
    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 21
    iget-object v3, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 23
    invoke-direct {v0, v2, v3, v1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskState;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;Lcom/micloud/midrive/task/BaseTask$TaskException;)V

    .line 26
    iput-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 28
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_RUNNING:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 33
    invoke-direct {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->setState(Lcom/micloud/midrive/task/BaseTask$TaskState;)V

    .line 36
    :goto_23
    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 38
    :cond_25
    :goto_25
    sget-object v3, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x1

    .line 46
    if-nez v3, :cond_84

    .line 48
    :try_start_2f
    new-array v3, v5, [Ljava/lang/Object;

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v7, "task: "

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v7, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v7, " run at step: "

    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    aput-object v6, v3, v4

    .line 79
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 82
    sget-object v3, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->WAITING:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5b

    .line 90
    move-object v3, v1

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move-object v3, v2

    .line 93
    :goto_5c
    invoke-virtual {p0, v3}, Lcom/micloud/midrive/task/BaseTask;->runTaskAtStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 96
    move-result-object v2

    .line 97
    if-nez v2, :cond_76

    .line 99
    sget-object v2, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->END:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    :try_end_64
    .catch Lcom/micloud/midrive/task/BaseTask$TaskException; {:try_start_2f .. :try_end_64} :catch_65

    .line 101
    goto :goto_76

    .line 102
    :catch_65
    move-exception v3

    .line 103
    new-array v5, v5, [Ljava/lang/Object;

    .line 105
    aput-object v3, v5, v4

    .line 107
    invoke-static {v5}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 110
    new-instance v4, Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 112
    invoke-direct {v4, v0, v2, v3}, Lcom/micloud/midrive/task/BaseTask$StopInfo;-><init>(Lcom/micloud/midrive/task/BaseTask$TaskState;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;Lcom/micloud/midrive/task/BaseTask$TaskException;)V

    .line 115
    iput-object v4, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 117
    sget-object v2, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->END:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 119
    :cond_76
    :goto_76
    invoke-direct {p0, v2}, Lcom/micloud/midrive/task/BaseTask;->setStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V

    .line 122
    sget-object v3, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->END:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_25

    .line 130
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 132
    goto :goto_25

    .line 133
    :cond_84
    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 135
    if-nez v2, :cond_9e

    .line 137
    new-array v2, v5, [Ljava/lang/Object;

    .line 139
    const-string v3, "task: "

    .line 141
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    move-result-object v3

    .line 145
    iget-object v6, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 147
    const-string v7, " finished"

    .line 149
    invoke-static {v3, v6, v7}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    aput-object v3, v2, v4

    .line 155
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 158
    goto :goto_be

    .line 159
    :cond_9e
    new-array v2, v5, [Ljava/lang/Object;

    .line 161
    const-string v3, "task: "

    .line 163
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move-result-object v3

    .line 167
    iget-object v6, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v6, " stopped with "

    .line 174
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v6, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 179
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v3

    .line 186
    aput-object v3, v2, v4

    .line 188
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 191
    :goto_be
    iget-object v2, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 193
    if-eqz v2, :cond_c3

    .line 195
    move v4, v5

    .line 196
    :cond_c3
    invoke-virtual {p0, v4}, Lcom/micloud/midrive/task/BaseTask;->onFinish(Z)V

    .line 199
    invoke-direct {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->setState(Lcom/micloud/midrive/task/BaseTask$TaskState;)V

    .line 202
    monitor-enter p0

    .line 203
    :try_start_ca
    iput-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mRunner:Ljava/lang/Thread;

    .line 205
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_d1

    .line 206
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 209
    return-void

    .line 210
    :catchall_d1
    move-exception v0

    .line 211
    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    .line 212
    throw v0

    .line 213
    :catchall_d4
    move-exception v0

    .line 214
    :try_start_d5
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    .line 215
    throw v0
.end method

.method public abstract runTaskAtStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.end method

.method public setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask;->mListenerHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "should be called in the listener handler thread"

    .line 13
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInThread(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask;->mListener:Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;

    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "BaseTask{mTaskName=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mTaskName:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", mState="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mStep="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mStopInfo="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask;->mStopInfo:Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const/16 v1, 0x7d

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
