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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BaseSession"

    iput-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_22

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    iput-object p2, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    return-void

    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sessionListener == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sessionParams == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionListener:Lcom/micloud/midrive/session/BaseSession$SessionListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/session/BaseSession;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/BaseSession;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/params/SessionParams;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecutionListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->onCancel()V

    :cond_11
    iget-boolean v1, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/session/BaseSession$3;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/session/BaseSession$3;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method public final exec(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Z
    .registers 4

    if-eqz p1, :cond_41

    if-eqz p2, :cond_39

    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    goto :goto_37

    :cond_d
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/micloud/midrive/session/BaseSession;->mExecutionListener:Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    iget-boolean p1, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    iget-object p2, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession;->onExecute(ZLjava/util/Set;)V

    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/micloud/midrive/session/BaseSession$1;

    invoke-direct {p2, p0}, Lcom/micloud/midrive/session/BaseSession$1;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/micloud/midrive/session/BaseSession$2;

    invoke-direct {p2, p0}, Lcom/micloud/midrive/session/BaseSession$2;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_37
    :goto_37
    const/4 p1, 0x0

    return p1

    :cond_39
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "executionListener == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final finish(Lcom/micloud/midrive/session/BaseSession$Result;)V
    .registers 3

    const-string v0, "should be called in the main thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    if-eqz p1, :cond_45

    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    if-eqz v0, :cond_3d

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mResult:Lcom/micloud/midrive/session/BaseSession$Result;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/BaseSession$4;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$4;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/BaseSession$5;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$5;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/BaseSession$6;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$6;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/micloud/midrive/session/BaseSession;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/micloud/midrive/session/BaseSession$7;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/BaseSession$7;-><init>(Lcom/micloud/midrive/session/BaseSession;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not executing or has finished"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null == result"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getExecContext()Landroid/content/Context;
    .registers 3

    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should only be called during executing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;
    .registers 3

    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->END:Lcom/micloud/midrive/session/BaseSession$Stage;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    if-nez v0, :cond_e

    sget-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->WAITING:Lcom/micloud/midrive/session/BaseSession$Stage;

    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->onGetExecStage()Lcom/micloud/midrive/session/BaseSession$Stage;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not return a null stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResult()Lcom/micloud/midrive/session/BaseSession$Result;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mResult:Lcom/micloud/midrive/session/BaseSession$Result;

    return-object v0
.end method

.method public final getSessionParams()Lcom/micloud/midrive/session/params/SessionParams;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mIsCanceled:Z

    return v0
.end method

.method public final notifyEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 3

    const-string v0, "should be called in the main thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/micloud/midrive/session/BaseSession;->mHasFinished:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mExecContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/BaseSession;->onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mPendingEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession;->mSessionParams:Lcom/micloud/midrive/session/params/SessionParams;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/params/SessionParams;->startExecEnvironment(Landroid/content/Context;)V

    return-void
.end method
