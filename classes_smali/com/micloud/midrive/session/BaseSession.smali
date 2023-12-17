.class public abstract Lcom/micloud/midrive/session/BaseSession;
.super Ljava/lang/Object;
.source "BaseSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/BaseSession$Event;,
        Lcom/micloud/midrive/session/BaseSession$Result;,
        Lcom/micloud/midrive/session/BaseSession$Stage;,
        Lcom/micloud/midrive/session/BaseSession$ExecutionListener;,
        Lcom/micloud/midrive/session/BaseSession$SessionListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mExecContext:Landroid/content/Context;

.field private mExecutionListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

.field private mHasFinished:Z

.field private mIsCanceled:Z

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mPendingEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/session/BaseSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/micloud/midrive/session/BaseSession$Result;

.field private final mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

.field private final mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "BaseSession"

    .line 6
    iput-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->TAG:Ljava/lang/String;

    .line 8
    if-eqz p1, :cond_2a

    .line 10
    if-eqz p2, :cond_22

    .line 12
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    .line 14
    iput-object p2, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 16
    new-instance p1, Landroid/os/Handler;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 27
    new-instance p1, Ljava/util/HashSet;

    .line 29
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    .line 34
    return-void

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    .line 37
    const-string p2, "sessionListener == null"

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    .line 45
    const-string p2, "sessionParams == null"

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/session/BaseSession;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/BaseSession;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/params/SessionParams;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecutionListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    .line 11
    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 13
    if-eqz v1, :cond_11

    .line 15
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->onCancel()V

    .line 18
    :cond_11
    iget-boolean v1, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    .line 20
    if-eq v0, v1, :cond_1f

    .line 22
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 24
    new-instance v1, Lcom/micloud/midrive/session/BaseSession$3;

    .line 26
    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/BaseSession$3;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_1f
    return-void
.end method

.method public final exec(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Z
    .registers 4

    .line 1
    if-eqz p1, :cond_41

    .line 3
    if-eqz p2, :cond_39

    .line 5
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    .line 7
    if-nez v0, :cond_37

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_37

    .line 14
    :cond_d
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/micloud/midrive/session/BaseSession;->mExecutionListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 18
    iget-boolean p1, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    .line 20
    iget-object p2, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    .line 22
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession;->onExecute(ZLjava/util/Set;)V

    .line 29
    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    .line 31
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 34
    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 36
    new-instance p2, Lcom/micloud/midrive/session/BaseSession$1;

    .line 38
    invoke-direct {p2, p0}, Lcom/micloud/midrive/session/BaseSession$1;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 46
    new-instance p2, Lcom/micloud/midrive/session/BaseSession$2;

    .line 48
    invoke-direct {p2, p0}, Lcom/micloud/midrive/session/BaseSession$2;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 57
    return p1

    .line 58
    :cond_39
    new-instance p1, Ljava/lang/NullPointerException;

    .line 60
    const-string p2, "executionListener == null"

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1

    .line 66
    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    .line 68
    const-string p2, "context == null"

    .line 70
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1
.end method

.method public final finish(Lcom/micloud/midrive/session/BaseSession$Result;)V
    .registers 3

    .line 1
    const-string v0, "should be called in the main thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    if-eqz p1, :cond_45

    .line 8
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    .line 10
    if-nez v0, :cond_3d

    .line 12
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 14
    if-eqz v0, :cond_3d

    .line 16
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mResult:Lcom/micloud/midrive/session/BaseSession$Result;

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    .line 21
    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/micloud/midrive/session/BaseSession$4;

    .line 25
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$4;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/micloud/midrive/session/BaseSession$5;

    .line 35
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$5;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/micloud/midrive/session/BaseSession$6;

    .line 45
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$6;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/micloud/midrive/session/BaseSession$7;

    .line 55
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$7;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void

    .line 62
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    const-string v0, "not executing or has finished"

    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    :cond_45
    new-instance p1, Ljava/lang/NullPointerException;

    .line 72
    const-string v0, "null == result"

    .line 74
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
.end method

.method public final getExecContext()Landroid/content/Context;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "should only be called during executing"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public final getExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->END:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 10
    if-nez v0, :cond_e

    .line 12
    sget-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->WAITING:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 14
    return-object v0

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->onGetExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return-object v0

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v1, "should not return a null stage"

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public getResult()Lcom/micloud/midrive/session/BaseSession$Result;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mResult:Lcom/micloud/midrive/session/BaseSession$Result;

    .line 3
    return-object v0
.end method

.method public final getSessionParams()Lcom/micloud/midrive/session/params/SessionParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    .line 3
    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    .line 3
    return v0
.end method

.method public final notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 3

    .line 1
    const-string v0, "should be called in the main thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    .line 13
    if-eqz v0, :cond_12

    .line 15
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/BaseSession;->onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public abstract onCancel()V
.end method

.method public abstract onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
.end method

.method public abstract onExecute(ZLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/session/BaseSession$Event;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGetExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;
.end method

.method public final start(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    .line 3
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/params/SessionParams;->startExecEnvironment(Landroid/content/Context;)V

    .line 6
    return-void
.end method
